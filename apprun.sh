#!/bin/sh
iexec app run 0xDBD384377BEc6d29aDf0184a68dfFd1f4d0b50BF \
      --chain goerli \
      --wallet-file user_wallet \
      --dataset 0x74A62D3A031FB2511F4F6fe6cB2ddaa0DA82b529 \
      --workerpool 0xEb6c3FA8522f2C342E94941C21d3947c099e6Da0 \
      --tag 0x0000000000000000000000000000000000000000000000000000000000000001 \
      --force \
      --watch
