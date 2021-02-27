defmodule Rocketpay.Numbers do
  def sum from file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}), do
    result =
      result
    |> String.split(",")
    |> Enum.map(result, fn number -> String.to_integer(number) end)
    |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid file!"}}
end
