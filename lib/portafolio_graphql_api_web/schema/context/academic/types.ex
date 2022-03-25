defmodule PortafolioGraphqlApiWeb.Schema.Context.Academic.Types do
  use Absinthe.Schema.Notation

  object :academic do
    field :id, :id
    field :area, :string
    field :country, :string
    field :description, :string
    field :finish_date, :string
    field :institute, :string
    field :start_date, :string
    field :state, :string
    field :title, :string
  end

  input_object :academic_input do
    field :area, :string
    field :country, :string
    # field :description, non_null(:string)
    # field :finish_date, non_null(:string)
    # field :institute, non_null(:string)
    # field :start_date, non_null(:string)
    # field :state, non_null(:string)
    # field :title, non_null(:string)
  end


end
