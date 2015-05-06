# For notifying students of mistakes they might make that will trip them up
die_because = lambda do |explanation|
  puts "\e[31m#{explanation}\e[0m"
  exit 1
end

# Must run with bundle exec
unless defined? Bundler
  die_because.call "Run with `bundle exec` or you'll have issues!"
end

# Must run from root
spec_harness_root = File.expand_path('../..',  __FILE__)
unless File.expand_path(Dir.pwd) == spec_harness_root
  die_because.call "Run the program from the root of the Spec Harness (#{spec_harness_root.inspect})"
end

def robodoku_path
  File.expand_path(File.join("..", "robodoku", "lib", "sudoku.rb"))
end

def run_puzzle(puzzle_name)
  `ruby #{robodoku_path} #{puzzle_path(puzzle_name)}`.chomp
end

def puzzle_path(puzzle_name)
  File.expand_path(File.join(puzzles_dir, puzzle_name))
end

def solution_to(puzzle_name)
  File.read(File.join(solutions_dir, puzzle_name)).chomp
end

def puzzles_dir
  File.join(__dir__, "puzzles")
end

def solutions_dir
  File.join(__dir__, "solutions")
end
