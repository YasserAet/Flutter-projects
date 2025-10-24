Catalogue_app - TP3 Flutter Navigation et routes

This small Flutter app demonstrates navigation between two screens and passing data (Product) from the home list to a details page.

Files:

- lib/main.dart: app entry point
- lib/home_page.dart: displays a list of products
- lib/details_page.dart: displays details for a selected product
- lib/models/product.dart: Product model

Run on Windows PowerShell (requirements: Flutter SDK installed and web enabled):

1. Open PowerShell and go to the project folder:

   cd "c:\Users\HP\Desktop\tp3 flutter\catalogue_app"

2. Get dependencies:

   flutter pub get

3. Run in Chrome (web):

   flutter run -d chrome

Notes:

- If you don't have a full Flutter project scaffold (created by `flutter create`), you can instead create a new Flutter project and replace the `lib/` and `pubspec.yaml` contents with these files.
- If `flutter run -d chrome` fails, ensure web support is enabled: `flutter config --enable-web` and then restart your IDE/terminal.
