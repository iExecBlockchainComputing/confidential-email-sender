# Confidential Email Sender App

Manage emailing with no access to the email address of the receiver.

## Prerequisites

 * iExec installation
 * good iExec infrastructure understanding
 * need a Mailjet account, this app can be easily modified to support other email service provider.

## Build

The Dataset filename is data.json, and it is hard coded.

```
.build
```

## Run the app locally

Create dataset file in private-data/

### **`data.json`**
```
{
    "email": "alice@domain.com",
    "api_key": "your_mailjet_api_key",
    "api_secret": "your_mailjet_api_secret"
}
```

Test the app locally

```
./run
```

## App run script


### **apprun.sh**

First encrypt data.json, deploy dataset and push dataset secret then

```
./iexec-run
```
