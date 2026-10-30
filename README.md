# 🚇 TVM Smart Ticketing System

A Ticket Vending Machine (TVM) desktop application for purchasing metro and bus tickets, built with C# Windows Forms and MSSQL Server.

## 📋 Project Information

| | |
|---|---|
| **Course** | Software Engineering (CNPM) |
| **Semester** | HK1 2026–2027 |
| **University** | Ton Duc Thang University |

### Team Members

| Student ID | Name | Role |
|---|---|---|
| 523C0021 | Hua Thuc Nhi | Report & UML Diagrams |
| 523C0007 | Nguyen Minh Duc | Source Code & Database |
| 523K0043 | Tran Nhat Gia Huy | UI/UX Design & Architecture |

## 🛠️ Tech Stack

- **Language:** C# (.NET Framework 4.8)
- **UI Framework:** Windows Forms (WinForms)
- **Database:** Microsoft SQL Server (LocalDB/SQLEXPRESS)
- **Data Access:** ADO.NET (SqlConnection, SqlCommand)
- **Architecture:** MVC Pattern
- **IDE:** Visual Studio 2022

## 📁 Project Structure

```
TicketVendorMachine/
├── TicketVendor.sln            # Solution file
├── TicketVendor.csproj         # Project file
├── Program.cs                  # Application entry point
├── TicketForm.cs               # Main form — ticket purchasing logic
├── TicketForm.Designer.cs      # Form UI layout (auto-generated)
├── TicketForm.resx             # Form resources
├── App.config                  # Connection string configuration
├── LabDB.sql                   # Database setup script
└── Properties/
    ├── AssemblyInfo.cs
    ├── Resources.Designer.cs
    ├── Resources.resx
    ├── Settings.Designer.cs
    └── Settings.settings
```

## 🗄️ Database Schema

| Table | Description |
|---|---|
| **Destinations** | Available stations/stops (Id, Name, Price) |
| **Transactions** | Payment records (DestinationId, CardNumber, Amount, TransactionDate) |
| **Tickets** | Issued tickets (TransactionId, TicketCode, IssueDate) |

## 🚀 How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/Bontori1987/ticketVendors
   ```

2. **Set up the database**
   - Open SQL Server Management Studio (SSMS)
   - Connect to `your_database_name`
   - Create a new database named `LabDB`
   - Run `LabDB.sql` to create tables and seed data

3. **Open and run the project**
   - Open `TicketVendor.sln` in Visual Studio 2022
   - Build the solution (`Ctrl+Shift+B`)
   - Press `F5` to run

## ✨ Features

- Select destination station from a dropdown list
- View ticket price based on selected destination
- Enter credit card number for payment
- Process payment and generate unique ticket code
- Display transaction confirmation with ticket details
- Support for multiple payment methods (Credit Card, Digital Wallet via QR)

## 📊 UML Diagrams

The following UML diagrams are documented in the report:
- Use Case Diagram (UC0 Overview, UC2 Select Payment)
- Activity Diagrams (UC1 Buy a Ticket, UC2 Select a Payment)
- Sequence Diagrams (UC1, UC2)
- State Chart Diagram
- Class Diagram
- Architecture Design Diagram (MVC)
- Deployment Diagram
