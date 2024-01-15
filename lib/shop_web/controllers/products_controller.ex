defmodule ShopWeb.ProductsController do
    @moduledoc false
  use ShopWeb, :controller

  def index(conn, _params) do
    json(conn, %{status: :ok})
  end
end
