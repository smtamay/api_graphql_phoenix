
defmodule PortafolioGraphqlApiWeb.Resolvers.Academic do
  def get_academic_records(_parent, _args, _resolution ) do
    {:ok,  PortafolioGraphqlApi.Academic.list_academic_records()}
  end

  def create_academic_record(_entity, %{input: post_params}, _context) do
      PortafolioGraphqlApi.Academic.create_academic_record(post_params)
  end

  def update_academic_record(_entity, %{id: id, input: post_params}, _context) do
    academic_record = PortafolioGraphqlApi.Academic.get_academic_record!(id)
    PortafolioGraphqlApi.Academic.update_academic_record(academic_record, post_params)
  end

  def delete_academic_record(_entity, %{id: id}, _context) do
    academic_record = PortafolioGraphqlApi.Academic.get_academic_record!(id)
    PortafolioGraphqlApi.Academic.delete_academic_record(academic_record)
  end
end
