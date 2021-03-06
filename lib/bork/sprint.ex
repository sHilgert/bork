defmodule Bork.Sprint do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sprints" do
    field :name, :string
    has_many :closures, Bork.Closure
    timestamps()
  end

  @doc false
  def changeset(sprint, attrs) do
    sprint
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
