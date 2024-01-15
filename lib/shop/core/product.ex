defmodule Shop.Core.Product do
  @moduledoc false

  use Ecto.Schema

  schema "products" do
    field(:title, :string)
    field(:description, :string)
    field(:price, :integer, default: 0)

    timestamps()
  end
end
