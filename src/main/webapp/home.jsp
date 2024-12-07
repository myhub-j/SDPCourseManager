<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Time Table Management Dashboard</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: white;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;		
            background: url('/images/home.jpg') no-repeat center center fixed;
            background-size: cover;
            background-attachment: fixed;
        }

        /* Header Styling */
        header {
            background-color: rgba(0, 0, 0, 0.7);
            color: #ffcc00;
            text-align: center;
            padding: 30px;
            border-bottom: 2px solid #ffcc00;
            position: relative; /* For logout button positioning */
        }

        header h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        header p {
            font-size: 18px;
        }

        /* Logout button styling */
        .logout-button {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #ffcc00;
            color: #222;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            border: 2px solid #ffcc00;
            transition: background-color 0.3s, color 0.3s;
        }

        .logout-button:hover {
            background-color: #222;
            color: #ffcc00;
        }

        /* Main content styling */
        .container {
            flex: 1;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
            margin: 80px;
        }

        /* Button Styling */
        .dashboard-button {
            display: block;
            background-color: #222;
            color: #ffcc00;
            padding: 15px;
            text-align: center;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px; /* Reduced font size */
            border: 2px solid #ffcc00;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
            font-weight: bold;
        }

        .dashboard-button:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            background-color: #ffcc00;
            color: #222;
        }

        /* Footer Styling */
        .footer {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 14px;
            margin-top: auto;
        }

        /* Link Styling */
        .home-links a {
            color: #ffcc00;
            font-size: 16px;
            text-decoration: none;
            padding: 5px 10px;
            transition: color 0.3s;
        }

        .home-links a:hover {
            color: #ff9900;
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            header h1 {
                font-size: 28px;
            }

            header p {
                font-size: 16px;
            }

            .container {
                margin: 20px;
            }

            .dashboard-button {
                font-size: 14px; /* Smaller font size for buttons */
                padding: 12px; /* Reduced padding */
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>STUDENT DASHBOARD</h1>
        <!-- Logout button -->
        <a href="hello.jsp" class="logout-button">Logout</a>
    </header>

    <!-- Main Content Section -->
    <div class="container">
        <!-- Buttons for Timetable Management System -->
        <a href="Subject.jsp" class="dashboard-button">Subjects List</a>
        <a href="table.html" class="dashboard-button">View Timetable</a>
        <a href="userProfile.jsp" class="dashboard-button">User Profile</a>
        <a href="faculty.jsp" class="dashboard-button">Faculty List</a>
        <a href="feedback.jsp" class="dashboard-button">Feedback</a>
        <a href="email.jsp" class="dashboard-button">Email</a>
        <a href="grades.jsp" class="dashboard-button">Grades</a>
        <a href="Certification.jsp" class="dashboard-button">Certification Course</a>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; TIME TABLE MANAGEMENT</p>
    </div>

</body>
</html>
