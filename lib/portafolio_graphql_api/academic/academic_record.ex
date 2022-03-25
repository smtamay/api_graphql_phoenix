defmodule PortafolioGraphqlApi.Academic.Academic_record do
  use Ecto.Schema
  import Ecto.Changeset

  schema "academic_records" do
    field :area, :string
    field :country, :string
    field :description, :string
    field :finish_date, :date
    field :institute, :string
    field :start_date, :date
    field :state, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(academic_record, attrs) do
    academic_record
    |> cast(attrs, [:institute, :title, :area, :start_date, :finish_date, :description, :country, :state])
    # |> validate_required([:institute, :title, :area, :start_date, :finish_date, :description, :country, :state])
  end
end
