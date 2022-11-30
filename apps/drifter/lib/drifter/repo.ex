defmodule Drifter.Repo do
  use Ecto.Repo,
    otp_app: :drifter,
    adapter: Ecto.Adapters.Postgres
end
