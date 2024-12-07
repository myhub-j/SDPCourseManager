<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty List</title>
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
            font-size: 3em;
            margin-top: 50px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.6);
        }

        .container {
            width: 80%;
            margin: 20px auto;
        }

        .search-bar {
            margin: 20px 0;
            text-align: center;
        }

        .search-bar input {
            padding: 12px;
            width: 40%;
            font-size: 18px;
            background-color: #444;
            color: #fff;
            border: 1px solid #444;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .search-bar input:focus {
            background-color: #f39c12;
            color: #222;
        }

        .faculty-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .faculty-item {
            background-color: #333;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            margin: 10px;
            width: 220px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .faculty-item:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.4);
        }

        .faculty-item img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin-bottom: 15px;
            border: 4px solid #f1c40f;
        }

        .faculty-item h3 {
            font-size: 1.6em;
            color: #f39c12;
        }

        .faculty-item p {
            font-size: 16px;
            color: #fff;
        }

        .faculty-item .details-button {
            background-color: #f39c12;
            color: #222;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            border: 1px solid #f1c40f;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .faculty-item .details-button:hover {
            background-color: #e67e22;
        }

        .footer {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 14px;
            margin-top: 50px;
        }

        /* Add Media Queries for responsiveness */
        @media (max-width: 768px) {
            .faculty-item {
                width: 45%;
            }

            .faculty-item img {
                width: 100px;
                height: 100px;
            }

            .search-bar input {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            .faculty-item {
                width: 100%;
            }

            .search-bar input {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <h1>Faculty List</h1>

    <div class="container">
        <div class="search-bar">
            <input type="text" id="searchInput" placeholder="Search Faculty by Name..." onkeyup="filterFaculty()">
        </div>

        <div class="faculty-list" id="facultyList">
            <!-- Faculty Items -->
            <div class="faculty-item">
               <img src="images/images.png" alt="User Profile Picture">
                <h3>Dr. Avinash Kumar</h3>
                <p>Computer Science Department</p>
                <p><strong>Email:</strong> avinash.kumar@university.com</p>
                <p><strong>Phone:</strong> +91 98765 43210</p>
                <button class="details-button" onclick="viewDetails('Avinash Kumar')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Prof. Abhishek Sharma</h3>
                <p>Mechanical Engineering</p>
                <p><strong>Email:</strong> abhishek.sharma@university.com</p>
                <p><strong>Phone:</strong> +91 91234 56789</p>
                <button class="details-button" onclick="viewDetails('Abhishek Sharma')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Dr. Neelesh Reddy</h3>
                <p>Civil Engineering</p>
                <p><strong>Email:</strong> neelesh.reddy@university.com</p>
                <p><strong>Phone:</strong> +91 99876 54321</p>
                <button class="details-button" onclick="viewDetails('Neelesh Reddy')">View Details</button>
            </div>
            <div class="faculty-item">
               <img src="images/images.png" alt="User Profile Picture">
                <h3>Dr. Aditya Verma</h3>
                <p>Electrical Engineering</p>
                <p><strong>Email:</strong> aditya.verma@university.com</p>
                <p><strong>Phone:</strong> +91 90567 89012</p>
                <button class="details-button" onclick="viewDetails('Aditya Verma')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Prof. Nani Rao</h3>
                <p>Computer Science Engineering</p>
                <p><strong>Email:</strong> nani.rao@university.com</p>
                <p><strong>Phone:</strong> +91 93210 65478</p>
                <button class="details-button" onclick="viewDetails('Nani Rao')">View Details</button>
            </div>
            <div class="faculty-item">
               <img src="images/images.png" alt="User Profile Picture">
                <h3>Dr. Surya Kiran</h3>
                <p>Mechanical Engineering</p>
                <p><strong>Email:</strong> surya.kiran@university.com</p>
                <p><strong>Phone:</strong> +91 92134 56789</p>
                <button class="details-button" onclick="viewDetails('Surya Kiran')">View Details</button>
            </div>
            <div class="faculty-item">
               <img src="images/images.png" alt="User Profile Picture">
                <h3>Prof. Surya Kumar</h3>
                <p>Electrical Engineering</p>
                <p><strong>Email:</strong> surya.kumar@university.com</p>
                <p><strong>Phone:</strong> +91 93312 34567</p>
                <button class="details-button" onclick="viewDetails('Surya Kumar')">View Details</button>
            </div>
            <div class="faculty-item">
                <<img src="images/images.png" alt="User Profile Picture">
                <h3>Dr. Abijeet Sharma</h3>
                <p>Civil Engineering</p>
                <p><strong>Email:</strong> abijeet.sharma@university.com</p>
                <p><strong>Phone:</strong> +91 94785 32109</p>
                <button class="details-button" onclick="viewDetails('Abijeet Sharma')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Prof. Satwik Kumar</h3>
                <p>Mechanical Engineering</p>
                <p><strong>Email:</strong> satwik.kumar@university.com</p>
                <p><strong>Phone:</strong> +91 99999 12345</p>
                <button class="details-button" onclick="viewDetails('Satwik Kumar')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Dr. Akhil Reddy</h3>
                <p>Electrical Engineering</p>
                <p><strong>Email:</strong> akhil.reddy@university.com</p>
                <p><strong>Phone:</strong> +91 91678 24567</p>
                <button class="details-button" onclick="viewDetails('Akhil Reddy')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Prof. Harika Gupta</h3>
                <p>Computer Science Department</p>
                <p><strong>Email:</strong> harika.gupta@university.com</p>
                <p><strong>Phone:</strong> +91 93456 78901</p>
                <button class="details-button" onclick="viewDetails('Harika Gupta')">View Details</button>
            </div>
            <div class="faculty-item">
                <img src="images/images.png" alt="User Profile Picture">
                <h3>Prof.Anusha</h3>
                <p>Computer Science Department</p>
                <p><strong>Email:</strong> harika.gupta@university.com</p>
                <p><strong>Phone:</strong> +91 93456 78901</p>
                <button class="details-button" onclick="viewDetails('Harika Gupta')">View Details</button>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Faculty Management</p>
    </div>

    <script>
        function filterFaculty() {
            var input, filter, list, items, name, i;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            list = document.getElementById("facultyList");
            items = list.getElementsByClassName("faculty-item");

            for (i = 0; i < items.length; i++) {
                name = items[i].getElementsByTagName("h3")[0];
                if (name.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    items[i].style.display = "";
                } else {
                    items[i].style.display = "none";
                }
            }
        }

        function viewDetails(facultyName) {
            alert("Details of " + facultyName + " will be shown here.");
        }
    </script>

</body>
</html>
