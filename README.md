
# Budget Buddy App

An expense tracker app built using Dart and Flutter that allows users to add, delete, and view expenses. The app supports both light and dark modes, validates user inputs, and provides a snackbar action to undo deleted expenses within 3 seconds. The theme adapts according to the system settings. Additionally, the app includes a chart bar to display expenses category-wise using the `expensebucket` utility function.

## Features

- **Add Expense**: Add expenses with a category, date, and amount.
- **Delete Expense**: Swipe in any direction to delete an expense.
- **Undo Deletion**: Snackbar action to undo deleted expenses within 3 seconds.
- **Input Validation**: Validates inputs and shows warnings for incorrect or empty fields.
- **Unique IDs**: Uses the `uuid` package to generate unique IDs for each expense.
- **Light and Dark Mode**: Supports both light and dark themes based on the system theme.
- **Category-wise Chart**: Displays expenses in a chart based on categories.

## Screenshots

![Untitled design (2)](https://github.com/saumyasinha31/Budget-Buddy/assets/103508561/b73e3aef-a96a-4ff5-84ef-70b1086cebe1)





## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/saumyasinha31/budget-buddy.git
    ```
2. **Navigate to the project directory:**
    ```bash
    cd budget-buddy
    ```
3. **Install dependencies:**
    ```bash
    flutter pub get 
    ```
4. **Run the app:**
    ```bash
    flutter run
    ```

## Usage

### Adding an Expense
1. Click the add button in the top-right corner.
2. Enter the category, date, and amount.
3. Click the 'Add' button to save the expense.

### Deleting an Expense
1. Swipe an expense item in any direction.
2. A snackbar will appear with an undo option.
3. Click 'Undo' within 3 seconds to restore the deleted expense.

### Viewing Expenses
- Expenses are listed on the home screen.
- A chart displays expenses categorized by type.

## Customizing 

The app adapts to the system theme automatically. However, you can manually set the theme by modifying the `ThemeData` in the main Dart file.

     *main.dart file* : 

      themeMode: ThemeMode.system, // system theme
      themeMode: ThemeMode.dark,   // dark theme
      themeMode: ThemeMode.light, // light theme
   


## Contributing

1. Fork the repository.
2. Create your feature branch:
    ```bash
    git checkout -b feature/YourFeature
    ```
3. Commit your changes:
    ```bash
    git commit -m 'Add some feature'
    ```
4. Push to the branch:
    ```bash
    git push origin feature/YourFeature
    ```
5. Open a pull request.
