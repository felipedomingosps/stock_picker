def sub_array_right(array, initial_index)
    array[initial_index + 1, array.length]
end

def main
    array = [17,3,6,9,15,8,6,1,10]

    best_day_to_buy = 0
    best_day_to_sell = 0
    best_buy_value = 0
    best_sell_value = 0
    best_profit = 0

    array.each_with_index do |buy_value, day_to_buy|
        day_to_sell_start_index = day_to_buy + 1

        unless day_to_buy == array.length - 1
            sub_array_right(array, day_to_buy).each.with_index(day_to_sell_start_index) do |sell_value, day_to_sell|
                if sell_value - buy_value > best_profit then
                    best_profit = sell_value - buy_value
                    best_day_to_buy = day_to_buy
                    best_day_to_sell = day_to_sell
                    best_buy_value = buy_value
                    best_sell_value = sell_value
                end
            end
        end
    end
p [best_day_to_buy, best_day_to_sell]
end
main