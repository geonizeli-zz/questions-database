
# README
## Project dependencies
* Ruby 2.6.5
* Rails 6.0.2
* Postgres 12.2

## Project tools
- [Devise](https://github.com/heartcombo/devise)
- [Simple Form](https://github.com/heartcombo/simple_form)
- [Action Text](https://edgeguides.rubyonrails.org/action_text_overview.html)
- [Materialize](https://materializecss.com/)
- [Material Icons](https://github.com/Angelmmiguel/material_icons)
- [Animate.css](https://daneden.github.io/animate.css/)
- [Cloudinary Widget](https://cloudinary.com/documentation/upload_widget)
- [D3](https://github.com/d3/d3)

## Setup

    bundle install
    rails db:create db:migrate db:seed
    rails server

## Setup Docker

    docker-compose build
    docker-compose run --rm web bundle exec rails db:migrate db:seed
    docker-compose up
