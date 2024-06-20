# ChromeOS: Welcome to Estonia

> 💡 Sets up ChromeOS with all the tools needed for the e-Residency of Estonia.

This setup installs and configures the following:

- [**DigiDoc4**](https://www.id.ee/en/rubriik/using-digidoc4/): Software for signing and encrypting documents.
- **Firefox**: Browser for accessing websites that require the e-Residency card.
- System services (not used directly by users):
  - OpenSC: Required for this to work.
  - Custom service for plug-and-play card functionality.

You need to install manually:

- **Firefox extension**: Enables card access for websites. This extension operates in the background and doesn't require direct interaction.

## Installation

> 💡 If you're **upgrading** from a previous installation, please follow [these steps](https://github.com/perguth/chromeos-welcome-to-estonia/releases).

1. **First [enable Linux](https://support.google.com/chromebook/answer/9145439)**.
1. **Copy** the following commands **into the [terminal](https://support.google.com/chromebook/thread/565904)**:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/perguth/chromeos-welcome-to-estonia/main/setup.sh)"
```

3. **Install extension**: Open `Firefox` (automatically installed by the previous step) and install: \
  https://addons.mozilla.org/en-US/firefox/addon/web-eid-webextension

## Usage

### Connect the card:

Repeat these steps each time the card is reconnected:

1. Plug the smart card reader with the card into your USB port.
2. Click `Connect to Linux` in the small pop up that appears at the bottom right.

### Use the software:
- **DigiDoc4**: Use this software to sign and encrypt/decrypt documents.
- **Firefox**: Use this browser to, e.g., log into the State Portal:
  1. Open https://www.eesti.ee/en in Firefox.
  2. Click the lock icon at the top right and select "ID-card" to continue.
  3. Access your email and state-related services.
