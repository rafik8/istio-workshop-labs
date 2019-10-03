#!/usr/bin/env bash

# a=0
#
# while [ $a -lt 10000 ]
# do
#    curl -s http://hipster.trainee001-srecon19.innovlabs.io/
#    curl -s http://hipster.trainee001-srecon19.innovlabs.io/product/OLJCESPC7Z
#    curl -d "product_id=OLJCESPC7Z&quantity=1" -X POST http://hipster.trainee001-srecon19.innovlabs.io/cart
#    curl -d "email=someone%40example.com&street_address=1600+Amphitheatre+Parkway&zip_code=94043&city=Mountain+View&state=CA&country=United+States&credit_card_number=4432-8015-6152-0454&credit_card_expiration_month=1&credit_card_expiration_year=2020&credit_card_cvv=672" -X POST http://hipster.trainee001-srecon19.innovlabs.io/cart/checkout
#
#    echo $a
#    if [ $a -eq 10000 ]
#    then
#       break
#    fi
#    a=`expr $a + 1`
# done


for i in {1..10000}
do
  curl -s http://hipster.trainee701-srecon19.innovlabs.io/ > /dev/null
  curl -s http://hipster.trainee701-srecon19.innovlabs.io/product/OLJCESPC7Z > /dev/null
  curl -s -d "product_id=OLJCESPC7Z&quantity=1" -X POST http://hipster.trainee001-srecon19.innovlabs.io/cart > /dev/null
  curl -s -d "email=someone%40example.com&street_address=1600+Amphitheatre+Parkway&zip_code=94043&city=Mountain+View&state=CA&country=United+States&credit_card_number=4432-8015-6152-0454&credit_card_expiration_month=1&credit_card_expiration_year=2020&credit_card_cvv=672" -X POST http://hipster.trainee001-srecon19.innovlabs.io/cart/checkout > /dev/null
  echo "Call number: $i"
done
