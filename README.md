![Grrshoppee workflow](https://github.com/tflem/grrshoppee/actions/workflows/grrshoppee.yml/badge.svg)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

# Grr . . . Shoppee

> A newer and even more improved grocery product tracking application, developed with the following:

- Linting: RuboCop by way of StandardRB 1.51.1
- CSS Framework: Pico CSS 1.5.3
- Ruby on Rails 8.0.4
- Ruby 3.4.7
- HTML5 and Sass 1.93.2
- PostgreSQL (Tested With Version 17.x)
- Testing Framework: RSpec Rails 6.1.5
- Code Bundler: Vite ⚡️ Ruby (7.1.12, 5.1.1)
- Continuous Integration/Deployment: Github Actions/Digital Ocean

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

The application is viewable at https://app.grrshoppee.teeflem.xyz.
