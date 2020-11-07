defmodule Funtime.Repo do
  use Ecto.Repo,
    otp_app: :funtime,
    adapter: Ecto.Adapters.Postgres
end
