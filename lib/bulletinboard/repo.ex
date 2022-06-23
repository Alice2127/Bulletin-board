defmodule Bulletinboard.Repo do
  use Ecto.Repo,
    otp_app: :bulletinboard,
    adapter: Ecto.Adapters.Postgres
end
