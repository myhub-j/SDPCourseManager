<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Allocate Timetable</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Allocate Timetable for Students</h2>
    
    <!-- Form to allocate timetable -->
    <form action="allocateTimeTable" method="post">
        <div>
            <label for="student">Select Student:</label>
            <select id="student" name="studentId">
                <!-- Assuming a list of students is passed to this JSP from the controller -->
                <c:forEach var="student" items="${students}">
                    <option value="${student.id}">${student.name}</option>
                </c:forEach>
            </select>
        </div>

        <div>
            <label for="course">Select Course:</label>
            <select id="course" name="courseId">
                <!-- Assuming a list of courses is passed to this JSP -->
                <c:forEach var="course" items="${courses}">
                    <option value="${course.id}">${course.courseName}</option>
                </c:forEach>
            </select>
        </div>

        <div>
            <label for="timeSlot">Select Time Slot:</label>
            <select id="timeSlot" name="timeSlot">
                <option value="Monday 9:00-11:00">Monday 9:00-11:00</option>
                <option value="Tuesday 11:00-1:00">Tuesday 11:00-1:00</option>
                <option value="Wednesday 2:00-4:00">Wednesday 2:00-4:00</option>
                <option value="Thursday 9:00-11:00">Thursday 9:00-11:00</option>
                <option value="Friday 11:00-1:00">Friday 11:00-1:00</option>
            </select>
        </div>

        <div>
            <button type="submit">Allocate Time</button>
        </div>
    </form>

    <!-- Confirmation message -->
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>

    <!-- Error message -->
    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

</body>
</html>
