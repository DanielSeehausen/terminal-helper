
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias preferences="open "x-apple.systempreferences:com.apple.preference.keyboard?Text""
alias getmyip='ifconfig | grep "inet " | grep -v 127.0.0.1'
echo $getmyip

function appendIfAbsent(){
  str=$1
  filename=$2
  $str
  echo "Searching current directory for '$filename' and adding '$str' if it is not already present"
  files=$(find . -name $filename)

  for filename in $files;
  do
    #add x to grep ARGS (i.e. 'grep -Fxq') to only match whole lines to the string
    #using count because of the unary operator expected issue
    get_count='grep -c -Fxq $filename $str'
    if ! [[ $count -eq 0 ]];
    then
      echo "$str not found in $filename...appending now"
      echo $str >> $filename
    else
      echo "$str found in $filename"
    fi
  done
}

function gitgot {
    reponame=${1##*/}
    reponame=${reponame%.git}
    git clone "$1" "$reponame";
    cd "$reponame";
    hub fork;
    #appendIfAbsent "gem 'pry-byebug'" Gemfile
    #bundle install;
    npm update
    atom . ;
}

gotgit(){
  learn test;
  learn submit;
  cd ..
}

function chrome(){
    local site=""
    if [[ -f "$(pwd)/$1" ]]; then
        site="$(pwd)/$1"
    elif [[ "$1" =~ "^http" ]]; then
        site="$1"
    else
        site="http://$1"
    fi
    /usr/bin/open -a "/Applications/Google Chrome.app" "$site";
}

cd Development/

export PS1='\n\W >> '

alias stephenPlease='source ~/.invoke-stephen.sh'
alias stephenPlease='source ~/.invoke-stephen.sh'
