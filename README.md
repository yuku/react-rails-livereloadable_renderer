# React::ServerRendering::LiveReloadableRenderer

`SprocketsRenderer` for development environment.

## Usage

Add to your Gemfile:

```rb
gem "react-rails-livereloadable_renderer", group: :development
```

Run:

```
bundle install
```

## Setup

```rb
# config/environments/development.rb

Rails.application.configure do
  config.react.server_renderer = React::ServerRendering::LiveReloadableRenderer
end
```
