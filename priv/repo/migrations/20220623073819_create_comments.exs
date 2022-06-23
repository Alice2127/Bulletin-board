defmodule Bulletinboard.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :category_id, :integer
      add :title, :string
      add :content, :text

      timestamps()
    end
  end
end
