# Robodoku Spec Harness

This is the evaluation test harness for [Robodoku](https://github.com/JumpstartLab/curriculum/blob/master/source/projects/robodoku.markdown).

For this to run, all the `require` statements in your Robodku project must be `require_relative`.

## Installing Locally

Git clone this project into a directory that lives at the same level
as your `robodoku` project directory. It should be arranged like:

    <my_code_directory>
    |
    |\
    | \robodoku/
    |
    |\
    | \robodoku_spec_harness/
    |

Change directories into the `robodoku_spec_harness/` directory and then execute:

    $ bundle

This will load in your `Robodoku` implementation from your local file system.

### Usage

To test your implementation against the evaluation specs, run:

    $ rake spec

### Note on reading Puzzle Filepaths

The spec harness will provide the paths to puzzle source files as
absolute paths (meaning full paths from the root of the filesystem).
For this reason, you should not try to join or otherwise manipulate
these paths.

### Note on output format

Remember that, as specified in the [project spec](https://github.com/JumpstartLab/curriculum/blob/master/source/projects/robodoku.markdown#template),
your solver should output solved puzzles to the terminal
as 9 lines of text with each line having 9 columns.

For Example:

```
826594317
715638942
394721865
163459278
948267153
257813694
531942786
482176539
679385421
```

The spec harness will attempt to chomp a single newline off the end of
your output, if one is present.
