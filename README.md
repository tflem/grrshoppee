![Grrshoppee workflow](https://github.com/tflem/grrshoppee/actions/workflows/grrshoppee.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/38f303e1c141ae7c797a/maintainability)](https://codeclimate.com/github/tflem/grrshoppee/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/38f303e1c141ae7c797a/test_coverage)](https://codeclimate.com/github/tflem/grrshoppee/test_coverage)

# Grr . . . Shoppee

> A newer and even more improved grocery product tracking application, developed with the following:

- CSS Framework: Pico CSS 1.4.4
- Ruby on Rails 7.0.2.3
- Ruby 3.1.1
- HTML5 and Sass 1.50.0
- PostgreSQL (Tested With Version 13.x)
- Testing Framework: RSpec Rails 5.1.1
- Code Bundler: Vite ⚡️ Ruby (2.9.1, 3.0.9)
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
