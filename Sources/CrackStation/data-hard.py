import hashlib
import json

data_dict = {}

alpaNums=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9']

for x in alpaNums:
    hash = hashlib.sha1(x.encode())
    hash_val = hash.hexdigest()
    data_dict[hash_val] = x  

with open('data_file.json', 'w') as file_json:
    json.dump(data_dict, file_json)