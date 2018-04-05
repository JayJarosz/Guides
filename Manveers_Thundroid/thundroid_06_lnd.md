[ [Intro](README.md) ]--[ [Hardware](thundroid_01_hardware.md) ]--[ [Network](thundroid_02_network.md) ]--[ [Odroid](thundroid_03_odroid.md) ]--[ [Bash](thundroid_04_bash.md) ]--[ [Bitcoin](thundroid_05_bitcoin.md) ]--[ [Lightning](thundroid_06_lnd.md) ]--[ [Tor](thundroid_07_tor.md) ]--[ [Web Interface](thundroid_08_webinterface.md) ]--[ [Contact](thundroid_09_contact.md) ]

--------
### Manveer's Expanded :zap:Thundroid:zap: Guide
--------








SWITCH TO MAINNET / TESTNET

* As user "admin", stop the Bitcoin and Lightning services.
  `sudo systemctl stop lnd`
  `sudo systemctl stop bitcoind`

* Edit "bitcoin.conf" file by commenting testnet=1 out. Save and exit.
  `sudo nano /home/bitcoin/.bitcoin/bitcoin.conf`

```
# remove the following line to enable Bitcoin mainnet
#testnet=1
```

* Edit "lnd.conf" file by switching from bitcoin.testnet=1 to bitcoin.mainnet=1. Save and exit.
  `sudo nano /home/bitcoin/.lnd/lnd.conf`

```
# enable either testnet or mainnet
#bitcoin.testnet=1
bitcoin.mainnet=1
```

* Start Bitcoind and check if it's operating on mainnet
  `sudo systemctl start bitcoind`
  `systemctl status bitcoind.service`
  `sudo su bitcoin`
  `tail -f /home/bitcoin/.bitcoin/debug.log` (exit with Ctrl-C)
  `bitcoin-cli getblockchaininfo`
  `exit`

* Start LND and check its operation
  `sudo systemctl start lnd`
  `systemctl status lnd`
  `sudo journalctl -f -u lnd`

* If everything works fine, restart the RaspiBolt and check the operations again. 
  `sudo shutdown -r now`

* After the restart, LND will catch up with the whole Bitcoin blockchain, that can take up to two hours.
* Monitor the system logs: 
  `systemctl status lnd`
* Check the system load to see if your RaspiBolt is still working hard: 
  `htop`


* At this time, no wallet needs to be created, as LND does not require the Bitcoin Core wallet.
