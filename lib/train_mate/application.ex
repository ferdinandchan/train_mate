defmodule TrainMate.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      TrainMateWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TrainMate.PubSub},
      # Start the Endpoint (http/https)
      TrainMateWeb.Endpoint
      # Start a worker by calling: TrainMate.Worker.start_link(arg)
      # {TrainMate.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TrainMate.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    TrainMateWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
