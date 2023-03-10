#! /bin/bash

jobname=$1
data_dir_name=./data/${jobname}/

prepare_folder(){
    mkdir -p $(dirname $1)
}

mkdir -p ./data

for n in $( seq 0 50 )
do
    from=$(( $n*50 ))
    to=$(( $n*50 + 49 ))
    echo $from $to

    datafile=${data_dir_name}$from-$to.json
    prepare_folder ${datafile}

    ./src/products.sh $from $to >  ${datafile}
done