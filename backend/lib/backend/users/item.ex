defmodule Backend.Users.Item do
  use Ecto.Schema
  import Ecto.Changeset


  schema "items" do
    field :description, :string
    field :price, :integer
    field :status, :string
    field :title, :string
    field :image, :string
    belongs_to :category, Backend.Users.Category

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:title, :description, :price, :status])
    |> validate_required([:title, :description, :price, :status])
    |> cast_assoc(:categories)
  end
end
