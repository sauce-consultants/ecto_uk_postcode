defmodule Ecto.UKPostcode do

  @behaviour Ecto.Type

  @moduledoc """
  A custom Ecto type for storing UK postcodes

  This validates the postcode and stores in the format LN#/# #NG


  ## Usage

  On your schema, define postcode fields with this type:

    field :postcode, Ecto.UKPostcode

  """

  def type(), do: :string

  def cast(value) when is_binary(value), do: format_postcode(value)
  def cast(_), do: :error

  def load(value) when is_binary(value), do: {:ok, value}
  def load(_), do: :error

  def dump(value) when is_binary(value), do: {:ok, value}
  def dump(_), do: :error


  defp format_postcode(postcode) do
    if UKPostcode.full?(postcode) do
      {:ok, UKPostcode.normalise postcode}
    else
      :error
    end
  end
end
