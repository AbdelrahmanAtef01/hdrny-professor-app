# HDRNI – Flutter App

A mobile application designed for professors at **Shoubra Faculty of Engineering** to automate student attendance, courses system, schedules, execuses and grading efficiently.

## 📌 Overview
This is the professor-side application of the HDRNI system. It works in sync with the **Student App**, using a shared PostgreSQL backend. Professors can generate attendance QR codes, manage student grades, and handle absence requests with ease.

## Features
- Generate QR codes for real-time attendance.
- Validate student attendance with GPS integration.
- Review and approve/reject absence excuses.
- Record and manage grades.
- Monitor class performance and student progress.

## Tech Stack
- **Frontend:** Flutter (Dart)
- **Backend:** PostgreSQL with relational integrity
- **Integrations:** GPS, Camera, QR Scanner

## Repository Structure
- `student-app/` → Flutter app for students *(link placeholder below)*
- `professor-app/` → Flutter app for professors 

## Repositories
- [Student App](https://github.com/AbdelrahmanAtef01/hdrny_student_app)
- [Professor App](https://github.com/AbdelrahmanAtef01/hdrny-professor-app)

## Installation Steps (for contributors)
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/student-app.git
   cd student-app
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app on your device or emulator:
   ```bash
   flutter run
   ```

## 📸 Walkthrough
```
➡️ Open the app
➡️ Login with your professor ID
➡️ Generate a QR code for your lecture
➡️ Students scan the QR code to mark attendance
➡️ Validate presence with GPS
➡️ Review absence requests and update grades
➡️ Track class and student performance
```

![Demo](assets/Hdrny.png)

## Benchmarks
Compared against market tools, **HDRNI** introduces academic-specific customizations tailored to our faculty and student needs.

## Contributors
This project was developed collaboratively as part of the academic coursework at **Shoubra Faculty of Engineering**.

---

📢 Feel free to fork, contribute, or suggest improvements!
