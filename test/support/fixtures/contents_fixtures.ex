defmodule Search.ContentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Search.Contents` context.
  """

  @doc """
  Generate a tag.
  """
  def tag_fixture(attrs \\ %{}) do
    {:ok, tag} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Search.Contents.create_tag()

    tag
  end
end
