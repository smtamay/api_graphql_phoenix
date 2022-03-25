defmodule PortafolioGraphqlApi.Repo.Migrations.CreateAcademicRecords do
  use Ecto.Migration

  def change do
    create table(:academic_records) do
      add :institute, :string
      add :title, :string
      add :area, :string
      add :start_date, :date
      add :finish_date, :date
      add :description, :string
      add :country, :string
      add :state, :string

      timestamps()
    end
  end
end
