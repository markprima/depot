require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
    assert product.errors[:kind].any?
  end

  test "product price must be positive" do
    product = Product.new(
    title: "New product",
    description: "this is a new product",
    image_url: "product.jpg")

    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 1
    assert product.invalid?
  end

  def new_product(image_url)
    Product.new(title: "Second product",
    description: "this is the second product ",
    price: 1,
    image_url: image_url,
    kind: 1)

  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |image_url|
       assert new_product(image_url).valid?,
                "#{image_url} must be valid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?,
              "#{image_url} must be invalid"
    end
  end

  test "kind number must be just from 0 to 2" do 
    oke = %w{ 0 1 2 }
    bad = %w{ 3 4 5.more }

    oke.each do |kind|
      assert new_product(kind).invalid?,
        "#{kind} must be valid"
    end

    bad.each do |kind|
      assert new_product(kind).invalid?
        "#{kind} must be valid"
    end
  end 
  
end