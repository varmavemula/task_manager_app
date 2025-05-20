# flutter-crud-app-with-back4app

__Project Report:__ 

VideoLink: https://drive.google.com/file/d/1MfUA3GO9Bz324ZfYef9JW_1vzA8MN_oE/view?usp=sharing

Task Manager App – Flutter CRUD Application Using Back4App Project Overview This project is a Flutter-based Task Manager App that allows users to register, log in, manage tasks (CRUD operations), and log out securely. The app leverages Back4App (a Backend-as-a-Service platform) to handle user authentication and database operations without requiring manual backend development.

Why Use Back4App (BaaS)? Back4App simplifies backend management by providing: 

✔ User Authentication – Secure login and registration. 

✔ Cloud Database – Stores tasks and user data without needing a separate server. 

✔ Scalability – Can handle multiple users efficiently. 

✔ Real-Time Syncing – Data updates reflect instantly in the app.

Technology Stack Frontend: Flutter (Dart) Backend: Back4App (Parse Server) Database: Back4App Cloud Database Version Control: GitHub Hosting: Local development environment

App Flow & Features

User Authentication (Login & Registration) Registration: Users sign up using their email and password. 

Login: Users authenticate with their credentials, and a session is created. 

Logout: Ends the session and redirects users to the login screen.

Task Management (CRUD Operations) 

Create: Users can add tasks with a title. 

Read: Tasks are fetched from the Back4App cloud database and displayed. 

Update: Users can modify existing tasks via an edit (pencil) icon. 

Delete: Users can remove tasks using a delete button.


Logout Functionality Securely logs out the user and invalidates the session. Redirects to the login screen upon logout.

## Steps Followed in Development 

Step 1: 
Setting Up Flutter & Back4App Created a new Flutter project using flutter create task_manager_app. Configured Back4App: Signed up on Back4App and created a database. Copied the App ID & Client Key to use in the Flutter app. Installed Parse Server SDK (parse_server_sdk_flutter). 

Step 2: Implementing User Authentication Created login_screen.dart with fields for email and password. Implemented login & registration functions using ParseUser from Back4App. Handled authentication errors (e.g., incorrect password, user not found). 

Step 3: Creating Task Management (CRUD) Features Designed task_screen.dart with a ListView to display tasks. Added task creation functionality using a TextField and "Create Task" button. Implemented update functionality using a dialog box with an edit option. Added delete functionality with a trash icon for each task. Fetched tasks from Back4App using Parse Queries. 

Step 4: Implementing Logout Functionality Created a logout button in the AppBar. Implemented session invalidation using user.logout(). Redirected users to the login screen after logging out. 

Step 5: UI & Styling Adjustments Restored the original login UI after implementing logout. Re-added the update (pencil) icon and task event options. Maintained the previous task creation style.
