for dir in ~/programming/*; do 
  if [ -d "$dir/.git" ]; then 
    cd "$dir" && 
    if [ -n "$(git status --porcelain)" ]; then 
      echo "Uncommitted changes in: $dir"; 
    fi; 
  fi; 
done