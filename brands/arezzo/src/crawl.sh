#! /bin/bash

jobname=$1
source ./src/config
data_dir_name=./data/${jobname}/

prepare_folder(){
    mkdir -p $(dirname $1)
}


for c in ${categories}
do
    echo Calling category script for $c

    categories_filename=${data_dir_name}categories/$c.json
    prepare_folder ${categories_filename}

    ./src/categories.sh $c > ${categories_filename}
    
    for s in $(jq -r ' .subCategories[].code ' ${categories_filename} )
    do 
        echo Calling sub category $s for $c

        sub_categories_filename=${data_dir_name}categories/$c/sub_categories/$s.json
        prepare_folder ${sub_categories_filename}

        ./src/categories.sh $s > ${sub_categories_filename}

        for p in $(jq -r ' .products[].url ' ${sub_categories_filename} )
        do
            echo Calling product $p for sub category $s

            product_filename=${data_dir_name}categories/$c/sub_categories/$s$p.json
            prepare_folder ${product_filename}

            ./src/products.sh $p > ${product_filename}

            for i in $( jq -r ' .pageProps.product.images[].url ' ${product_filename} )

                echo Downloading product images for $p

                curl $i > $( dirname ${product_filename} )/$( basename $i )

        done

    done
 
done
