![Grrshoppee workflow](https://github.com/tflem/grrshoppee/actions/workflows/grrshoppee.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/38f303e1c141ae7c797a/maintainability)](https://codeclimate.com/github/tflem/grrshoppee/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/38f303e1c141ae7c797a/test_coverage)](https://codeclimate.com/github/tflem/grrshoppee/test_coverage)

# The CCB Tracker

> A newer and even more improved grocery product tracking application, developed with the following:

- CSS Framework: Pico CSS
- Ruby on Rails 7.0.1
- Ruby 3.1.0
- HTML5 and Sass
- PostgreSQL (Tested With Version 13.x)
- Testing Framework: RSpec Rails
- Code Bundler: Vite ⚡️ Ruby (2.7.12, 3.0.7)
- Continuous Integration/Deployment: Github Actions/Heroku

## Setup

How to run tests:

```
% bundle exec rspec
```

How to run the development console:

```
% rails console or rails c for short
```

How to run the development server:

```
% rails server or rails s for short
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% rails db:create

% rails db:migrate
```

The application is viewable at http://grrshoppee.herokuapp.com.
