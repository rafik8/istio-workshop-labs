#!/usr/bin/env bash
#
# Copyright (C) 2019 Crown Copyright (HM Land Registry)

# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is furnished to do
# so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

a=0

while [ $a -lt 10000 ]
do
   curl -I http://hipster.trainee001-srecon19.innovlabs.io/
   curl -I http://hipster.trainee001-srecon19.innovlabs.io/product/OLJCESPC7Z
   curl -d "product_id=OLJCESPC7Z&quantity=1" -X POST http://hipster.trainee001-srecon19.innovlabs.io/cart
   curl -d "email=someone%40example.com&street_address=1600+Amphitheatre+Parkway&zip_code=94043&city=Mountain+View&state=CA&country=United+States&credit_card_number=4432-8015-6152-0454&credit_card_expiration_month=1&credit_card_expiration_year=2020&credit_card_cvv=672" -X POST http://hipster.trainee001-srecon19.innovlabs.io/cart/checkout

   echo $a
   if [ $a -eq 10000 ]
   then
      break
   fi
   a=`expr $a + 1`
done
