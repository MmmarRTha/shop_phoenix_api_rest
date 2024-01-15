defmodule Shop.ProductContext do
    @moduledoc false

    alias Shop.Core.Api.ProductApi

    def all(_params) do
        ProductApi.all()
    end
end
