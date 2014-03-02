class KarateChop
  def do_chop(array, target, start_index, end_index)
    return -1 if array.length == 0
    return 0 if array.length == 1 and array[0] == target
    return -1 if array.length == 1 and array[0] != target

    mid = (start_index + end_index) / 2
    if array[mid] == target
      return mid
    elsif array[mid] > target
      do_chop(array, target, 0, mid)
    else
      do_chop(array, target, mid + 1, end_index)
    end
  end

  def chop(array, target)
    do_chop(array, target, 0, array.length)
  end
end
