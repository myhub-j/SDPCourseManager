<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Generated Timetable</title>
    <style>
        body {
            background-color: #222;
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            font-size: 2.5em;
            color: #f1c40f;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #333;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #f1c40f;
        }

        th {
            background-color: #f39c12;
            color: #222;
            font-size: 1.2em;
        }

        td {
            background-color: #444;
            color: #fff;
            font-size: 1em;
            border-radius: 8px;
        }

        tr:hover {
            background-color: #555;
            transform: translateY(-5px);
            transition: background-color 0.3s, transform 0.3s;
        }

        td {
            transition: background-color 0.3s;
        }

        td:hover {
            background-color: #1abc9c;
            color: #222;
            transform: scale(1.05);
        }

        .day-column {
            font-size: 1.2em;
            font-weight: bold;
            color: #1abc9c;
        }

        .table-container {
            overflow-x: auto;
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
            background-color: #e67e22;
        }

        /* Responsive design */
        @media screen and (max-width: 768px) {
            table {
                width: 90%;
            }

            .back-btn {
                width: 90%;
                padding: 10px;
                font-size: 1em;
            }

            .container {
                padding: 10px;
            }

            h1 {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>

    <h1>Generated Timetable</h1>

    <div class="container">
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th class="day-column">Day</th>
                        <th>Period 1</th>
                        <th>Period 2</th>
                        <th>Period 3</th>
                        <th>Period 4</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};
                        for (String day : days) {
                    %>
                    <tr>
                        <td class="day-column"><%= day %></td>
                        <% for (int i = 0; i < 4; i++) { 
                            String subject = request.getParameter(day + "subject" + (i + 1));
                            String room = request.getParameter(day + "room" + (i + 1));
                        %>
                        <td>
                            <%= (subject != null && !subject.isEmpty()) ? subject : "N/A" %> - 
                            <%= (room != null && !room.isEmpty()) ? room : "N/A" %>
                        </td>
                        <% } %>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

        <a href="createTimetable.jsp" class="back-btn">Go Back to Create Timetable</a>
    </div>

</body>
</html>
