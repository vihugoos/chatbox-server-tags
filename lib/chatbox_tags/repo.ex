defmodule ChatboxTags.Repo do
  use Ecto.Repo,
    otp_app: :chatbox_tags,
    adapter: Ecto.Adapters.Postgres
end
