defmodule WeatherHistory do
  def for_location_27([]), do: []
  def for_location_27([ [time, 27, temp, rain] | tail ])  do
    [ [time, 27, temp, rain] | for_location_27(tail) ]
  end
  def for_location_27([ _ | tail ]), do: for_location_27(tail)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 215, 0.135],
      [1366225622, 26, 15, 0.125],
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 615, 0.115]
    ]
  end
end
