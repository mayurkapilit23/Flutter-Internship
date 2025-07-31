## ✅ **Flutter Best Practices (Pro-Level)**

### 🔹 1. **Project Structure & Folder Organization**

Use a **clear folder structure**, like: 

**Feature-First – Scalable & Clean**

```
lib/
├── core/         # constants, themes, utils
├── data/         # API, models, repositories
├── domain/       # entities, use_cases
├── features/     # split by feature (auth/, home/, profile/)
│   ├── cubit/ or bloc/
│   ├── screens/
│   └── widgets/
├── main.dart
```

🔸 Use **feature-first structure** — it's scalable for large apps.

##### 📁 Folder Responsibilities

| Folder                    | Description                                         |
| ------------------------- | --------------------------------------------------- |
| `core/`                   | Reusable code across all features (utils, services) |
| `features/`               | Isolated, independent modules (feature-first)       |
| `data/`                   | Models, repositories, API calls                     |
| `logic/`                  | Business logic (Bloc, Cubit, Provider)              |
| `presentation (screens)/` | UI widgets, screens, components                     |
| `di.dart`                 | Set up GetIt or Riverpod providers                  |

------

### 🔹 2. **State Management (BLoC/Provider/Riverpod)**

- Pick **one state management** (like BLoC for complex apps).
- Use **Cubit for simple logic**, BLoC for event-driven logic.
- Never mix multiple unrelated state managers (e.g., don’t use Provider and BLoC randomly).

------

### 🔹 3. **Use Models, Not Raw Maps**

Bad:

```
Map<String, dynamic> user = json.decode(response.body);
```

Good:

```
UserModel user = UserModel.fromJson(json.decode(response.body));
```

✔ Use `json_serializable` to auto-generate models.

------

### 🔹 4. **Separate Logic from UI**

- Business logic in **BLoC/Cubit/Controller**
- UI should just listen and build widgets.
- Use **repository pattern** to access APIs or databases.

------

### 🔹 5. **Avoid Overusing setState**

- Use `setState` only for **local widget-specific changes**.
- For shared/global state, use **BLoC or Provider**.

------

### 🔹 6. **Responsive & Adaptive Design**

- Use `LayoutBuilder`, `MediaQuery`, or packages like `flutter_screenutil`.
- Use `% size` instead of fixed pixels where possible.

------

### 🔹 7. **Consistent Theming**

- Define all colors, fonts, text styles in `ThemeData` (light + dark).
- Don’t hardcode colors or fonts inside widgets.

------

### 🔹 8. **Use Constants & Extensions**

- Centralize constants: `AppColors`, `AppStrings`, `AppAssets`
- Create `context` extensions for padding, spacing, etc.

```
extension ContextPadding on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}
```

------

### 🔹 9. **Error Handling + Null Safety**

- Handle every possible failure: API, form, network.
- Use `try-catch`, `Either`/`Result` patterns for better error flow.
- Use `required` keyword and non-null fields in models.

------

### 🔹 10. **Code Linting & Formatting**

- Use `flutter_lints` or `very_good_analysis`.
- Format code with `flutter format .` and fix with `dart fix`.

------

### 🔹 11. **Use Widgets Wisely**

- Extract reusable widgets (`PrimaryButton`, `AppTextField`, etc.)
- Use `const` wherever possible.
- Avoid nesting too many widgets in one build method.

------

### 🔹 12. **Write Tests (Even Small Ones)**

- Unit test for logic (BLoC)
- Widget test for UI components
- Integration test for flows (e.g. login)

------

### 🔹 13. **Version Control & Git Best Practices**

- Commit often, with clean messages.
- Branch strategy: `main`, `dev`, `feature/xyz`
- Use `.gitignore` properly (avoid committing secrets or build files)

------

### 🔹 14. **Documentation & Comments**

- Document public classes and complex methods.
- Use comments to explain “why”, not “what”.

------

### 🔹 15. **Use Async Properly**

- Always `await` Futures when needed.
- Avoid blocking the UI thread.
- Use `FutureBuilder` or BLoC streams for async UI.

------

## 🧠 BONUS: What Makes You “Professional”

- You care about **readability**, **maintainability**, and **team collaboration**.
- You write **testable, modular** code.
- You document your thought process for future devs.