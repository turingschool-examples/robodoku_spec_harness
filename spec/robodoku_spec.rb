require 'spec_helper'

RSpec.describe "Robodoku" do
  context "Solving puzzles" do
    it "solves a trivial puzzle" do
      expect(run_puzzle("trivial.txt")).to eq(solution_to("trivial.txt"))
    end
  end
end
