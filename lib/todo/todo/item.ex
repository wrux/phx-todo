defmodule Todo.Todo.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todo_items" do
    field :title, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
