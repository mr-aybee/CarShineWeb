
# CarShine Web Application

This is a web application for CarShine, a car wash and detailing service. It consists of a web front-end and a backend service.

## Prerequisites

*   .NET Framework 4.6 or higher
*   Microsoft SQL Server

## Setup

### 1. Database Setup

1.  **Create the Database:**
    *   Open SQL Server Management Studio (SSMS).
    *   Connect to your database engine.
    *   Right-click on "Databases" and select "New Database".
    *   Enter "CarShine" as the database name and click "OK".

2.  **Run the Initialization Script:**
    *   Open the `initial.sql` file in SSMS.
    *   Make sure the "CarShine" database is selected from the available databases dropdown.
    *   Execute the script. This will create the necessary tables and stored procedures.

### 2. Configure Connection String

1.  **Open `Web.config`:**
    *   Locate the `Web.config` file in the `CarShineWeb` project.
2.  **Update Connection String:**
    *   Find the `<connectionStrings>` section.
    *   Modify the `dBCarShine` connection string to point to your SQL Server instance and the `CarShine` database. You may need to update the `Server`, `Database`, `User ID`, and `Password` attributes.

### 3. Running the Application

1.  **Open the Solution:**
    *   Open `CarShineWeb.sln` in Visual Studio.
2.  **Set Startup Projects:**
    *   In the Solution Explorer, right-click the solution and choose "Set Startup Projects...".
    *   Select "Multiple startup projects".
    *   Set both `CarShine.Web` and `CarShine.Services` to "Start".
3.  **Run the Application:**
    *   Press F5 or click the "Start" button in Visual Studio to launch the application.

This will start both the web application and the backend service. You can now access the application in your web browser.

## Repository architecture

- `CarShineWeb/` — web application.
- `CarShineServices/` — backend service.
- `initial.sql` — database initialization script.

## Maintenance and deployment

This is a historical .NET Framework application. Build and deployment have not been independently verified. Use a disposable SQL Server database for evaluation, keep connection credentials out of source control, and review the schema script before executing it.
