defmodule KitchenCalculator do
  def get_volume({_, amount}) do
    amount
  end

  def to_milliliter({:cup, amount}) do
    {:milliliter, amount * 240}
  end

  def to_milliliter({:fluid_ounce, amount}) do
    {:milliliter, amount * 30}
  end

  def to_milliliter({:teaspoon, amount}) do
    {:milliliter, amount * 5}
  end

  def to_milliliter({:tablespoon, amount}) do
    {:milliliter, amount * 15}
  end

  def to_milliliter({:milliliter, amount}) do
    {:milliliter, amount}
  end

  def from_milliliter({:milliliter, amount}, :cup) do
    {:cup, amount / 240}
  end

  def from_milliliter({:milliliter, amount}, :fluid_ounce) do
    {:fluid_ounce, amount / 30}
  end

  def from_milliliter({:milliliter, amount}, :teaspoon) do
    {:teaspoon, amount / 5}
  end

  def from_milliliter({:milliliter, amount}, :tablespoon) do
    {:tablespoon, amount / 15}
  end

  def from_milliliter({:milliliter, amount}, :milliliter) do
    {:milliliter, amount}
  end

  def convert({src_unit, amount}, dst_unit) do
    amount_ml = to_milliliter({src_unit, amount})
    from_milliliter(amount_ml, dst_unit)
  end
end
