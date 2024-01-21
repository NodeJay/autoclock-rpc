#!/bin/bash
export SOLANA_METRICS_CONFIG="host=https://metrics.solana.com:8086,db=mainnet-beta,u=mainnet-beta_write,p=password"
exec /mnt/solana/target/release/solana-validator \
--identity /home/solana/rpc_node.json \
--entrypoint entrypoint.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint2.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint3.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint4.mainnet-beta.solana.com:8001 \
--entrypoint entrypoint5.mainnet-beta.solana.com:8001 \
--rpc-port 8899 \
--dynamic-port-range 8002-8099 \
--no-port-check \
--halt-on-trusted-validators-accounts-hash-mismatch \
--gossip-port 8001 \
--no-voting \
--private-rpc \
--rpc-bind-address 0.0.0.0 \
--account-index program-id \
--wal-recovery-mode skip_any_corrupted_record \
--log /mnt/logs/solana-validator.log \
--accounts /mnt/solana-accounts \
--ledger /mnt/solana-ledger \
--snapshots /mnt/solana-snapshots \
--expected-genesis-hash 5eykt4UsFv8P8NJdTREpY1vzqKqZKvdpKuc147dw2N9d \
--limit-ledger-size 400000000 \
--rpc-send-retry-ms 500 \
--full-rpc-api \
--rpc-send-leader-count 3 \
--accounts-index-memory-limit-mb 350 \
--account-index-exclude-key kinXdEcpDQeHPEuQnqmUgtYykqKGVFq6CeVX5iAHJq6 \
--known-validator PUmpKiNnSVAZ3w4KaFX6jKSjXUNHFShGkXbERo54xjb \
--known-validator Ninja1spj6n9t5hVYgF3PdnYz2PLnkt7rvaw3firmjs \
--known-validator ChorusmmK7i1AxXeiTtQgQZhQNiXYU84ULeaYF1EH15n \
--known-validator CakcnaRDHka2gXyfbEd2d3xsvkJkqsLw2akB3zsN1D2S \
--known-validator SerGoB2ZUyi9A1uBFTRpGxxaaMtrFwbwBpRytHefSWZ \
--known-validator FLVgaCPvSGFguumN9ao188izB4K4rxSWzkHneQMtkwQJ \
--known-validator qZMH9GWnnBkx7aM1h98iKSv2Lz5N78nwNSocAxDQrbP \
--known-validator GiYSnFRrXrmkJMC54A1j3K4xT6ZMfx1NSThEe5X2WpDe \
--known-validator LA1NEzryoih6CQW3gwQqJQffK2mKgnXcjSQZSRpM3wc \
--known-validator Certusm1sa411sMpV9FPqU5dXAYhmmhygvxJ23S6hJ24 \
--known-validator 9bkyxgYxRrysC1ijd6iByp9idn112CnYTw243fdH2Uvr \
--known-validator 12ashmTiFStQ8RGUpi1BTCinJakVyDKWjRL6SWhnbxbT \
--known-validator FdaysQ2BZWUGBy8nqFgiudnrhzJp4xChQ8B4zJdc2JZB
