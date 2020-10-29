f=$1
arc=$2
if [[ $arc == "" ]]; then
    echo "80"
    nvcc $f.cu -lcublas -lcurand -arch sm_80 -o $f;
else
    echo "75"
    nvcc $f.cu -lcublas -lcurand -arch sm_75 -o $f;
fi
echo "compilation completes"
./$f
