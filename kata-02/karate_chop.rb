class KarateChop
  def chop(array, target)
    return -1 if array.length == 0
    return 0 if array.length == 1 and array[0] == target
    return -1 if array.length == 1 and array[0] != target
  end
end
