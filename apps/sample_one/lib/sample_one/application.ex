defmodule SampleOne.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      SampleOne.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: SampleOne.PubSub},
      # Start Finch
      {Finch, name: SampleOne.Finch}
      # Start a worker by calling: SampleOne.Worker.start_link(arg)
      # {SampleOne.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: SampleOne.Supervisor)
  end
end
