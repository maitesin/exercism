defmodule GuessingGame do
  def compare(_, guess \\ :no_guess)
  def compare(_, guess) when guess == :no_guess do
    "Make a guess"
  end

  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
  end

  def compare(secret_number, guess)
      when secret_number + 1 == guess or secret_number == guess + 1 do
    "So close"
  end

  def compare(secret_number, guess) when secret_number > guess do
    "Too low"
  end

  def compare(secret_number, guess) when secret_number < guess do
    "Too high"
  end
end
