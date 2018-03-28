--------
### Manveer's Thundroid
--------
# Bash
Since you'll be working on your Thundroid entirely via the shell prompt, it's worth decorating it a bit and installing some shortcuts.
Make these changes as `admin` user.

##Prettifying your Shell Prompt (optional)
You can redesign your shell prompt for each user by enabling color output and setting a custom prompt. 
We're going to make `admin` user be red and `bitcoin` user be yellow.

Editing shell prompt for `admin` user
* Open admin's .bashrc file inside of nano editor
  `nano /home/admin/.bashrc`

* Paste the following settings, then close and save using Ctrl+X.

'
bashrc file
'

* Reload admin's .bashrc file so that the changes take effect (or just wait until next login)
  `source /home/admin/.bashrc`


Editing shell prompt for `bitcoin` user
* Open bitcoin's .bashrc file inside of nano editor (note: since we are editing bitcoin user's .bashrc file while being logged in as admin user, we need to add 'sudo' to the command)
  `sudo nano /home/bitcoin/.bashrc`

* Paste the following settings, then close and save using Ctrl+X.

'
bashrc file
'

* Reload bitcoin's .bashrc file so that the changes take effect (or just wait until next login)
  `source /home/bitcoin/.bashrc`


### Potential Issues

BITCOIN SYMBOL
If locale is not properly set on your Ubuntu operating system, then the Bitcoin symbol (₿) will not properly display in the nano editor for .bashrc, and your shell prompt will have wrapping issues (a really long command will not continue onto a new line, but instead wrap around the first line on top of other text).

NO LOCALES SET
There's a chance that no locales are set on your system. This can be recognized by the fact that /etc/default/locale does not exist. Furthermore, the locale -a command returns the following:
`
 locale -a
 C
 C.UTF-8
 POSIX
`
To fix this, proceed as follows:

* Generate locale.
  `sudo locale-gen en_US.UTF-8`

* Set locale. This generates also the /etc/default/locale file.
  `sudo dpkg-reconfigure locales`
  `sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8`

* Restart the system, or open a new terminal.
  `sudo shutdown -r now`



## Bash Completion (optional)
There are bash completion scripts for Bitcoin Core and Lightning that allow you to complete commands by pressing the Tab key (e.g. `bitcoin-cli getblockch [Tab]` → `bitcoin-cli getblockchaininfo` )

As user `admin`:

`
# Go into your downloads directory
cd /home/admin/downloads

# Download completion script for Bitcoin Core
wget https://raw.githubusercontent.com/bitcoin/bitcoin/master/contrib/bitcoin-cli.`h-completion

# Download completion script for lnd (Lightning Labs)
wget https://raw.githubusercontent.com/lightningnetwork/lnd/master/contrib/lncli.bash-completion

# Copy bash-completion files from /downloads/ directory to /etc/ directory where they will be used
sudo cp *.bash-completion /etc/bash_completion.d/
`

Note: there are three implementations of Lightning: eclair (ACINQ), c-lightning (Blockstream), and lnd (Lightning Labs). For our Thundroid, we only installed lnd. But if you ever choose to switch to one of the other implementations, you can find their bash completion scripts here:
`
# Download completion script for eclair (ACINQ)
wget https://raw.githubusercontent.com/ACINQ/eclair/master/contrib/eclair-cli.bash-completion

# Download completion script for c-lightning (Blockstream)
wget https://raw.githubusercontent.com/ElementsProject/lightning/master/contrib/lightning-cli.bash-completion
`
If you download these other completion scripts later, remember to also copy them to the /etc/ directory!