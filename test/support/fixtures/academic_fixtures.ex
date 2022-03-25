defmodule PortafolioGraphqlApi.AcademicFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PortafolioGraphqlApi.Academic` context.
  """

  @doc """
  Generate a academic_record.
  """
  def academic_record_fixture(attrs \\ %{}) do
    {:ok, academic_record} =
      attrs
      |> Enum.into(%{
        area: "some area",
        country: "some country",
        description: "some description",
        finish_date: ~D[2022-03-21],
        institute: "some institute",
        start_date: ~D[2022-03-21],
        state: "some state",
        title: "some title"
      })
      |> PortafolioGraphqlApi.Academic.create_academic_record()

    academic_record
  end
end
