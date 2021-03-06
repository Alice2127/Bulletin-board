defmodule Bulletinboard.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  alias Bulletinboard.Categories.Category

  schema "comments" do
    #field :category_id, :integer
    belongs_to(:category, Category)
    field :content, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:category_id, :title, :content])
    |> validate_required([:category_id, :title, :content])
  end
end
