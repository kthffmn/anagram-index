require_relative "./spec_helper.rb"
require_relative "../lib/technical_interview.rb"

describe "anagram_index" do
  context "with abc" do
    it "returns 0" do
      expect(anagram_index("abc")).to eq(0)
    end
  end

  context "with acb" do
    it "returns 1" do
      expect(anagram_index("acb")).to eq(1)
    end
  end

  context "with cba" do
    it "returns 5" do
      expect(anagram_index("cba")).to eq(5)
    end
  end

  context "with dcba" do
    it "returns 23" do
      expect(anagram_index("dcba")).to eq(23)
    end
  end
end

describe "get_number_of_permutations" do
  context "with 3" do
    it "returns 6" do
      expect(get_number_of_permutations(3)).to eq(6)
    end
  end
end