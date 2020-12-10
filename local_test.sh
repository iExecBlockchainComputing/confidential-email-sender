DATASET="../../data.json"

ROOT=`pwd`

cd secure/src/

rm -rf iexec_in
rm -rf iexec_out
mkdir -p iexec_in
mkdir -p iexec_out


cp $DATASET iexec_in/.


IEXEC_IN=$ROOT/secure/src/iexec_in/ IEXEC_OUT=$ROOT/secure/src/iexec_out/ python3 run.py

echo "result.txt:"
cat iexec_out/result.txt
echo " "
echo "computed.json:"
cat iexec_out/computed.json

rm -rf iexec_in
rm -rf iexec_out
cd ../..
