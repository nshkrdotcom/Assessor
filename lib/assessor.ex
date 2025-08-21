defmodule Assessor do
  @moduledoc """
  Documentation for `Assessor`.
  """

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Assessor.Worker.start_link(arg)
      # {Assessor.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Assessor.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
