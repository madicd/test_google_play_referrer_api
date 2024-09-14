# Test Google Play Install Referrer API

This repository contains a sample Flutter app to demonstrate how to test the Google Play Install
Referrer API in a development environment, even if your app is not yet published on the Play Store.

## Overview

The **Google Play Install Referrer API** is used to track referral installs, which is essential for
implementing features like "Invite a Friend" in mobile apps. However, testing this feature during
development can be challenging as it relies on the app being available on the Play Store. This app
provides a workaround by temporarily changing the app’s package ID to a live app on the Play Store.

### How It Works

- Modify the app's package ID to simulate a published app.
- Use referral links that include a `referrer` query parameter to test the API.
- Verify that the referral code is successfully detected by the app.

## Setup Instructions

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) installed.
- An Android device or emulator to run the app.

### 1. Clone the Repository

```bash
git clone https://github.com/madicd/test_google_play_referrer_api.git
cd test_google_play_referrer_api
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Change the App Package ID

To test the Install Referrer API, you'll need to change the app's package ID to match an app that is
already published in the Play Store. For example, to use the Medium app:

```bash
dart run change_app_package_name:main com.medium.reader
```

Alternatively, you can change the package ID manually by editing the Android manifest files.

### 4. Run the App

Run the app on your device or emulator:

```bash
flutter run
```

## Testing the Referrer API

- Open a referral link in a browser on your test device. For example:
  https://play.google.com/store/apps/details?id=com.medium.reader&referrer=YOUR_REFERRAL_CODE
- Ensure the link opens in the Play Store app and not a browser. Do not install the app—just view
  its page in the Play Store.
- Run the Flutter app on the same device or emulator. The referral code will be displayed in the
  app.

## Notes

- This method is not officially documented and may stop working if changes are made to the Play
  Store
  or Install Referrer API.
- Refer to the official Install Referrer API documentation for more information.

## Additional Resources

- [Google Play Install Referrer API](https://developer.android.com/google/play/installreferrer)
- [Medium: How to Test the Play Store Install Referrer API](https://medium.com/@madicdjordje/how-to-test-the-play-store-install-referrer-api-78a63d59945b)
- [Medium: Implementing ‘Invite a Friend’ in Flutter: Overcoming iOS Challenges](https://medium.com/@madicdjordje/implementing-invite-a-friend-in-flutter-overcoming-ios-challenges-1bfe64983b22)