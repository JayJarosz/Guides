[ [Intro](README.md) ]--[ [Hardware](thundroid_01_hardware.md) ]--[ [Network](thundroid_02_network.md) ]--[ **Odroid** ]--[ [Bash](thundroid_04_bash.md) ]--[ [Bitcoin](thundroid_05_bitcoin.md) ]--[ [Lightning](thundroid_06_lnd.md) ]--[ [Tor](thundroid_07_tor.md) ]--[ [Web Interface](thundroid_08_webinterface.md) ]--[ [Contact](thundroid_09_contact.md) ]

--------
### Manveer's Annotated :zap:Thundroid:zap: Guide
--------

# Project Passwords

Below are the passwords you'll need to create for your Thundroid:

```
[ A ] root & admin user password
[ B ] bitcoin user password
[ C ] Bitcoin RPC password
[ D ] LND wallet password
[ E ] LND wallet seed (24 words, will be given to you by LND)
[ F ] LND seed password (optional)
```
All passwords should be at least 12 characters in length. Use a mix of lower and upper caps, numbers, and special characters. But do NOT use uncommon special characters, blanks, or quotes (‘ or “).

Note:
* Passwords [ A ], [ B ], and [ D ] you'll be using A LOT, so make them something easy to remember yet still secure.
* Password [ C ] just sits in a config file, so it's fine to generate it using LastPass (LastPass generated passwords are very secure but also very hard to type and remember).
* Password [ E ] you'll only use if you need to recover your LND wallet.

### Password Management

I recommend using [LastPass](https://lastpass.com/f?6752706) to save and manage passwords. I personally don't consider paper notes to be safe or secure if you live with other people, unless you have a safe -- but even then, ask yourself honestly if would you actually store the password sheet in the safe, or keep it somewhere more convenient but less secure?. There's also the risk of losing paper passwords in natural disasters like floods or fires. And if you're a digital nomad and don't have a permanent residence, keep in mind that passwords written in a physical document are subject to search when crossing international borders. Phones are also subject to search, but you can always uninstall your LastPass app before travelling and recover it later.

But there are those who think digital password storage is still more risky. You'll have to do your own research, balance risk and convenience based on your living situation, and then make your own decision.

I've taken a middle approach: passwords in LastPass, and wallet seed on paper (stored inside of a fire-proof safe). 

