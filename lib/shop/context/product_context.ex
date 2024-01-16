defmodule Shop.ProductContext do
  @moduledoc false

  alias Shop.Core.Product

  def all(_params) do
    case Product.Api.all() do
      {:ok, products} -> {:ok, products |> Enum.map(&Product.Api.json!(&1, :public))}
      error -> error
    end
  end
end
