# 🚀 Flutter Counter App - Riverpod + MVVM

A simple Flutter Counter Application built to practice **MVVM Architecture** and **Riverpod State Management**.

This project demonstrates how to separate UI from business logic using the MVVM pattern while managing state using Riverpod's modern `NotifierProvider`.

---

## 📚 Learning Objectives

This project was built to understand:

* MVVM Architecture
* Riverpod State Management
* ProviderScope
* ConsumerWidget
* Notifier
* NotifierProvider
* `ref.watch()`
* `ref.read()`
* Separation of Concerns
* Clean Project Structure

---

## 🏗️ Project Structure

```text
lib/
│
├── main.dart
│
└── feature/
    └── counter/
        │
        ├── models/
        │   └── counter_model.dart
        │
        ├── views/
        │   ├── counter_page.dart
        │   └── widgets/
        │
        └── viewmodels/
            └── counter_viewmodel.dart
```

---

## 📖 MVVM Architecture

### Model

The Model represents the application's data layer.

```text
models/
```

Contains data structures and entities used by the application.

---

### View

The View is responsible only for displaying the UI.

```text
views/
```

Responsibilities:

* Display data
* Capture user interactions
* Forward actions to the ViewModel

The View should not contain business logic.

---

### ViewModel

The ViewModel manages state and business logic.

```text
viewmodels/
```

Responsibilities:

* Manage counter state
* Increment counter
* Decrement counter
* Reset counter
* Notify the UI when state changes

---

## 🔄 Application Flow

```text
User Action
     │
     ▼
CounterPage (View)
     │
     ▼
CounterViewModel
     │
     ▼
State Updated
     │
     ▼
Riverpod Provider Updates
     │
     ▼
UI Rebuilds Automatically
```

---

## 🛠️ Riverpod Implementation

### ProviderScope Setup

```dart
void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
```

`ProviderScope` is the root container that enables Riverpod throughout the application.

---

### ViewModel

```dart
class CounterViewModel extends Notifier<int> {

  @override
  int build() => 0;

  void increment() => state++;

  void decrement() => state--;

  void reset() => state = 0;
}
```

---

### Provider

```dart
final counterViewModelProvider =
    NotifierProvider<CounterViewModel, int>(() {
  return CounterViewModel();
});
```

---

### Listening to State

```dart
final count =
    ref.watch(counterViewModelProvider);
```

The widget automatically rebuilds whenever the counter value changes.

---

### Calling ViewModel Methods

```dart
final viewModel =
    ref.read(counterViewModelProvider.notifier);
```

Used for executing actions without listening for state updates.

---

## ✨ Features

* ➕ Increment Counter
* ➖ Decrement Counter
* 🔄 Reset Counter
* Riverpod State Management
* MVVM Architecture
* Clean Folder Structure
* Automatic UI Updates

---

## 🖥️ Screens

### Dashboard Screen

Entry point of the application.

Features:

* Simple navigation to Counter Page

---

### Counter Screen

Features:

* Display current counter value
* Increment button
* Decrement button
* Reset button

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter

  flutter_riverpod: ^2.6.1
```

## 🎯 Key Concepts Practiced

### Riverpod

* ProviderScope
* ConsumerWidget
* Notifier
* NotifierProvider
* State Watching
* State Updates

### MVVM

* Separation of UI and Logic
* Single Responsibility Principle
* Maintainable Project Structure

---

## 👨‍💻 Author

**Shashi Singh**

Currently learning Flutter Development with a focus on scalable architecture, clean code practices, and industry-standard application development.

---

⭐ This project serves as a foundational step toward building production-ready Flutter applications using modern architecture patterns and state management solutions.
