<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About | Timetable Management</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: white;
            position: relative;
            background-color: #003366; /* Dark blue background */
        }

        /* Background image with blur effect */
        body::before {
            content: '';    
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("images/about-bg.jpg") no-repeat center center fixed;
            background-size: cover;
            filter: blur(8px);
            z-index: -1;
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }

        .navbar a {
            text-decoration: none;
            margin: 0 10px;
        }

        .navbar .button {
            display: inline-block;
            background-color: #0099cc; /* Light blue button */
            color: white;
            border: 2px solid white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            text-align: center;
        }

        .navbar .button:hover {
            background-color: #006699; /* Darker blue on hover */
            color: #ffcc00;
            border: 2px solid #ffcc00;
        }

        /* About Content Section */
        .about-container {
            max-width: 1200px;
            margin: 120px auto;
            padding: 30px;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 123, 255, 0.3); /* Blue shadow */
            color: #fff;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        h1 {
            text-align: center;
            color: #00bfff; /* Bright blue */
            font-size: 3rem;
            text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.1);
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.8;
            color: white;
            text-align: justify;
            margin-bottom: 30px;
        }

        /* Feature Section */
        .features-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 50px;
        }

        .feature-card {
            background-color: #005577; /* Blue shade for feature cards */
            border-radius: 8px;
            padding: 20px;
            width: 45%;
            margin: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 123, 255, 0.4);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            opacity: 0.9;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 123, 255, 0.6);
            opacity: 1;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            color: #00bfff; /* Bright blue for titles */
            margin-bottom: 15px;
        }

        .feature-card p {
            font-size: 1rem;
            color: white;
            line-height: 1.6;
        }

        /* Footer */
        footer {
            text-align: center;
            background-color: #003366; /* Dark blue */
            color: white;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 0.9rem;
        }

        /* Responsive Layout */
        @media (max-width: 768px) {
            .features-container {
                flex-direction: column;
                align-items: center;
            }

            .feature-card {
                width: 80%;
            }
        }
    </style>
</head>
<body>

    <!-- About Content Section -->
    <div class="about-container">
        <h1>Timetable Management System</h1>

        <p>
            The Timetable Management System is designed to streamline the scheduling of educational courses, events, and activities. Whether you're a student or a faculty member, our platform provides an intuitive interface to view, manage, and modify your daily schedules.
        </p>

        <p>
            With the increasing complexity of academic schedules, this system helps in automating the entire process by ensuring that every schedule is up-to-date, easily accessible, and dynamically adjustable to handle changes and unforeseen events.
        </p>

        <p>
            Key features of the Timetable Management System include real-time updates, automated notifications, and the ability to integrate various types of events into a unified calendar for easy access. We strive to enhance the educational experience by eliminating the confusion surrounding scheduling conflicts and time management issues.
        </p>

        <div class="features-container">
            <!-- Feature Cards Section -->
            <div class="feature-card">
                <h3>Real-Time Updates</h3>
                <p>
                    Stay up-to-date with automatic updates on timetable changes. Whether it's a class cancellation or a new event, you will always be informed.
                </p>
            </div>
            <div class="feature-card">
                <h3>Automated Scheduling</h3>
                <p>
                    Automatically adjust schedules to prevent conflicts and ensure the smooth organization of all courses and events.
                </p>
            </div>
            <div class="feature-card">
                <h3>Mobile-Friendly Interface</h3>
                <p>
                    Access your timetable on-the-go through our responsive and mobile-optimized interface, making it easier than ever to manage your time.
                </p>
            </div>
            <div class="feature-card">
                <h3>Advanced Notifications</h3>
                <p>
                    Receive real-time notifications on schedule changes, so you never miss an important class or event.
                </p>
            </div>
        </div>
    </div>

</body>
</html>
