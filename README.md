# iexec-private-data-app

Manage emailing without access to the email address


## Prerequisites

 * iExec installation
 * good iExec infrastructure understanding
 * need a Mailjet account, this app can be easily modified to support other email service provider.

## Build

The Dataset filename is data.json, and it is hard coded.

```
sh build.sh
```

## Run the app locally

Create dataset file in root 

### **`data.json`**
```
{
    "email": "aaa@bbb.com",
    "api_key": "your_mailchimp_api_key",
    "api_secret": "your_mailchimp_api_secret"
}
```

Test the app (the python code) locally

```
sh test.sh
```

## App run script


### **apprun.sh**
```
iexec app run 0xDBD384377BEc6d29aDf0184a68dfFd1f4d0b50BF \
      --chain goerli \
      --wallet-file user_wallet \
      --dataset 0x74A62D3A031FB2511F4F6fe6cB2ddaa0DA82b529 \
      --workerpool 0xEb6c3FA8522f2C342E94941C21d3947c099e6Da0 \
      --tag 0x0000000000000000000000000000000000000000000000000000000000000001 \
      --force \
      --watch
```


```
./apprun.sh
```
