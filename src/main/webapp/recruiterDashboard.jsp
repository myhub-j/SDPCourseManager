<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recruiter Dashboard</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #1C1C1C; /* Dark background */
            color: #ffffff;
            line-height: 1.6;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            margin: 0;
        }

        /* Main Container */
        .container {
            background-color: #212121; /* Darker container */
            border-radius: 12px;
            padding: 40px 60px;
            width: 60%;
            max-width: 1000px;
            box-shadow: 0 4px 25px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        /* Title */
        .title {
            font-size: 2.5rem;
            color: #E53935;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Welcome message */
        .welcome-message {
            font-size: 1.2rem;
            margin-bottom: 40px;
            color: #ddd;
        }

        /* Buttons */
        .dashboard-buttons {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 40px;
        }

        .dashboard-buttons button {
            padding: 15px 35px;
            background-color: #E53935;
            color: white;
            font-size: 18px;
            border: 2px solid transparent;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        /* Hover Effect */
        .dashboard-buttons button:hover {
            background-color: #C62828;
            transform: scale(1.05);
        }

        .dashboard-buttons button:active {
            background-color: #B71C1C;
            transform: scale(1.05);
        }

        /* Button Focus Effect */
        .dashboard-buttons button:focus {
            outline: none;
            box-shadow: 0 0 10px rgba(255, 0, 0, 0.6);
        }

        /* Footer */
        footer {
            margin-top: 40px;
            font-size: 14px;
            color: #bbb;
        }

        footer a {
            color: #E53935;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

    <div class="container">
        <div class="title">Recruiter Dashboard</div>

        <p class="welcome-message">
            Welcome, <strong>Recruiter</strong>!<br>
            Manage your recruitment process with ease. Choose an option below to get started.
        </p>

        <div class="dashboard-buttons">
            <button onclick="window.location.href='/viewCandidates.jsp'">View Candidates</button>
            <button onclick="window.location.href='/postJob.jsp'">Post a Job</button>
            <button onclick="window.location.href='/viewJobPostings.jsp'">View Job Postings</button>
            <button onclick="window.location.href='/viewApplications.jsp'">View Applications</button>
            <button onclick="window.location.href='/applicationStats.jsp'">Application Statistics</button>
            <button onclick="window.location.href='/manageProfile.jsp'">Manage Profile</button>
            <button onclick="window.location.href='/logout'">Logout</button>
        </div>

        <footer>
            <p>&copy; 2024 Your Company | <a href="/privacy">Privacy Policy</a> | <a href="/contact">Contact Us</a></p>
        </footer>
    </div>

</body>
</html>
