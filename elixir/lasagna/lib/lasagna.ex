defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  def preparation_time_in_minutes(layers) do
    2 * layers
  end

  def total_time_in_minutes(layers, minutes) do
    expected_minutes_in_oven() - remaining_minutes_in_oven(minutes) + preparation_time_in_minutes(layers)
  end

  def alarm() do
    "Ding!"
  end
end
