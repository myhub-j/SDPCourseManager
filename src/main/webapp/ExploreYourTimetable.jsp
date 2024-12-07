<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Explore Your Timetable</title>
</head>
<body>
    <h1>Your Timetable</h1>
    <%
        // Get the timetable list from the session
        List<String[][]> allTimetables = (List<String[][]>) session.getAttribute("allTimetables");

        // Retrieve the timetable index from the request
        String timetableIndexParam = request.getParameter("timetableIndex");
        
        if (timetableIndexParam != null) {
            // If a timetable index is provided, fetch the specific timetable
            int timetableIndex = Integer.parseInt(timetableIndexParam);
            String[][] selectedTimetable = allTimetables.get(timetableIndex);

            String[] dayNames = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

            out.println("<table border='1'>");
            out.println("<tr><th></th><th>09:00-10:00</th><th>10:00-11:00</th><th>11:00-12:00</th><th>Break</th><th>13:00-14:00</th><th>14:00-15:00</th><th>15:00-16:00</th><th>16:00-17:00</th></tr>");
            
            // Iterate over the timetable to print the schedule
            for (int i = 0; i < selectedTimetable.length; i++) {
                out.println("<tr>");
                out.println("<td>" + dayNames[i % dayNames.length] + "</td>");
                
                for (int j = 0; j < selectedTimetable[i].length; j++) {
                    out.println("<td>" + selectedTimetable[i][j] + "</td>");
                }
                out.println("</tr>");
            }
            out.println("</table>");
        } else {
            out.println("<p>No timetable selected.</p>");
        }
    %>
</body>
</html>
