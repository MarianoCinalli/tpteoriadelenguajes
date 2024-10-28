defmodule Auctions.Repo do
  use Ecto.Repo,
    otp_app: :auctions,
    adapter: Ecto.Adapters.SQLite3
end
