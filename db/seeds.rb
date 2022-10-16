# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
# . . .
Product.create!([
{title: 'Design and Build Great Web APIs',
    description:
    %{<p>
    <em>Robust, Reliable, and Resilient</em>
    APIs are transforming the business world at an increasing pace. Gain
    the essential skills needed to quickly design, build, and deploy
    quality web APIs that are robust, reliable, and resilient. Go from
    initial design through prototyping and implementation to deployment of
    mission-critical APIs for your organization. Test, secure, and deploy
    your API with confidence and avoid the “release into production”
    panic. Tackle just about any API challenge with more than a dozen
    open-source utilities and common programming patterns you can apply
    right away.
    </p>},
    image_url: 'maapis.jpg',
    price: 24.95,
    kind: 1}, 
{title: 'Docker',
    description:
    %{Docker is a service that provides the ability to package and run an application in an isolated environment called a container. 
    With adequate isolation and security it allows you to run multiple containers at the same time on a particular host.},
    image_url: 'docker.jpg',
    price: 19.20,
    kind: 2},
{title: 'The Seventhsky',
    description:
    %{develop web application from Zero to Launch, from Launch to scale},
    image_url: 'seventhsky.jpg',
    price: 300.20, 
    kind: 0}, 
{title: 'Android',
    description:
    %{Android is a Linux-based operating system with open source code and licensed under APACHE 2.0 which is 
    designed for various touch screen mobile devices such as smartphones and tablet computers.},
    image_url: 'android.jpg',
    price: 299.99,
    kind: 2},
{title: 'Midtrans',
    description:
    %{Payment Gateway Indonesia which is equipped with advanced anomaly detection to protect your transaction process and data. 
    Our team of analysts combines AI, machine learning and complex formulas to assess the risk of each transaction. Hassle-free, this security makes for an increase in successful transactions that will ensure your revenue growth..},
    image_url: 'midtrans.jpg',
    price: 159.99,
    kind: 2}])
# . . .