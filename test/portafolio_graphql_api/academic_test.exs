defmodule PortafolioGraphqlApi.AcademicTest do
  use PortafolioGraphqlApi.DataCase

  alias PortafolioGraphqlApi.Academic

  describe "academic_records" do
    alias PortafolioGraphqlApi.Academic.Academic_record

    import PortafolioGraphqlApi.AcademicFixtures

    @invalid_attrs %{area: nil, country: nil, description: nil, finish_date: nil, institute: nil, start_date: nil, state: nil, title: nil}

    test "list_academic_records/0 returns all academic_records" do
      academic_record = academic_record_fixture()
      assert Academic.list_academic_records() == [academic_record]
    end

    test "get_academic_record!/1 returns the academic_record with given id" do
      academic_record = academic_record_fixture()
      assert Academic.get_academic_record!(academic_record.id) == academic_record
    end

    test "create_academic_record/1 with valid data creates a academic_record" do
      valid_attrs = %{area: "some area", country: "some country", description: "some description", finish_date: ~D[2022-03-21], institute: "some institute", start_date: ~D[2022-03-21], state: "some state", title: "some title"}

      assert {:ok, %Academic_record{} = academic_record} = Academic.create_academic_record(valid_attrs)
      assert academic_record.area == "some area"
      assert academic_record.country == "some country"
      assert academic_record.description == "some description"
      assert academic_record.finish_date == ~D[2022-03-21]
      assert academic_record.institute == "some institute"
      assert academic_record.start_date == ~D[2022-03-21]
      assert academic_record.state == "some state"
      assert academic_record.title == "some title"
    end

    test "create_academic_record/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Academic.create_academic_record(@invalid_attrs)
    end

    test "update_academic_record/2 with valid data updates the academic_record" do
      academic_record = academic_record_fixture()
      update_attrs = %{area: "some updated area", country: "some updated country", description: "some updated description", finish_date: ~D[2022-03-22], institute: "some updated institute", start_date: ~D[2022-03-22], state: "some updated state", title: "some updated title"}

      assert {:ok, %Academic_record{} = academic_record} = Academic.update_academic_record(academic_record, update_attrs)
      assert academic_record.area == "some updated area"
      assert academic_record.country == "some updated country"
      assert academic_record.description == "some updated description"
      assert academic_record.finish_date == ~D[2022-03-22]
      assert academic_record.institute == "some updated institute"
      assert academic_record.start_date == ~D[2022-03-22]
      assert academic_record.state == "some updated state"
      assert academic_record.title == "some updated title"
    end

    test "update_academic_record/2 with invalid data returns error changeset" do
      academic_record = academic_record_fixture()
      assert {:error, %Ecto.Changeset{}} = Academic.update_academic_record(academic_record, @invalid_attrs)
      assert academic_record == Academic.get_academic_record!(academic_record.id)
    end

    test "delete_academic_record/1 deletes the academic_record" do
      academic_record = academic_record_fixture()
      assert {:ok, %Academic_record{}} = Academic.delete_academic_record(academic_record)
      assert_raise Ecto.NoResultsError, fn -> Academic.get_academic_record!(academic_record.id) end
    end

    test "change_academic_record/1 returns a academic_record changeset" do
      academic_record = academic_record_fixture()
      assert %Ecto.Changeset{} = Academic.change_academic_record(academic_record)
    end
  end
end
