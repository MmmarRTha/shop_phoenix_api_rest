defmodule Shop.Core.Api.ProductApi do
  @moduledoc false
  alias Shop.Repo
  alias Shop.Core.Product

  import Ecto.Query

  ## all, get, get_by, insert, update, delete
  def all do
    Repo.all(Product)
  end

  def get(id) do
    Repo.get(Product, id)
  end

  def get_by(where) do
    from(Product)
    |> where(^where)
    |> Repo.one()
  end

  def delete(id) do
    case get(id) do
      nil -> {:error, "Product not found"}
      product -> Repo.delete(product)
    end
  end

  def insert(params) do
    struct(Product, params)
    |> Repo.insert()
  end
end
