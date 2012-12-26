#!/bin/bash -e

function generate_jar_file
{
  old_directory=`pwd`
  
  cd "$1"
  
  # only build from master branch
  git checkout master
  
  # build application
  ant
  
  # be polite and return to where we were before calling the function
  cd "$old_directory"
}

# if number of arguments is 1
if [[ "$#" == "1" ]]
then
  update_updater="false"
  java_dir="/Users/viktorfonic/Data/Programming/Java"
  
  # pack aplication
  generate_jar_file "$java_dir/$1"
  
  # pack updater
  generate_jar_file "$java_dir/$1 Updater"
  
  # generate hashes
  automatic_updates_dir="/Users/viktorfonic/Data/Sitar/Application/$1 Updater/Automatic Updates"
  cd "$automatic_updates_dir"
  filename="$1.jar"
  hash=`md5 -q "$filename"`
  new_filename=`ls *"$1.jar" | tail -n2 | head -n1`
  new_hash=`md5 -q "$new_filename"`
  
  # check if hashes are different
  if [[ "$new_hash" == "$hash" ]]; then
    rm "$new_filename"
  else
    cp "$new_filename" "$filename"
    update_updater="true"
  fi
  
  automatic_updates_dir="/Users/viktorfonic/Data/Sitar/Application/$1/Automatic Updates"
  cd "$automatic_updates_dir"
  filename="app.jar"
  hash=`md5 -q app.jar`
  new_filename=`ls *app.jar | tail -n2 | head -n1`
  new_hash=`md5 -q "$new_filename"`
  
  # check if hashes are different
  if [[ "$new_hash" == "$hash" ]]; then
    rm "$new_filename"
  else
    cp "$new_filename" "$filename"
    
    # upload updates to server
    cd "$java_dir/Automatic Updates"
    lowercasename=`echo $1 | tr [A-Z] [a-z] | tr -d ' '`
    
    # upload updates to server
    ant -lib lib/ -Dbucket="$lowercasename" -Dbasedir="$automatic_updates_dir" -Dprogram_name="$1" -Dupdate_updater="$update_updater"
  fi
else
  echo "Wrong number of arguments. Usage: ultimate ant script BioTricoTest\ Manager"
fi
