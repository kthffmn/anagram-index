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

  context "with edcba" do
    it "returns 119" do
      expect(anagram_index("edcba")).to eq(119)
    end
  end

  context "with edcab" do
    it "returns 118" do
      expect(anagram_index("edcab")).to eq(118)
    end
  end
end

describe "number_of_permutations" do
  context "with 3" do
    it "returns 6" do
      expect(number_of_permutations(3)).to eq(6)
    end
  end
  context "with 5" do
    it "returns 120" do
      expect(number_of_permutations(5)).to eq(120)
    end
  end
end
