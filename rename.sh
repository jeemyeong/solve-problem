#!/bin/sh

# for d in $(find ./boj/* -maxdepth 1 -type d)
# do
#   #Do something, the directory is accessible with $d:
#   echo $d
#   for file in $d/*.{js,py,clj}
#   do
#     printf $file
#     printf "\n"
#     new=$d/${file//*./Main.}
#     printf $new
#     printf "\n"
#     mv $file $new
#   done
# done

for d in $(find ./boj/* -maxdepth 1 -type d)
do
  #Do something, the directory is accessible with $d:
  echo $d
  for file in $d/*.input
  do
    printf $file
    printf "\n"
    new=$d/${file//*-/}
    new=${new//input/test}
    printf $new
    printf "\n"
    mv $file $new
  done
done