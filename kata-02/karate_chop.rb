class KarateChop
  def do_chop(array, target, start_index, end_index)
    return -1 if start_index == end_index
    return start_index if (end_index - start_index) == 1 and array[start_index] == target
    return -1 if (end_index - start_index) == 1 and array[start_index] != target

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
