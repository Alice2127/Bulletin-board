defmodule Bulletinboard.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Bulletinboard.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        category_id: 42,
        content: "some content",
        title: "some title"
      })
      |> Bulletinboard.Comments.create_comment()

    comment
  end
end
