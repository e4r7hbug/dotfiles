# Old virtualenv aliases
alias a='. ~/v/bin/activate'
alias a.='. ./v/bin/activate'
alias v='virtualenv -p python v'
alias a3='. ~/v3/bin/activate'
alias a3.='. ./v3/bin/activate'
alias v3='virtualenv -p python3 v3'

journal () {
  year=$(date "+%Y")
  month=$(date "+%m")
  date=$(date "+%Y%m%d")

  journal_dir="$HOME/git/gogo.bag/journal"
  year_dir="$journal_dir/$year"
  month_dir="$year_dir/$month"

  journal_file="$month_dir/$date.md"

  if ! [ -d "$year_dir" ]
  then
    mkdir "$year_dir"

    if ! [ -d "$month_dir" ]
    then
      mkdir "$month_dir"
    fi
  fi

  return "$journal_file"
}

# Quick journal of the day
journal journal_file
alias aj="atom-beta $journal_file"
alias vj="vim $journal_file"
