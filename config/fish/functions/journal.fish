function journal -d "Quick journal of the day using Atom Beta"
  atom-beta "$HOME/git/gogo.bag/journal/"(date +%Y%m%d)".md"
end
