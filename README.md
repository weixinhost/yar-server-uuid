A unique id write by Yar-C ( A light, concurrent RPC framework ) ( https://github.com/laruence/yar-c ).

It support deploy to multi servers and make ID truly unique by 2 params ( DATA_CENTER & MACHINE ).

##Server Side:

docker run -d --restart=always -p 5600:5600 --name=uuid -e "DATA_CENTER=1" -e "MACHINE=1" wxhost/yar-server-uuid

PS: The 2 params are all required.

##Client Side:

[PHP]

You need to install PHP Yar extension first: https://github.com/laruence/yar

$server = 'tcp://127.0.0.1:5600';

$client = new Yar_Client($servier);
$client->SetOpt(YAR_OPT_PACKAGER, "MSGPACK");

$data = $client->getuuid();

var_dump($data);

Yar support lot' s of language:

Java:
https://github.com/starlight36/yar-client-java
https://github.com/javabits/yar

Go:
https://github.com/weixinhost/yar.go

Javascript:
https://github.com/weixinhost/yar-javascript-client
