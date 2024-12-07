<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact | Placement Portal</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: white;
            position: relative;
            background-color: #003366; /* Blue background */
        }

        /* Background image with blur effect */
        body::before {
            content: '';    
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("images/contact-bg.jpg") no-repeat center center fixed;
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
            background-color: #ffcc00;
            color: black;
            border: 2px solid white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            text-align: center;
        }

        .navbar .button:hover {
            background-color: black;
            color: #ffcc00;
            border: 2px solid #ffcc00;
        }

        /* Contact Content Section */
        .contact-container {
            max-width: 1200px;
            margin: 120px auto;
            padding: 30px;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(255, 235, 59, 0.3);
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
            color: #ffcc00;
            font-size: 3rem;
            text-shadow: 2px 2px 5px rgba(255, 255, 255, 0.1);
            margin-bottom: 20px;
        }

        /* Contact Info Section */
        .contact-info {
            margin-top: 50px;
            text-align: center;
        }

        .contact-info h2 {
            font-size: 2rem;
            color: #ffcc00;
            margin-bottom: 10px;
        }

        .contact-info p {
            font-size: 1.2rem;
            line-height: 1.8;
        }

        /* Feedback Form */
        .feedback-form {
            margin-top: 50px;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(255, 235, 59, 0.3);
        }

        .feedback-form label {
            font-size: 1.1rem;
            color: #ffcc00;
            margin-bottom: 8px;
            display: block;
        }

        .feedback-form input,
        .feedback-form textarea,
        .feedback-form select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        .feedback-form button {
            background-color: #ffcc00;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .feedback-form button:hover {
            background-color: #003366;
            color: #ffcc00;
        }

        /* Contact Details Section */
        .contact-details {
            margin-top: 30px;
            text-align: center;
        }

        .contact-details h3 {
            color: #ffcc00;
            font-size: 1.8rem;
        }

        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            padding: 10px;
            text-align: center;
            background-color: #111;
            color: white;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

    <!-- Contact Content Section -->
    <div class="contact-container">
        <h1>Contact Us</h1>

        <!-- Contact Information Section -->
        <div class="contact-info">
            <h2>Our Contact Information</h2>
            <p>
                For any inquiries, feel free to reach us at:<br>
                <strong>Email:</strong> info@placementportal.com<br>
                <strong>Phone:</strong> +1 234 567 890<br>
                <strong>Address:</strong> 123 Placement Road, City, Country.
            </p>
        </div>

        <!-- Feedback Form Section -->
        <div class="feedback-form">
            <h2>Feedback Form</h2>
            <form action="#" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="feedback">Your Feedback:</label>
                <textarea id="feedback" name="feedback" rows="4" required></textarea>

                <label for="course">Course of Enquiry:</label>
                <select id="course" name="course">
                    <option value="computer-science">Computer Science</option>
                    <option value="mechanical-engineering">Mechanical Engineering</option>
                    <option value="electrical-engineering">Electrical Engineering</option>
                    <option value="civil-engineering">Civil Engineering</option>
                    <option value="business">Business</option>
                </select>

                <button type="submit">Submit Feedback</button>
            </form>
        </div>

        <!-- Contact Details Section -->
        <div class="contact-details">
            <h3>Meet Our Team</h3>

            <div>
                <h3>Dwight Schrute - Quality Manager</h3>
                <p><strong>Email:</strong> dwight@placementportal.com</p>
                <p><strong>Phone:</strong> +1 234 567 891</p>
            </div>

            <div>
                <h3>Michael Scott - Director of Admissions</h3>
                <p><strong>Email:</strong> michael@placementportal.com</p>
                <p><strong>Phone:</strong> +1 234 567 892</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Placement Portal | All Rights Reserved</p>
    </div>

</body>
</html>
