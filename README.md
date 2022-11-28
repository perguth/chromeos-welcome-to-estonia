# Chrome OS: Welcome to Estonia
Sets up Chrome OS with all the tools needed for the e-Residency of Estonia

It installs and configures:

- **open-eid** - The system programm that connects the smart card reader. You never need to use it directly
- **Firefox** - A little less chaos using Firefox as you don't end up with two Chrome browsers on you system
- [**DigiDoc4**](https://www.id.ee/en/rubriik/using-digidoc4/) - The software you can use to sign and encrypt documents

You need to install manually:

- **Firefox extension** - The required Firefox extensions. You never need to use them directly

## Installation

1. **First [`🛠️ enable Linux`](https://support.google.com/chromebook/answer/9145439)**
1. **Copy** the following commands into **[`🔣 termina`](https://support.google.com/chromebook/thread/565904)**:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/perguth/chromeos-welcome-to-estonia/main/setup.sh)"
```

3. **Install extension** Open Firefox and install:
  - https://addons.mozilla.org/en-US/firefox/addon/web-eid-webextension

You can try to get it to work (yes, it will eventually):

I most reliably got it to work by shutting down Linux, plugging the smartcard reader and smardcard in, clicking "Connect to Linux" in the Chrome OS popup and then starting Linux. Sometimes I needed to repeat that or even restart Chrome OS. Last time when it refused to work I also tried `sudo service pcscd restart` but still have no clue how to get it to work without repeatedly trying.

## Usage

1. Plug the smart card reader with the card into your USB port
2. Click "connect to linux" in the small pop up that appears bottom right

You can now start `DigiDoc4` like any other program and use it to sign and encrypt/decrypt documents.

You can now use `Firefox` to e.g. log into the estonian online portal here:

- https://www.eesti.ee/en (click the lock top right and then continue using "ID-card")

There you'll find your email and state related services.
