class BonusDrink
  GIFT_NUMBER = 3

  def self.total_count_for(amount)
    total_count = amount
    surplus = amount
    while surplus >= GIFT_NUMBER
      count_array = surplus.divmod(GIFT_NUMBER)
      surplus = count_array[0] + count_array[1]
      total_count += count_array[0]
    end
    total_count
  end
end

puts BonusDrink.total_count_for(100)