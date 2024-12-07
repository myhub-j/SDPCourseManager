<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <style>
        /* Style your dashboard here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
        .container {
            margin: 30px;
        }
        .dashboard-button {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            margin: 10px 0;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            width: 200px;
        }
        .dashboard-button:hover {
            background-color: #45a049;
        }
        .footer {
            background-color: #222;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .home-links {
            margin: 20px;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Welcome to the Student Dashboard</h1>
        <p>Your gateway to exciting job placements and career opportunities!</p>
    </header>

    <!-- Home Page Links -->
    <div class="home-links">
        <a href="./map.html">Home Page</a><br>
        <a href="./mail.html">Mail</a><br>
    </div>

    <!-- Main Content Section -->
    <div class="container">
        <h2>What would you like to do?</h2>

        <!-- Buttons for Student Actions -->
        <div>
            <a href="/student/viewPlacements" class="dashboard-button">View Available Placements</a>
            <a href="/student/applyPlacement" class="dashboard-button">Apply for Placement</a>
            <a href="/student/viewAppliedPlacements" class="dashboard-button">View Applied Placements</a>
            <a href="/student/updateProfile" class="dashboard-button">Update Profile</a>
            <a href="/student/viewNotifications" class="dashboard-button">View Placement Notifications</a>
            <a href="/student/trackApplicationStatus" class="dashboard-button">Track Application Status</a>
            <a href="/student/downloadBrochure" class="dashboard-button">Download Placement Brochure</a>
            <a href="/student/viewJobInsights" class="dashboard-button">View Job Insights</a>
            <a href="/user/logout" class="dashboard-button">Log Out</a>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 Placement Management System | All Rights Reserved</p>
    </div>
</body>
</html>
