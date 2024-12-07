<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Teachers</title>
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

        .success-message {
            color: #27ae60;
            background-color: #2ecc71;
            padding: 10px;
            text-align: center;
            font-size: 1.2em;
            margin-top: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h1>Assign Teachers to Subjects</h1>

    <div class="form-container">
        <form id="assignTeacherForm" onsubmit="return showSuccessMessage(event)">
            <!-- Teacher Name -->
            <div class="form-group">
                <label for="teacherName">Teacher Name</label>
                <select id="teacherName" name="teacherName" required>
                    <option value="">Select Teacher</option>
                    <option value="Avinash">Avinash</option>
                    <option value="Abhishek">Abhishek</option>
                    <option value="Surya Kiran">Surya Kiran</option>
                    <option value="Jai Surya">Jai Surya</option>
                    <option value="Aditya">Aditya</option>
                    <option value="Hari Kiran">Hari Kiran</option>
                </select>
            </div>

            <!-- Subject -->
            <div class="form-group">
                <label for="subject">Subject</label>
                <select id="subject" name="subject" required>
                    <option value="">Select Subject</option>
                    <option value="Math">Math</option>
                    <option value="Science">Science</option>
                    <option value="History">History</option>
                    <option value="English">English</option>
                    <option value="Computer Science">Computer Science</option>
                </select>
            </div>

            <!-- Day -->
            <div class="form-group">
                <label for="day">Day</label>
                <select id="day" name="day" required>
                    <option value="">Select Day</option>
                    <option value="Monday">Monday</option>
                    <option value="Tuesday">Tuesday</option>
                    <option value="Wednesday">Wednesday</option>
                    <option value="Thursday">Thursday</option>
                    <option value="Friday">Friday</option>
                </select>
            </div>

            <!-- Time Slot -->
            <div class="form-group">
                <label for="timeSlot">Time Slot</label>
                <select id="timeSlot" name="timeSlot" required>
                    <option value="">Select Time Slot</option>
                    <option value="Period 1 - 9:30-10:20">Period 1 - 9:30-10:20</option>
                    <option value="Period 2 - 10:20-11:10">Period 2 - 10:20-11:10</option>
                    <option value="Period 3 - 11:10-12:00">Period 3 - 11:10-12:00</option>
                    <option value="Period 4 - 12:40-1:30">Period 4 - 12:40-1:30</option>
                    <option value="Period 5 - 1:30-2:20">Period 5 - 1:30-2:20</option>
                    <option value="Period 6 - 2:20-3:10">Period 6 - 2:20-3:10</option>
                    <option value="Period 7 - 3:10-4:00">Period 7 - 3:10-4:00</option>
                </select>
            </div>

            <!-- Room -->
            <div class="form-group">
                <label for="room">Room</label>
                <select id="room" name="room" required>
                    <option value="">Select Room</option>
                    <option value="Room 101">Room 101</option>
                    <option value="Room 102">Room 102</option>
                    <option value="Room 103">Room 103</option>
                    <option value="Room 104">Room 104</option>
                    <option value="Room 105">Room 105</option>
                </select>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <input type="submit" value="Assign Teacher">
            </div>
        </form>

        <!-- Back Button -->
        <a href="index.jsp" class="back-btn">Back to Timetable</a>

        <!-- Success Message -->
        <div id="successMessage" class="success-message" style="display:none;">
            Assigned Successfully!
        </div>
    </div>

    <script>
        function showSuccessMessage(event) {
            event.preventDefault(); // Prevent form submission

            // Display the success message
            document.getElementById('successMessage').style.display = 'block';

            // After 5 seconds, redirect to home.jsp
            setTimeout(function() {
                window.location.href = 'admin.jsp'; // Redirect to home.jsp
            }, 3000); // 5000ms = 5 seconds

            // Optionally reset the form (uncomment if you want to clear the form after success)
            // document.getElementById('assignTeacherForm').reset();
        }
    </script>

</body>
</html>
