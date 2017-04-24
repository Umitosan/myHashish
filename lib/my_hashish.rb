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

end
