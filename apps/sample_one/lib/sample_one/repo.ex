defmodule SampleOne.Repo do
  use Ecto.Repo,
    otp_app: :sample_one,
    adapter: Ecto.Adapters.Postgres
end
