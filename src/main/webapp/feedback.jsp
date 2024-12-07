<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form - Time Table Management</title>
    <style>
        body {
            background-color: #222;
            color: #fff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        h1 {
            text-align: center;
            color: #f1c40f;
            font-size: 3.5em;
            margin-top: 50px;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6);
        }

        .container {
            width: 60%;
            margin: 50px auto;
            background-color: #333;
            padding: 40px;
            border-radius: 15px;
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

        .form-group input, .form-group select, .form-group textarea {
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

        .form-group input:focus, .form-group select:focus, .form-group textarea:focus {
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

        .tooltip {
            position: absolute;
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            padding: 5px;
            border-radius: 5px;
            font-size: 14px;
            display: none;
        }

        .form-group input:focus ~ .tooltip,
        .form-group select:focus ~ .tooltip,
        .form-group textarea:focus ~ .tooltip {
            display: block;
        }

        @media (max-width: 768px) {
            .container {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            .container {
                width: 90%;
            }
        }

    </style>
</head>
<body>

    <h1>Feedback Form - Time Table Management</h1>

    <div class="container">
        <form action="submit_feedback.php" method="POST">
            <div class="form-group">
                <label for="studentName">Full Name</label>
                <input type="text" id="studentName" name="studentName" required placeholder="Enter your full name">
                <div class="tooltip">Please enter your complete name.</div>
            </div>

            <div class="form-group">
                <label for="studentEmail">Email Address</label>
                <input type="email" id="studentEmail" name="studentEmail" required placeholder="Enter your email">
                <div class="tooltip">Enter a valid email address.</div>
            </div>

            <div class="form-group">
                <label for="course">Course</label>
                <input type="text" id="course" name="course" required placeholder="Enter your course name">
                <div class="tooltip">Mention your enrolled course name.</div>
            </div>

            <div class="form-group">
                <label for="feedback">Feedback</label>
                <textarea id="feedback" name="feedback" required placeholder="Share your feedback on the time table management system..."></textarea>
                <div class="tooltip">Provide detailed feedback on your experience.</div>
            </div>

            <div class="form-group">
                <label for="rating">Rating</label>
                <select id="rating" name="rating" required>
                    <option value="5">5 - Excellent</option>
                    <option value="4">4 - Good</option>
                    <option value="3">3 - Average</option>
                    <option value="2">2 - Below Average</option>
                    <option value="1">1 - Poor</option>
                </select>
                <div class="tooltip">Rate the time table management system.</div>
            </div>

            <div class="form-group">
                <label for="improvement">Suggestions for Improvement</label>
                <textarea id="improvement" name="improvement" placeholder="Your suggestions for improving the timetable system (optional)..."></textarea>
                <div class="tooltip">Provide any suggestions to improve the system.</div>
            </div>

            <button type="submit" class="submit-btn">Submit Feedback</button>
        </form>
    </div>

   

</body>
</html>
