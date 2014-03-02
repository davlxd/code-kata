class KarateChop
  def chop(array, target)
    return -1 if array.length == 0
    return 0 if array.length == 1 and array[0] == target
    return -1 if array.length == 1 and array[0] != target

    mid = array.length / 2
    if array[mid] == target
      return mid
    elsif array[mid] > target
      chop(array[0...mid], target)
    end
  end
end
