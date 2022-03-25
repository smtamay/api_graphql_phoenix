defmodule PortafolioGraphqlApiWeb.Schema do
  use Absinthe.Schema
  alias PortafolioGraphqlApiWeb.Resolvers.Academic


  import_types PortafolioGraphqlApiWeb.Schema.Context.Academic.Types
  # import_types PortafolioGraphqlApi.Schema.DataTypes

  query do
    @desc "Get a list of academics"
    field :academics, list_of(:academic) do
      resolve &Academic.get_academic_records/3
    end
  end

  mutation do
    field :create_academic_record, :academic do
      arg(:input, :academic_input)
      resolve &Academic.create_academic_record/3
    end

    field :update_academic_record, :academic do
      arg(:id, non_null(:id))
      arg(:input, :academic_input )
      resolve &Academic.update_academic_record/3
    end

    field :delete_academic_record, :academic do
      arg(:id, non_null(:id))
      resolve &Academic.delete_academic_record/3
    end
  end

end
