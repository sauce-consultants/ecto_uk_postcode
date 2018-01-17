defmodule Ecto.UKPostcodeTest do
  use ExUnit.Case
  doctest Ecto.UKPostcode

  import Ecto.UKPostcode

  test "underlying database type is string" do
    assert :string == type
  end

  test "cast ln11tq into LN1 1TQ" do
    cast("ln11tq")
    |> case do
      {:ok, postcode} when is_binary(postcode) -> assert postcode == "LN1 1TQ"
    end
  end

  test "cast ln115TQ into LN11 5TQ" do
    cast("ln115tq")
    |> case do
      {:ok, postcode} when is_binary(postcode) -> assert postcode == "LN11 5TQ"
    end
  end

  test "fail to cast w1a" do
    assert cast("w1a") == :error
  end

  test "fail to cast 1111111" do
    assert cast("1111111") == :error
  end

  test "load postcode" do
    assert {:ok ,"LN11 1TQ"} = load("LN11 1TQ")
    assert :error = load(nil)
  end

  test "dump string" do
    assert {:ok, "LN11 1TQ"} = dump("LN11 1TQ")
    assert :error = dump(nil)
  end
end
