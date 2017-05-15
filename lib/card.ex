defmodule Cashy.Card do
  @type card :: {suit(), value()}
  @type suit :: :hearts | :diamonds | :clubs | :spades
  @type value :: 1..13

  @spec random_card() :: card
  def random_card do
    suit = Enum.random([:hearts, :diamonds, :clubs, :spades])
    value = Enum.random(1..13)
    {suit, value}
  end
end