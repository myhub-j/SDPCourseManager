<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Time Table Management</title>
    <style>
        body {
            background-color: #2c3e50;
            color: #ecf0f1;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        h1 {
            text-align: center;
            color: #f39c12;
            font-size: 3.5em;
            margin-top: 50px;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6);
        }

        .container {
            width: 60%;
            margin: 50px auto;
            background-color: #34495e;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.5);
            transition: all 0.3s ease;
        }

        .container:hover {
            transform: translateY(-10px);
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            font-size: 18px;
            margin-bottom: 10px;
            color: #f39c12;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #444;
            border-radius: 8px;
            font-size: 16px;
            background-color: #444;
            color: #fff;
            transition: background-color 0.3s ease;
            box-sizing: border-box;
        }

        .form-group input:focus, .form-group textarea:focus {
            background-color: #f39c12;
            color: #222;
            outline: none;
        }

        .form-group textarea {
            resize: vertical;
            min-height: 120px;
        }

        .submit-btn {
            display: block;
            width: 100%;
            background-color: #f39c12;
            color: #222;
            padding: 18px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #e67e22;
            transform: scale(1.05);
        }

        .footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            text-align: center;
            padding: 25px;
            font-size: 16px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

    <h1>Contact Us - Time Table Management</h1>

    <div class="container">
        <form id="emailForm" onsubmit="return openEmailClient()">
            <div class="form-group">
                <label for="email">Your Email Address</label>
                <input type="email" id="email" name="email" required placeholder="Enter your email" />
            </div>

            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" required placeholder="Enter the subject" />
            </div>

            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" required placeholder="Enter your message..."></textarea>
            </div>

            <button type="submit" class="submit-btn">Send Email</button>
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 Time Table Management System | All Rights Reserved</p>
    </div>

    <script>
        // This function will be called when the user submits the form
        function openEmailClient() {
            var email = document.getElementById("email").value;
            var subject = document.getElementById("subject").value;
            var message = document.getElementById("message").value;

            // Set the recipient email to 2200030867@kluniversity.in
            var recipientEmail = "2200030867@kluniversity.in";

            // Construct the mailto URL with the pre-filled recipient, subject, and body
            var mailtoURL = "mailto:" + recipientEmail + "?subject=" + encodeURIComponent(subject) +
                            "&body=" + encodeURIComponent("From: " + email + "\n\n" + message);

            // Open the email client (Outlook or default client)
            window.location.href = mailtoURL;

            // Prevent form submission
            return false;
        }
    </script>

</body>
</html>
