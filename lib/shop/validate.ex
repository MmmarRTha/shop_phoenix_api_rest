defmodule Shop.Validate do
  @moduledoc false

  def get_required(params, field) do
    case params[field] do
      nil -> {:error, "Field #{field} is required"}
      value -> {:ok, value}
    end
  end

  def is_integer(value, field) do
    case Integer.parse(value) do
      {int, ""} -> {:ok, int}
      _ -> {:error, "#{field}: Field is not an integer"}
    end
  end
end
