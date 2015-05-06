# Robodoku Spec Harness

This is the evaluation test harness for Robodoku.

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
For this reason, you shoul not try to join or otherwise manipulate
these paths.
