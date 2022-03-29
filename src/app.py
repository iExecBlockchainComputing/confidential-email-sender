import os
import sys
import json
from mailjet_rest import Client

iexec_out = os.environ['IEXEC_OUT']
iexec_in = os.environ['IEXEC_IN']
dataset_filename = os.environ['IEXEC_DATASET_FILENAME']

dataset_path = iexec_in + '/' + dataset_filename

result = {"status_code": 0}
dataset_exists = False

# Eventually use some confidential assets
if os.path.exists(dataset_path):
    dataset_exists = True
    with open(dataset_path, 'r') as json_file:
        secret = json.load(json_file)

    mailjet = Client(auth=(secret["api_key"], secret["api_secret"]), version='v3.1')

    htmlPart = open("/app/content.html", "r").read()

    data = {
      'Messages': [
        {
          "From": {
            "Email": "confidential-email-sender-app@iex.ec",
            "Name": "Confidential Email Sender"
          },
          "To": [
            {
              "Email": secret["email"] ,
            }
          ],
          "Subject": "👀 Hey there, it’s iExec!",
          "HTMLPart": htmlPart,
          "CustomID": "AppGettingStartedTest"
        }
      ]
    }
    result = mailjet.send.create(data=data)

# Declare everything is computed
with open(iexec_out + '/computed.json', 'w+') as f:
    json.dump({ "deterministic-output-path" : iexec_out + '/result.txt' }, f)

print ("debug :" + str(result.json()))

with open(iexec_out + '/result.txt', 'w+') as f:
    if not dataset_exists or not str(result.status_code) == "200":
        f.write("email send failed ")

    else:
        f.write("email send successfully")
