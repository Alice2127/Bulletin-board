defmodule Bulletinboard.CategoriesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Bulletinboard.Categories` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Bulletinboard.Categories.create_category()

    category
  end
end
