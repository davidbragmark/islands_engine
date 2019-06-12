defmodule IslandsEngine do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(IslandsEngine.GameSupervisor, [])
    ]

    opts = [ strategy: :one_for_one, name: IslandsEngine.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @moduledoc """
  Documentation for IslandsEngine.
  """

  def hello do
    :world
  end
end
