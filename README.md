# HRMS - Smart Attendance System

A modern Human Resource Management System focused on smart attendance tracking with real-time location-based check-in/check-out functionality.

## 🚀 Features

### Employee Self-Service
- **Smart Check-In/Out**: Location-based attendance marking with real-time tracking
- **Live Clock**: Real-time display of current time and date
- **Working Hours Tracker**: Automatic calculation of daily working hours
- **Attendance History**: Comprehensive view of past attendance records
- **Monthly Statistics**: Visual summary of present, late, and absent days

### Attendance Management
- Real-time attendance tracking
- Geolocation verification for check-in/out
- Automatic working hours calculation
- Status indicators (Present, Late, Absent)
- Monthly attendance summary with statistics

### User Profile
- Personal information management
- Leave balance tracking
- Document access
- Work schedule overview
- Notification preferences

## 📱 Tech Stack

### Frontend (hrmsfront)
- **Framework**: Flutter
- **Language**: Dart
- **UI Components**: Material Design
- **State Management**: [Provider/Bloc/Riverpod - specify your choice]
- **Location Services**: Geolocator package
- **HTTP Client**: Dio/HTTP package

### Backend (hrmsback)
- **Runtime**: Node.js
- **Framework**: Express.js
- **Language**: JavaScript
- **Database**: [MongoDB/PostgreSQL/MySQL - specify your choice]
- **Authentication**: JWT (JSON Web Tokens)
- **API Documentation**: Swagger/OpenAPI

## 🛠️ Installation

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK (>=2.17.0)
- Node.js (>=16.0.0)
- npm or yarn
- [Database system] installed and running

### Backend Setup

```bash
# Navigate to backend directory
cd hrmsback

# Install dependencies
npm install

# Configure environment variables
cp .env.example .env
# Edit .env with your configuration

# Run database migrations
npm run migrate

# Start the server
npm run dev
```

### Frontend Setup

```bash
# Navigate to frontend directory
cd hrmsfront

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## 📝 Configuration

### Backend Environment Variables (.env)

```env
PORT=5000
DATABASE_URL=your_database_connection_string
JWT_SECRET=your_jwt_secret_key
JWT_EXPIRATION=24h
NODE_ENV=development
```

### Frontend Configuration

Update `lib/config/app_config.dart` with your API endpoint:

```dart
class AppConfig {
  static const String apiBaseUrl = 'http://localhost:5000/api';
  static const String websocketUrl = 'ws://localhost:5000';
}
```

## 🎯 Usage


1. **Login**: Use your employee credentials to access the system
2. **Check In**: 
   - Open the app at your work location
   - Tap the "Check In" button on the home screen
   - Allow location access when prompted
3. **View Attendance**: 
   - Navigate to the Attendance tab
   - View your daily records and monthly statistics
4. **Check Out**: 
   - Tap the "Check Out" button when leaving work
   - Your working hours will be automatically calculated


## 📊 Features Roadmap

- [ ] Biometric authentication
- [ ] Shift management
- [ ] Leave application system
- [ ] Payroll integration
- [ ] Real-time notifications
- [ ] Team attendance dashboard
- [ ] Offline mode support
- [ ] Multi-language support

## Screenshots

<img width="411" height="838" alt="image" src="https://github.com/user-attachments/assets/7df80509-56e2-47db-b94c-8ea5e16f62a6" />

<img width="409" height="818" alt="image" src="https://github.com/user-attachments/assets/e4685cf9-e10f-4248-b684-99acf7e80c88" />

<img width="413" height="819" alt="image" src="https://github.com/user-attachments/assets/2456bac8-f1df-47a1-bd6a-07f484463c0d" />



