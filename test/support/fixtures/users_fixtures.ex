defmodule Auctions.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Auctions.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        reputation: 42
      })
      |> Auctions.Users.create_user()

    user
  end
end
