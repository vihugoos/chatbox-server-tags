defmodule ChatboxTags.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ChatboxTags.Repo,
      # Start the Telemetry supervisor
      ChatboxTagsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ChatboxTags.PubSub},
      # Start the Endpoint (http/https)
      ChatboxTagsWeb.Endpoint
      # Start a worker by calling: ChatboxTags.Worker.start_link(arg)
      # {ChatboxTags.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChatboxTags.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ChatboxTagsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
