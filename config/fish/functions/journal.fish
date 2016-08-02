function journal -d "Generate journal of the day file path"
  set year (date "+%Y")
  set month (date "+%m")
  set date (date "+%Y%m%d")

  set journal_dir "$HOME/git/gogo.bag/journal"
  set year_dir "$journal_dir/$year"
  set month_dir "$year_dir/$month"

  set -g journal_file "$month_dir/$date.md"

  if not test -d "$year_dir"
    mkdir "$year_dir"

    if not test -d "$month_dir"
      mkdir -p "$month_dir"
    end
  end
end
