# Chrome OS Welcome to Estonia
Sets up Chrome OS with all the tools needed for the e-Residency of Estonia

It installs and configures:

- **open-eid** The system programm that connects the smart card reader. You never need to use it directly
- **Firefox** The smart card reader works only with Firefox
- **Extensions** The required Firefox extensions. You never need to use them directly
- **Web ID** The software you can use to sign and encrypt documents

## Usage

1. **First [`🛠️ enable Linux`](https://support.google.com/chromebook/answer/9145439)**
1. **Copy** the following commands into **[`🔣 termina`](https://support.google.com/chromebook/thread/565904)**:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/perguth/chromeos-welcome-to-estonia/main/setup.sh)"
```

3. Open Firefox and install https://addons.mozilla.org/en-US/firefox/addon/web-eid-webextension

You can now use Firefox to e.g. log into the estonian online portal here:

- https://www.eesti.ee/en

There you'll find your email and state related services. Enjoy ✌️
