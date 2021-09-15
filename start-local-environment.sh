#!/usr/bin/env bash

echo "Compiling smart contract"
npx hardhat compile
if [ $? -ne 0 ]; then
  echo "compilation error"
  exit 1
fi

# if there's no local ipfs repo, initialize one
if [ ! -d "$HOME/.ipfs" ]; then
  npx ipfs init
fi

echo "Running IPFS"
run_ipfs_cmd="npx ipfs daemon"

npx concurrently -n ipfs -c blue "$run_ipfs_cmd"
