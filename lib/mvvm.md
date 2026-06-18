# MVVM Architecture for counter

```
lib/
│
├── main.dart
└── feature/
    ├── counter/
    │   ├── models/          # Data Models (Blueprints)
    │   │   └── counter_model.dart 
    │   │
    │   ├── views/           # UI Only (Widgets and Pages)
    │   │   ├── counter_page.dart
    │   │   └── widgets/     # Small sub-widgets used in counter page
    │   │
    │   └── viewmodels/      # State Management and Business Logic
    │       └── counter_viewmodel.dart
```