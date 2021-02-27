defmodule Rocketpay.NumbersTest do

  use ExUnit.case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("Numbers")

      expected_response = "banana"

      assert response == expected_response
    end
  end

end
