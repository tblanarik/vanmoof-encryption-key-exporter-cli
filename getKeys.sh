token=$(curl https://my.vanmoof.com/api/v8/authenticate -u "$1:$2" --header "Api-Key: $3" --silent | jq -r '.token')
encryptionKey=$(curl https://my.vanmoof.com/api/v8/getCustomerData?includeBikeDetails --header "Authorization: Bearer $token" --header "Api-Key: $3" --silent | jq -r '.data.bikeDetails[0].key')
echo $encryptionKey