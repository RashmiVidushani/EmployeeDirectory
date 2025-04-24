# 👥 Employee Directory App

An iOS SwiftUI application that displays a directory of employees using a clean interface, onboarding flow, tab navigation, and API integration. This app is designed to fetch and present employee data including names, contact details, teams, and biographies, all styled in a modern and user-friendly way.

---

DEMO



https://github.com/user-attachments/assets/88f42b13-206c-437a-9815-1a87a4f16d91



## 🚀 Features

- ✅ Onboarding screen with gradient background and branding
- ✅ Tab-based navigation: Employee List & Settings
- ✅ API integration using `URLSession` to fetch employee data
- ✅ ViewModel with `@Published` properties for loading state and error handling
- ✅ Clean and responsive SwiftUI layouts
- ✅ Persistent onboarding using `@AppStorage`

---

## 📱 Screenshots

<img width="400" alt="Screenshot 2025-04-24 at 12 53 45 PM" src="https://github.com/user-attachments/assets/a761b684-f63d-41db-bb7d-188100111b4b" />

<img width="400" alt="Screenshot 2025-04-24 at 12 45 28 PM" src="https://github.com/user-attachments/assets/cb3f048d-445e-4b18-8005-a4503a53d663" />

<img width="400" alt="Screenshot 2025-04-24 at 12 45 35 PM" src="https://github.com/user-attachments/assets/d380bc04-b230-44b2-b0ec-4a9abdfb1bdb" />

<img width="400" alt="Screenshot 2025-04-24 at 12 45 49 PM" src="https://github.com/user-attachments/assets/c4bc49ba-8546-450f-b529-ec3eb46af2ec" />

<img width="400" alt="Screenshot 2025-04-24 at 12 45 56 PM" src="https://github.com/user-attachments/assets/913b562e-f7be-4ffd-9f96-3c441e716e1f" />


---

## 🧑‍💻 Technologies Used

- SwiftUI
- MVVM Architecture
- URLSession for networking
- JSON Decoding
- `@AppStorage` for state persistence
- AWS-hosted JSON API

---

## 🔄 Data Source

This app fetches data from the following sample JSON API hosted on AWS:

https://s3.amazonaws.com/sq-mobile-interview/employees.json


---

## 🛠 Setup Instructions

1. Clone the repository:

```bash
git clone https://github.com/yourusername/employee-directory-app.git


├── ContentView.swift              # Entry point, handles onboarding state
├── EmployeeDirectory_Assignment02App.swift  # Main app file with TabView
├── OnboardingView.swift          # Intro screen with branding and info
├── EmployeeViewModel.swift       # ViewModel for fetching employee data
├── Employee.swift                # Employee model and types
├── EmployeeListView.swift        # List of all employees (not shown above)
├── SettingsView.swift            # App settings screen (not shown above)


