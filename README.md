# TrainMate

## Local dev
To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


## To cut a release and deploy to prod

The below instructions are from [the official guide using release](https://hexdocs.pm/phoenix/releases.html)

1. Load dependencies to compile code and assets

```
# Initial setup
$ mix deps.get --only prod
$ MIX_ENV=prod mix compile

# Install / update  JavaScript dependencies
$ npm install --prefix ./assets

# Compile assets
$ npm run deploy --prefix ./assets
$ mix phx.digest
```
4. Run `mix release`
```
$ MIX_ENV=prod mix release
Generated my_app app
* assembling my_app-0.1.0 on MIX_ENV=prod
* skipping runtime configuration (config/releases.exs not found)

Release created at _build/prod/rel/my_app!

    # To start your system
    _build/prod/rel/my_app/bin/my_app start

...
```

5. To run the prod release locally, `MIX_ENV=prod APP_NAME=trainmate PORT=4000 _build/prod/rel/train_mate/bin/train_mate start`

6. To push to Gigalixir 

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
