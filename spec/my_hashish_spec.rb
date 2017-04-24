require "my_hashish"
require "rspec"
require "pry"


describe 'MyHash' do

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "ugly")
      test_hash.myStore("persona", "non grada")
      expect(test_hash.myFetch("persona")).to(eq("non grada"))
    end
  end

  describe("#has_key?") do
    it("returns true/false if the key exists in our Hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "ugly")
      test_hash.myStore("persona", "non grada")
      expect(test_hash.has_key?("kitten")).to(eq(true))
    end
  end

  describe("#has_value?") do
    it("returns true/false if the value is included in the Hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "ugly")
      test_hash.myStore("persona", "non grada")
      expect(test_hash.has_key?("ugly")).to(eq(true))
    end
  end

  describe("#length") do
    it("returns the total number pairs in the Hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "ugly")
      test_hash.myStore("persona", "non grada")
      expect(test_hash.length()).to(eq(3))
    end
  end

  describe("#toArray") do
    it("returns a new array made from all myHash elements") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("chicharron", "malo")
      expect(test_hash.toArray()).to(eq([["kitten", "cute"],["chicharron", "malo"]]))
    end
  end

  describe("#myMerge") do
    it("merges 2 hashes and returns a new hash") do
      test_hash1 = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash1.myStore("kitten", "cute")
      test_hash2.myStore("chicharron", "malo")
      expect(test_hash1.myMerge(test_hash2)).to(eq([["kitten", "cute"],["chicharron", "malo"]]))
    end
  end

  describe("#myMerge") do
    it("merges 2 hashes and returns a new hash") do
      test_hash1 = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash1.myStore("kitten", "cute")
      test_hash1.myStore("puppy", "fluffy")
      test_hash2.myStore("persona", "non grada")
      test_hash2.myStore("tiny", "dancer")
      expect(test_hash1.myMerge(test_hash2)).to(eq([["kitten", "cute"],["puppy", "fluffy"],["persona", "non grada"],["tiny", "dancer"]]))
    end
  end


end
