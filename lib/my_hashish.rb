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

end
