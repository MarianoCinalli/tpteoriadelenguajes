defmodule AuctionsWeb.UserJSON do
  alias Auctions.Users.User

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{users: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{user: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      reputation: user.reputation
    }
  end
end
