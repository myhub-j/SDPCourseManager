<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Engineering Subjects</title>
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

        .container {
            width: 80%;
            margin: 20px auto;
        }

        .search-bar, .category-filter {
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: #fff;
            border: 1px solid #444;
            border-radius: 4px;
            font-size: 16px;
            margin-bottom: 20px;
        }

        .search-bar:focus, .category-filter:focus {
            background-color: #f39c12;
            color: #222;
        }

        table {
            width: 100%;
            margin: 20px 0;
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

        .button {
            background-color: #f39c12;
            color: #222;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            border: 1px solid #f1c40f;
        }

        .button:hover {
            background-color: #e67e22;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #333;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #f1c40f;
            width: 80%;
            max-width: 600px;
            color: #fff;
            border-radius: 8px;
        }

        .modal-content h2 {
            color: #f39c12;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #f39c12;
            text-decoration: none;
            cursor: pointer;
        }

        .footer {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 14px;
            margin-top: auto;
        }
    </style>
</head>
<body>

    <h1>Available Engineering Subjects</h1>

    <div class="container">
        <input type="text" id="search" class="search-bar" placeholder="Search for a subject...">
        <select id="categoryFilter" class="category-filter">
            <option value="">Select Category</option>
            <option value="Computer Science">Computer Science</option>
            <option value="Mechanical Engineering">Mechanical Engineering</option>
            <option value="Civil Engineering">Civil Engineering</option>
            <option value="Electrical Engineering">Electrical Engineering</option>
            <option value="Electronics Engineering">Electronics Engineering</option>
        </select>
    </div>

    <div class="container">
        <table id="subjectsTable">
            <tr>
                <th>Subject Name</th>
                <th>Category</th>
                <th>Enrolled Students</th>
                <th>Actions</th>
            </tr>

            <% 
                String[][] subjects = {
                    {"Data Structures", "Computer Science", "100", "Learn about data storage and algorithms."},
                    {"Thermodynamics", "Mechanical Engineering", "120", "Study of heat, work, and energy."},
                    {"Structural Analysis", "Civil Engineering", "90", "Design and analysis of structures."},
                    {"Circuit Theory", "Electrical Engineering", "150", "Study of electrical circuits."},
                    {"Digital Electronics", "Electronics Engineering", "110", "Design and analysis of digital circuits."},
                    {"Artificial Intelligence", "Computer Science", "75", "Study of intelligent systems and algorithms."},
                    {"Fluid Mechanics", "Mechanical Engineering", "130", "Study of the behavior of fluids."},
                    {"Geotechnical Engineering", "Civil Engineering", "80", "Study of soil properties and foundation design."},
                    {"Power Systems", "Electrical Engineering", "140", "Study of electrical power generation and distribution."},
                    {"Microcontrollers", "Electronics Engineering", "100", "Programming and interfacing of microcontrollers."},
                    {"Machine Learning", "Computer Science", "85", "Study of algorithms that learn from data."},
                    {"Manufacturing Processes", "Mechanical Engineering", "90", "Study of methods used to create products."},
                    {"Building Materials", "Civil Engineering", "95", "Study of materials used in construction."},
                    {"Control Systems", "Electrical Engineering", "115", "Study of systems used to control dynamic behaviors."},
                    {"VLSI Design", "Electronics Engineering", "105", "Design and analysis of integrated circuits."},
                    {"Computer Networks", "Computer Science", "110", "Study of communication systems and networking."},
                    {"Robotics", "Mechanical Engineering", "85", "Study of robot design and automation."},
                    {"Environmental Engineering", "Civil Engineering", "100", "Study of systems to protect the environment."},
                    {"Embedded Systems", "Electrical Engineering", "90", "Design of embedded systems for specific tasks."},
                    {"Signal Processing", "Electronics Engineering", "120", "Study of signals and their manipulation."}
                };

                for (int i = 0; i < subjects.length; i++) {
            %>
            <tr class="subject-row" data-category="<%= subjects[i][1] %>">
                <td><%= subjects[i][0] %></td>
                <td><%= subjects[i][1] %></td>
                <td><%= subjects[i][2] %></td>
                <td>
                    <button class="button" onclick="showDetails('<%= subjects[i][0] %>', '<%= subjects[i][3] %>')">View Details</button>
                    <button class="button" onclick="enrollSubject('<%= subjects[i][0] %>')">Enroll</button>
                </td>
            </tr>
            <% } %>
        </table>
    </div>

    <div id="subjectModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2 id="subjectTitle"></h2>
            <p id="subjectDescription"></p>
        </div>
    </div>

    <div class="footer">
        <p>&copy; TIME TABLE MANAGEMENT</p>
    </div>

    <script>
        function showDetails(subject, description) {
            document.getElementById("subjectTitle").innerText = subject;
            document.getElementById("subjectDescription").innerText = description;
            document.getElementById("subjectModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("subjectModal").style.display = "none";
        }

        function enrollSubject(subject) {
            alert("You have successfully enrolled in " + subject + "!");
        }

        document.getElementById("search").addEventListener("keyup", function() {
            filterSubjects();
        });

        document.getElementById("categoryFilter").addEventListener("change", function() {
            filterSubjects();
        });

        function filterSubjects() {
            var filterText = document.getElementById("search").value.toUpperCase();
            var selectedCategory = document.getElementById("categoryFilter").value.toUpperCase();
            var rows = document.getElementsByClassName("subject-row");

            for (var i = 0; i < rows.length; i++) {
                var subjectName = rows[i].getElementsByTagName("td")[0].innerText.toUpperCase();
                var categoryName = rows[i].getAttribute("data-category").toUpperCase();

                if (subjectName.indexOf(filterText) > -1 && (selectedCategory === "" || categoryName.indexOf(selectedCategory) > -1)) {
                    rows[i].style.display = "";
                } else {
                    rows[i].style.display = "none";
                }
            }
        }
    </script>

</body>
</html>
