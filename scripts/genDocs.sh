#sudo ulimit -S -n 4096
rm -r htmlDocs
mkdir htmlDocs
cp -r ./docs/img htmlDocs
../docker/docker -i ../mermaid/ -c emacs -x "*git*|*travis*|*bin*|*dist*|*node_modules*|*gulp*|*lib*|*editor*|*conf*|*scripts*|*test*|*htmlDocs*" --extras mermaid -w -o htmlDocs
