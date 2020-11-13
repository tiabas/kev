#!/usr/bin/env bash


generate_commit()
{
  MESSAGE=$(LC_ALL=C tr -dc 'A-Za-z0-9_!@#$%^&*()\-+=' < /dev/urandom | head -c 65540) 

  echo "${MESSAGE:0:10}" > file.txt
  git add file.txt
  git commit -m "$MESSAGE"
}

for i in {1..100}
do
  generate_commit
done
