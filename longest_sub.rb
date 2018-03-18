class LongestSub

  def common_check(string)
    string_arr = string.split("")
    count_arr = [1] * string_arr.length
    return string if string_arr.length == 1
    string_arr.each_with_index do |val, index|
      next if index == 0
      if val == string_arr[index-1]
        count_arr[index] = count_arr[index-1] + 1
      end
    end
    max_count = count_arr.max
    character_index = count_arr.rindex(max_count)
    string_arr[character_index]*max_count
  end

  def increase_number_check(string)
    string_arr = string.split("").map(&:to_i)
    count_arr = [1] * string_arr.length
    return 1 if string_arr.length == 1
    string_arr.each_with_index do |val, index|
      next if index == 0
      if val > string_arr[index-1].to_i
        count_arr[index] = count_arr[index-1] + 1
      end
    end
    max_count = count_arr.max
    character_index = count_arr.rindex(max_count)
    string[character_index-(max_count-1)..character_index]
  end

end

