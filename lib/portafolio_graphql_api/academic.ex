defmodule PortafolioGraphqlApi.Academic do
  @moduledoc """
  The Academic context.
  """

  import Ecto.Query, warn: false
  alias PortafolioGraphqlApi.Repo

  alias PortafolioGraphqlApi.Academic.Academic_record

  @doc """
  Returns the list of academic_records.

  ## Examples

      iex> list_academic_records()
      [%Academic_record{}, ...]

  """
  def list_academic_records do
    Repo.all(Academic_record)
  end

  @doc """
  Gets a single academic_record.

  Raises `Ecto.NoResultsError` if the Academic record does not exist.

  ## Examples

      iex> get_academic_record!(123)
      %Academic_record{}

      iex> get_academic_record!(456)
      ** (Ecto.NoResultsError)

  """
  def get_academic_record!(id), do: Repo.get!(Academic_record, id)

  @doc """
  Creates a academic_record.

  ## Examples

      iex> create_academic_record(%{field: value})
      {:ok, %Academic_record{}}

      iex> create_academic_record(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_academic_record(attrs \\ %{}) do
    %Academic_record{}
    |> Academic_record.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a academic_record.

  ## Examples

      iex> update_academic_record(academic_record, %{field: new_value})
      {:ok, %Academic_record{}}

      iex> update_academic_record(academic_record, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_academic_record(%Academic_record{} = academic_record, attrs) do
    academic_record
    |> Academic_record.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a academic_record.

  ## Examples

      iex> delete_academic_record(academic_record)
      {:ok, %Academic_record{}}

      iex> delete_academic_record(academic_record)
      {:error, %Ecto.Changeset{}}

  """
  def delete_academic_record(%Academic_record{} = academic_record) do
    Repo.delete(academic_record)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking academic_record changes.

  ## Examples

      iex> change_academic_record(academic_record)
      %Ecto.Changeset{data: %Academic_record{}}

  """
  def change_academic_record(%Academic_record{} = academic_record, attrs \\ %{}) do
    Academic_record.changeset(academic_record, attrs)
  end
end
