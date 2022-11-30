defmodule DrifterWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      DrifterWeb.Telemetry,
      # Start the Endpoint (http/https)
      DrifterWeb.Endpoint
      # Start a worker by calling: DrifterWeb.Worker.start_link(arg)
      # {DrifterWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DrifterWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DrifterWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
