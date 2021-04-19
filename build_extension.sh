export PATH=$PATH:`echo -n $HOME`/build_extensions/postgres_binaries/`echo -n $1`/bin
cp -R echo -n $1`_related/* .
make && make install
mkdir temp_zip/bin/
mkdir temp_zip/lib/
mkdir temp_zip/share/extension/
cp ${PATH}/postgres_binaries/bin/${PWD##*/}* temp_zip/bin
cp ${PATH}/postgres_binaries/lib/${PWD##*/}* temp_zip/lib
cp ${PATH}/postgres_binaries/share/extension/${PWD##*/}* temp_zip/share/extension/lib

zip ${PWD##*/}.zip temp_zip/*
#git checkout HEAD~1 -- . 
