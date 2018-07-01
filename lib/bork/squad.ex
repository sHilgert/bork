defmodule Bork.Squad do
  use Ecto.Schema
  import Ecto.Changeset


  schema "squads" do
    field :name, :string
    timestamps()
  end

  @doc false
  def changeset(squad, attrs) do
    squad
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
