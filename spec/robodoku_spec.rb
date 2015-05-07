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

    it "solves a medium puzzle" do
      expect(run_puzzle("medium.txt")).to eq(solution_to("medium.txt"))
    end

    it "solves another medium puzzle" do
      expect(run_puzzle("medium2.txt")).to eq(solution_to("medium2.txt"))
    end

    it "solves a medium-hard puzzle" do
      expect(run_puzzle("med-hard.txt")).to eq(solution_to("med-hard.txt"))
    end

    it "solves a hard puzzle" do
      expect(run_puzzle("hard.txt")).to eq(solution_to("hard.txt"))
    end

    it "solves another hard puzzle" do
      expect(run_puzzle("hard2.txt")).to eq(solution_to("hard2.txt"))
    end

    it "solves a very hard puzzle" do
      expect(run_puzzle("very-hard.txt")).to eq(solution_to("very-hard.txt"))
    end
  end
end
