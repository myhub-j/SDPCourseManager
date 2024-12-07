<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Timetable</title>
    <style>
        body {
            background-color: #222;
            color: #fff;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #f1c40f;
            font-size: 2.5em;
            margin-top: 50px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #333;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #f1c40f;
        }

        th {
            background-color: #f39c12;
            color: #222;
        }

        td {
            background-color: #555;
            color: #fff;
        }

        select {
            width: 100%;
            padding: 8px;
            background-color: #222;
            color: #fff;
            border: 1px solid #444;
            border-radius: 4px;
        }

        select:hover {
            background-color: #f39c12;
            color: #222;
        }

        input[type="submit"] {
            background-color: #f39c12;
            color: #222;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        input[type="submit"]:hover {
            background-color: #e67e22;
        }

        tr:hover {
            background-color: #444;
        }

        td select:hover {
            background-color: #f39c12;
        }
    </style>
</head>
<body>
    <h1>EDIT TIMETABLE</h1>
    <form action="displayTimetable.jsp" method="post">
        <table>
            <tr>
                <th>Day</th>
                <th>Period 1</th>
                <th>Period 2</th>
                <th>Period 3</th>
                <th>Period 4</th>
            </tr>
            <% 
                String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};
                String[] subjects = {"Math", "Science", "History", "English", "Computer Science"};
                String[] rooms = {"Room 101", "Room 102", "Room 103", "Room 104", "Room 105"};

                for (String day : days) {
            %>
            <tr>
                <td><%= day %></td>
                <% for (int i = 0; i < 4; i++) { %>
                <td>
                    <select name="<%= day %>subject<%= i+1 %>">
                        <option value="">Select Subject</option>
                        <% for (String subject : subjects) { %>
                            <option value="<%= subject %>"><%= subject %></option>
                        <% } %>
                    </select>
                    <select name="<%= day %>room<%= i+1 %>">
                        <option value="">Select Room</option>
                        <% for (String room : rooms) { %>
                            <option value="<%= room %>"><%= room %></option>
                        <% } %>
                    </select>
                </td>
                <% } %>
            </tr>
            <% } %>
        </table>
        <input type="submit" value="EDIT">
    </form>
</body>
</html>
