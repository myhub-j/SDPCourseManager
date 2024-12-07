<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Allocated Rooms</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: white;
            background-color: #222;
            padding: 20px;
            margin: 0;
        }

        /* Header Styling */
        header {
            background-color: rgba(0, 0, 0, 0.7);
            color: #ffcc00;
            text-align: center;
            padding: 30px;
            border-bottom: 2px solid #ffcc00;
        }

        header h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        header p {
            font-size: 18px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ffcc00;
        }

        th {
            background-color: #333;
        }

        tr:nth-child(even) {
            background-color: #444;
        }

        /* Button Styling */
        .back-button {
            background-color: #222;
            color: #ffcc00;
            padding: 10px 20px;
            text-align: center;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            border: 2px solid #ffcc00;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
            font-weight: bold;
            display: inline-block;
            margin-top: 20px;
        }

        .back-button:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            background-color: #ffcc00;
            color: #222;
        }

    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Allocated Rooms</h1>
        <p>View the list of allocated rooms for your classes.</p>
    </header>

    <!-- Table Section -->
    <table>
        <thead>
            <tr>
                <th>Room Number</th>
                <th>Room Name</th>
                <th>Allocated Class</th>
                <th>Time Slot</th>
            </tr>
        </thead>
        <tbody>
            <!-- Example of a room allocation entry. You should dynamically populate this with your backend data. -->
            <tr>
                <td>101</td>
                <td>Lecture Hall A</td>
                <td>Mathematics 101</td>
                <td>9:00 AM - 11:00 AM</td>
            </tr>
            <tr>
                <td>102</td>
                <td>Lecture Hall B</td>
                <td>Physics 201</td>
                <td>11:00 AM - 1:00 PM</td>
            </tr>
            <tr>
                <td>103</td>
                <td>Computer Lab 1</td>
                <td>Computer Science 303</td>
                <td>2:00 PM - 4:00 PM</td>
            </tr>
            <!-- More rows can be added dynamically -->
        </tbody>
    </table>

    <!-- Back Button Section -->
    <a href="home.jsp" class="back-button">Back to Dashboard</a>

</body>
</html>
