defmodule RocketpayWeb.WelcomeController do
  use RocketpayWeb, :controller

  alias Rocktpay.Numbers

  def index(conn, %{"filename" =>filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handler_response()
  end

  defp handler_response({:ok, %{result: result}}, conn) do
    conn
    |> puts_status(:ok)
    |> json(%{message: "Welcome to rocketpay API. Here is your number #{result}" })
  end


  defp handler_response({:error, reason, conn) do
    conn
    |> puts_status(:bad_request)
    |> json(reason)
  end
end
