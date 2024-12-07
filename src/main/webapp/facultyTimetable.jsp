<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Timetable</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #2c3e50;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h1 {
            text-align: center;
            color: #f39c12;
            font-size: 2.8em;
            margin-top: 50px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.5);
        }

        .form-container {
            max-width: 1000px;
            margin: 50px auto;
            background-color: #34495e;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            font-size: 1.4em;
            margin-bottom: 10px;
            color: #f39c12;
            display: block;
        }

        .error-message {
            color: #e74c3c;
            background-color: #e74c3c;
            padding: 12px;
            text-align: center;
            font-size: 1.4em;
            margin-top: 30px;
            border-radius: 5px;
        }

        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 14px 20px;
            border: 1px solid #444;
            text-align: center;
        }

        th {
            background-color: #f39c12;
            color: #fff;
            font-size: 1.1em;
        }

        td {
            background-color: #2c3e50;
            color: #ecf0f1;
            font-size: 1.1em;
        }

        tr:nth-child(even) td {
            background-color: #34495e;
        }

        tr:nth-child(odd) td {
            background-color: #2c3e50;
        }

        .back-btn {
            display: block;
            text-align: center;
            margin-top: 40px;
            padding: 14px 30px;
            background-color: #f39c12;
            color: #2c3e50;
            font-size: 1.2em;
            text-decoration: none;
            border-radius: 10px;
            width: 250px;
            margin-left: auto;
            margin-right: auto;
            transition: background-color 0.3s, transform 0.2s;
        }

        .back-btn:hover {
            background-color: #e67e22;
            transform: scale(1.05);
        }

        @media screen and (max-width: 768px) {
            table, th, td {
                font-size: 0.9em;
            }

            .form-container {
                padding: 20px;
            }

            .back-btn {
                width: 200px;
                padding: 12px;
                font-size: 1.1em;
            }
        }
    </style>
</head>
<body>

    <h1>Faculty Timetable</h1>

    <div class="form-container">
        <%
            String faculty = request.getParameter("faculty");

            // Sample data
            java.util.Map<String, String[][]> timetableData = new java.util.HashMap<>();

            // Timetable for John
            timetableData.put("John", new String[][]{
                {"Math - Room 101", "Science - Room 102", "History - Room 103", "Free"},
                {"Physics - Room 201", "Chemistry - Room 202", "Math - Room 203", "Free"},
                {"English - Room 301", "Biology - Room 302", "Geography - Room 303", "Free"},
                {"Computer Science - Room 401", "Math - Room 402", "History - Room 403", "Free"},
                {"Free", "Math - Room 101", "Science - Room 102", "History - Room 103"}
            });

            // Timetable for Alice
            timetableData.put("Alice", new String[][]{
                {"English - Room 201", "Physics - Room 202", "Free", "Math - Room 101"},
                {"Chemistry - Room 203", "Biology - Room 204", "Free", "History - Room 102"},
                {"Free", "Computer Science - Room 303", "Math - Room 304", "Free"},
                {"Physics - Room 401", "English - Room 402", "Free", "Chemistry - Room 403"},
                {"Math - Room 101", "Science - Room 102", "Free", "History - Room 103"}
            });

            // Timetable for Mark
            timetableData.put("Mark", new String[][]{
                {"Free", "Science - Room 102", "History - Room 103", "Math - Room 101"},
                {"Physics - Room 201", "Free", "Math - Room 203", "Biology - Room 204"},
                {"English - Room 301", "Computer Science - Room 302", "Free", "Math - Room 101"},
                {"Chemistry - Room 401", "Physics - Room 402", "Free", "Geography - Room 403"},
                {"Free", "Math - Room 101", "Free", "History - Room 103"}
            });

            // Days and periods
            String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};
            String[][] timetable = timetableData.get(faculty);

            if (faculty == null || faculty.isEmpty() || timetable == null) {
        %>
            <div class="error-message">Invalid or no faculty selected. Please go back and select a valid faculty.</div>
            <a href="facultySelection.jsp" class="back-btn">Back to Faculty Selection</a>
        <% } else { %>
            <h2>Timetable for <%= faculty %></h2>
            <table>
                <tr>
                    <th>Day</th>
                    <th>Period 1</th>
                    <th>Period 2</th>
                    <th>Period 3</th>
                    <th>Period 4</th>
                </tr>
                <% for (int i = 0; i < days.length; i++) { %>
                <tr>
                    <td><%= days[i] %></td>
                    <% for (int j = 0; j < 4; j++) { %>
                    <td><%= timetable[i][j] %></td>
                    <% } %>
                </tr>
                <% } %>
            </table>
            <a href="facultySelection.jsp" class="back-btn">Back to Faculty Selection</a>
        <% } %>
    </div>

</body>
</html>
