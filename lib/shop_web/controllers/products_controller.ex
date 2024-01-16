defmodule ShopWeb.ProductsController do
  @moduledoc false
  use ShopWeb, :controller

  alias Shop.ProductContext

  def index(conn, params) do
    case ProductContext.all(params) do
      {:ok, products} ->
        json(conn, %{data: products})

      {:error, msg} ->
        put_status(conn, 422)
        |> json(%{error: msg})
    end
  end
end
