defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """

  @spec score(position :: position) :: integer
  def score({x, y}) when x < 0 do
    score({x * -1, y})
  end

  def score({x, y}) when y < 0 do
    score({x, y * -1})
  end

  def score({x, y}) when x >= 0 and y >= 0 do
    distance = :math.sqrt(x * x + y * y)

    if distance <= 1 do
      10
    else
      if distance <= 5 do
        5
      else
        if distance <= 10 do
          1
        else
          0
        end
      end
    end
  end
end
