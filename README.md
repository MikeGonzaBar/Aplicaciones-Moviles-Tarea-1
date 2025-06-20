# Mc Flutter

A Flutter mobile application that displays an interactive developer profile card with contact information and action buttons.

## Features

- **Profile Display**: Shows developer information including name, title, and contact details
- **Interactive Buttons**: Four interactive action buttons with visual feedback:
  - **Person Icon**: Join a club with other people
  - **Timer Icon**: Countdown to event (31 days)
  - **Android Phone Icon**: Call number 4155550198
  - **iPhone Icon**: Call mobile number 3317865113
- **Visual Feedback**: Buttons change color (indigo) when pressed and show snackbar messages
- **Responsive Design**: Clean, bordered layout with proper spacing

## Getting Started

### Prerequisites

- Flutter SDK (version 2.17.6 or higher)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or physical device

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd Aplicaciones-Moviles-Tarea-1
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart          # Application entry point
└── home_page.dart     # Main profile page with interactive elements
```

## Dependencies

- `flutter`: Flutter SDK
- `cupertino_icons: ^1.0.2`: iOS-style icons
- `flutter_lints: ^2.0.0`: Code linting rules

## Development

This project was created as part of a mobile applications course assignment. It demonstrates basic Flutter concepts including:

- StatefulWidget usage
- Interactive UI elements
- SnackBar notifications
- Custom styling and layout
- Icon state management

## License

This project is for educational purposes.

## Contact

For questions or contributions, please contact the development team.
