class BinaryGap

  def solution(n)
    zero_groups_array = n.to_s(2).split('1')

    zero_groups_array.pop if n.to_i.even?

    return 0 if zero_groups_array.empty?

    zero_groups_array.map { |zeroes| zeroes.length }.max
  end

end
