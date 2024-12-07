<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Download Placement Brochure</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #121212;
            color: white;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        /* Header Section */
        header {
            background-color: #222;
            color: red;
            text-align: center;
            padding: 40px;
            border-bottom: 4px solid red;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            animation: fadeIn 1s ease-out;
        }

        header h1 {
            font-size: 40px;
            font-weight: bold;
            margin: 0;
            text-transform: uppercase;
        }

        header p {
            font-size: 18px;
            margin-top: 10px;
        }

        /* Main content section */
        .content {
            padding: 40px;
            background-color: #1a1a1a;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            animation: slideIn 1s ease-out;
        }

        .content h2 {
            font-size: 30px;
            color: red;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        /* Download Button */
        .download-btn {
            background-color: red;
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            display: inline-block;
            text-transform: uppercase;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
        }

        .download-btn:hover {
            background-color: #cc0000;
            transform: scale(1.05);
        }

        .download-btn:active {
            background-color: #b30000;
        }

        /* Footer Section */
        .footer {
            background-color: #222;
            color: red;
            text-align: center;
            padding: 15px;
            position: fixed;
            width: 100%;
            bottom: 0;
            box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.5);
        }

        .footer p {
            margin: 0;
            font-size: 14px;
        }

        /* Keyframe animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .content {
                padding: 20px;
            }

            header h1 {
                font-size: 30px;
            }

            .content h2 {
                font-size: 25px;
            }

            .download-btn {
                padding: 12px 25px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Download Placement Brochure</h1>
        <p>Get the latest placement information in one click. Download the brochure now!</p>
    </header>

    <!-- Main Content Section -->
    <div class="content">
        <h2>Placement Brochure</h2>
        <p>The Placement Brochure contains important information about upcoming placement opportunities, deadlines, and detailed company profiles. Download it now to stay updated.</p>
        
        <!-- Download Button -->
        <a href="/downloads/placement_brochure.pdf" class="download-btn" download>Download Brochure</a>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 Your Institution. All rights reserved.</p>
    </div>

</body>
</html>
