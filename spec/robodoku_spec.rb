require 'spec_helper'

RSpec.describe "Robodoku" do
  context "Solving puzzles" do
    it "solves a trivial puzzle" do
      expect(run_puzzle("trivial.txt")).to eq(solution_to("trivial.txt"))
    end

    it "solves an easiest puzzle" do
      expect(run_puzzle("easiest.txt")).to eq(solution_to("easiest.txt"))
    end

    it "solves an easy puzzle" do
      expect(run_puzzle("easy.txt")).to eq(solution_to("easy.txt"))
    end

    it "solves another easy puzzle" do
      expect(run_puzzle("easy2.txt")).to eq(solution_to("easy2.txt"))
    end
  end
end
