# compile math.c to shared lib
gcc -shared -fPIC math.c -o libmath.so

# compile main.c
# argument -l indicate dynamic link libmath.so, -L path
gcc main.c -lmath -L. -o main 

#error3: cannot open so, file: no such file or dir, because default search /usr/local/lib
# must in outside? parent child shell ???
export LD_LIBRARY_PATH="$(pwd)"

chmod 777 build.sh


