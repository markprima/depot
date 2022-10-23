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
{title: 'Docker Setup',
    description:
    %{Docker is a service that provides the ability to package and run an application in an isolated environment called a container. 
    With adequate isolation and security it allows you to run multiple containers at the same time on a particular host.},
    image_url: 'docker.jpg',
    price: 19.20,
    kind: 2},
{title: 'Agile Web Developer with Rails 7',
    description:
    %{Rails 7 completely redefines what it means to produce fantastic user experiences and provides a way to achieve all the benefits of single-page applications - at a fraction of the complexity.
     Rails 7 integrates the Hotwire frameworks of Stimulus and Turbo directly as the new defaults, together with that hot newness of import maps.
     The result is a toolkit so powerful that it allows a single individual to create modern applications upon which they can build a competitive business. The way it used to be.},
    image_url: 'rails.jpg',
    price: 31.95, 
    kind: 0}, 
{title: 'Android Setup',
    description:
    %{Android is a Linux-based operating system with open source code and licensed under APACHE 2.0 which is 
    designed for various touch screen mobile devices such as smartphones and tablet computers.},
    image_url: 'android.jpg',
    price: 40.99,
    kind: 1},
{title: 'The Psychology of Money',
    description:
    %{The book Psychology of Money by Morgan Housel illustrates that a person's psychology has a major influence on his financial condition.},
    image_url: 'money.jpg',
    price: 159.99,
    kind: 0}])
# . . .