defmodule Drifter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Drifter.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Drifter.PubSub}
      # Start a worker by calling: Drifter.Worker.start_link(arg)
      # {Drifter.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Drifter.Supervisor)
  end
end
