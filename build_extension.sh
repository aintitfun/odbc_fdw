export PATH=$PATH:`echo -n $HOME`/build_extensions/postgres_binaries/`echo -n $1`/bin
cp -R echo -n $1`_related/* .
make
git checkout HEAD~1 -- . 
