class MyHash

  define_method(:initialize) do
    @myPairs = []
  end

  define_method(:myStore) do |key, value|
    @myPairs.push([key,value])
  end

  define_method(:myFetch) do |key|
    myVal = 12345
    @myPairs.each do |pair|
      if pair.include?(key)
        myVal = @myPairs[@myPairs.index(pair)][1]
      else
        myVal = "didn't find anything"
      end
      myVal
    end
    myVal
  end

  define_method(:has_key?) do |key|
    result = false
    @myPairs.each do |pair|
      if pair.include?(key)
        result = true
      end
      result
    end
    result
  end

  define_method(:length) do
    count = 0
    @myPairs.each do
      count += 1
    end
    count
  end

  define_method(:toArray) do
    pairArr = []
    @myPairs.each do |myPair|
      pairArr.push(myPair)
    end
    pairArr
  end

  define_method(:myMerge) do |userHash|
    newArr = []
    @myPairs.each do |pair1|
      newArr.push(pair1)
    end
    userHashArr = userHash.toArray
    userHashArr.each do |pair2|
      newArr.push(pair2)
    end
    newArr
  end

end
