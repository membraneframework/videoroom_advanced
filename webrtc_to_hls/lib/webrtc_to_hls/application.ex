defmodule WebRTCToHLS.Application do
  @moduledoc false
  use Application

  alias WebRTCToHLS.StorageCleanup

  @impl true
  def start(_type, _args) do
    children = [
      WebRTCToHLSWeb.Endpoint,
      {Phoenix.PubSub, name: WebRTCToHLS.PubSub},
      {Registry, keys: :duplicate, name: WebRTCToHLS.Registry}
    ]

    StorageCleanup.clean_unused_directories()
    opts = [strategy: :one_for_one, name: __MODULE__]
    Supervisor.start_link(children, opts)
  end
end
