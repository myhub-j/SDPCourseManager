<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Faculty</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #222;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h1 {
            text-align: center;
            color: #f39c12;
            font-size: 2.5em;
            margin-top: 50px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .form-container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #333;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #f39c12;
        }

        select, input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #444;
            color: #fff;
            border: 1px solid #1abc9c;
            border-radius: 4px;
            font-size: 1em;
        }

        select:hover, input[type="submit"]:hover {
            background-color: #16a085;
        }

        input[type="submit"] {
            font-size: 1.2em;
            cursor: pointer;
            background-color: #f39c12;
            color: #222;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #f1c40f;
            transform: translateY(-5px);
        }

        input[type="submit"]:active {
            background-color: #e67e22;
            transform: translateY(0);
        }

        .back-btn {
            display: block;
            text-align: center;
            margin-top: 30px;
            padding: 12px 24px;
            background-color: #f39c12;
            color: #222;
            font-size: 1.2em;
            text-decoration: none;
            border-radius: 6px;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
            transition: background-color 0.3s;
        }

        .back-btn:hover {
            background-color: #f1c40f;
        }

        .form-group select, .form-group input[type="text"] {
            font-size: 1em;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <h1>Select Faculty to View Timetable</h1>

    <div class="form-container">
        <form action="facultyTimetable.jsp" method="get">
            <!-- Faculty Selection -->
            <div class="form-group">
                <label for="faculty">Choose Faculty:</label>
                <select name="faculty" id="faculty" required>
                    <option value="">Select</option>
                    <option value="John">Avinash</option>
                    <option value="Alice">Abhishek</option>
                    <option value="Mark">Jai Surya</option>
                    <option value="Mark">Aditya</option>
                    <option value="Mark">Surya Kiran</option>
                </select>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="View Timetable">
            </div>
        </form>

        <!-- Back Button -->
        <a href="home.jsp" class="back-btn">Back to Homepage</a>
    </div>

</body>
</html>
