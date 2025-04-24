# Replicate Valkey Deployment

Helm deployment that handles the following setup

1. Automatically handles standup of Sentinels with Quorum
2. For new Valkey master/replica setups, will automatically register with Sentinels
    1. For existing master/replicate setups, will rejoin clusters

## NOTES
* When deleting Valkey pairs, manual removal from the Valkey instances will need to be performed.
  * for each sentinel `SENTINEL REMOVE <valkey-server-pair-name>`, where `<valkey-server-pair-name>` is (for example) "file-streaming-api"
