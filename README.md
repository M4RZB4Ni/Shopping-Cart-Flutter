# The Simple Shopping App - Flutter

## Overview
This is a Flutter project developed as a technical test by **Hamid (Hamlet) Marzbani**. The project focuses on **Simple list and basket mechanism**.

## Table of Contents
- [Architecture](#architecture)
- [Technologies and Libraries Used](#technologies-and-libraries-used)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
- [Running the Project](#running-the-project)

## Architecture

The Project is Based on MVVM and Clean-Architecture with consideration of SOLID principles which Includes four Module:

1. App: is responsible for infrastructure of the project include network handlers and exception handlers and base files.
2. Data: The data layer serves as a bridge between the domain layer and the presentation layer, supplying data through implementations of data sources, repositories, and models.
3. Domain: The domain layer encapsulates the core business logic and rules, acting as an intermediary between the data layer and presentation layer to ensure separation of concerns and maintain a clean, business-centric architecture.
4. Presentation: The presentation layer manages user interfaces and interactions, focusing on the visual representation of data and user experience. It relies on the domain layer for business logic and the data layer for data retrieval, fostering a clear separation of concerns in the application architecture.

## Technologies and Libraries Used

- **Flutter**: Flutter is a UI toolkit that enables the creation of natively compiled applications for mobile, web, and desktop from a single codebase.

- **[Cached Network Image](https://pub.dev/packages/cached_network_image)**: A Flutter library to load and cache network images.

- **[Flutter Dotenv](https://pub.dev/packages/flutter_dotenv)**: A library for loading environment variables from a .env file.

- **[Freezed](https://pub.dev/packages/freezed) and [Freezed Annotation](https://pub.dev/packages/freezed_annotation)**: A code generation package for unions/pattern-matching/copy/toString/equals/hashCode.

- **[Flutter Screenutil](https://pub.dev/packages/flutter_screenutil)**: A Flutter plugin to provide a simple way to set the width and height of widgets based on screen size.

- **[Get](https://pub.dev/packages/get)**: A state management, Dependency Injection library for Flutter.

- **[Internet Connection Checker](https://pub.dev/packages/internet_connection_checker)**: A library to check the internet connection status in a Flutter app.

- **[Json Annotation](https://pub.dev/packages/json_annotation) and [Json Serializable](https://pub.dev/packages/json_serializable)**: Packages for converting Dart objects to and from JSON.

- **[HTTP](https://pub.dev/packages/http)**: Flutter main package for making HTTP requests.

- **[Lottie](https://pub.dev/packages/lottie)**: A Flutter package for smoothly displaying Lottie animations.

## Getting Started

### Prerequisites

- Ensure that you have Flutter and Dart installed on your machine. [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/m4rzb4ni/communere.git

### Running the Project


1. Update the pub:

   ```bash
   flutter pub get
2. Build models with [Freezed](https://pub.dev/packages/freezed):

   ```bash
   dart run build_runner build --delete-conflicting-outputs  
3. Build the apk:

   ```bash
   flutter build apk
