# frozen_string_literal: true

class ArrayReverse
  def call(array, acc = [])
    current_array = Array.new(array)

    if array.length == 0
      return acc
    else
      acc << current_array.pop

      call(current_array, acc)
    end
  end
end

describe ArrayReverse do

  shared_examples "reverse" do
    it "returns the reversed array" do
      expect(subject.call(array)).to eq(expected)
    end
  end

  context "with 0 element" do
    let(:array) { [] }
    let(:expected) {[] }

    it_behaves_like "reverse"
  end

  context "with 1 element" do
    let(:array) { [1] }
    let(:expected) {[1] }

    it_behaves_like "reverse"
  end

  context "with 2 elements" do
    let(:array) { [1,2] }
    let(:expected) {[2,1] }

    it_behaves_like "reverse"
  end


  context "with more elements" do
    let(:array) { [1,2,3,4,5] }
    let(:expected) {[5,4,3,2,1] }

    it_behaves_like "reverse"
  end
end
