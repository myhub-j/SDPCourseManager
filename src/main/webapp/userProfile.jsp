<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
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

        .profile-info {
            background-color: #333;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .profile-info:hover {
            transform: scale(1.02);
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.4);
        }

        .profile-info img {
            display: block;
            margin: 0 auto;
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 4px solid #f1c40f;
        }

        .profile-info h2 {
            text-align: center;
            color: #f39c12;
            font-size: 2em;
        }

        .profile-info p {
            font-size: 18px;
            line-height: 1.8;
            margin-top: 20px;
        }

        .edit-button {
            background-color: #f39c12;
            color: #222;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            border: 1px solid #f1c40f;
            margin-top: 20px;
            display: block;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
            transition: background-color 0.3s, transform 0.3s;
        }

        .edit-button:hover {
            background-color: #e67e22;
            transform: scale(1.05);
        }

        .form-container {
            margin-top: 50px;
            display: none;
        }

        .form-container input,
        .form-container select,
        .form-container textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            background-color: #444;
            color: #fff;
            border: 1px solid #444;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
        }

        .form-container input:focus,
        .form-container select:focus,
        .form-container textarea:focus {
            background-color: #f39c12;
            color: #222;
        }

        .save-button {
            background-color: #f39c12;
            color: #222;
            padding: 12px 24px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            border: 1px solid #f1c40f;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
            display: block;
            transition: background-color 0.3s ease-in-out;
        }

        .save-button:hover {
            background-color: #e67e22;
        }

        .social-media-icons {
            margin-top: 30px;
            text-align: center;
        }

        .social-media-icons a {
            color: #fff;
            margin: 0 15px;
            font-size: 24px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .social-media-icons a:hover {
            color: #f39c12;
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
            .profile-info img {
                width: 120px;
                height: 120px;
            }

            .profile-info h2 {
                font-size: 1.5em;
            }

            .container {
                width: 90%;
            }

            .edit-button, .save-button {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <h1>User Profile</h1>

    <div class="container">
        <div class="profile-info">
            <img src="images/images.png" alt="User Profile Picture">
            
            <h2>STUDENT	</h2>
            <p><strong>Email:</strong> 2200090168@kluniversity.in</p>
            <p><strong>Phone:</strong> 9515282148</p>
            <p><strong>Course:</strong> Computer Science Engineering</p>
            <p><strong>Enrollment Date:</strong> January 2022</p>
            <p><strong>Bio:</strong> A passionate developer who loves coding and exploring new technologies.</p>
            <button class="edit-button" onclick="toggleEditForm()">Edit Profile</button>
        </div>
    </div>

    <div class="container form-container" id="editForm">
        <div class="profile-info">
            <h2>Edit Profile</h2>
            <form action="saveProfile.jsp" method="post">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" value="John Doe" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="johndoe@example.com" required>

                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" value="+123 456 7890" required>

                <label for="course">Course:</label>
                <select id="course" name="course" required>
                    <option value="Computer Science Engineering" selected>Computer Science Engineering</option>
                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                    <option value="Civil Engineering">Civil Engineering</option>
                    <option value="Electrical Engineering">Electrical Engineering</option>
                </select>

                <label for="bio">Bio:</label>
                <textarea id="bio" name="bio" rows="4" placeholder="Tell us something about yourself...">I'm passionate about software development and technology.</textarea>

                <button type="submit" class="save-button">Save Changes</button>
            </form>
        </div>
    </div>

    <div class="social-media-icons">
        <a href="#" title="Follow on Facebook"><i class="fab fa-facebook-square"></i></a>
        <a href="#" title="Follow on Twitter"><i class="fab fa-twitter-square"></i></a>
        <a href="#" title="Follow on LinkedIn"><i class="fab fa-linkedin"></i></a>
        <a href="#" title="Follow on Instagram"><i class="fab fa-instagram"></i></a>
    </div>

    <div class="footer">
        <p>&copy; 2024 User Profile Management</p>
    </div>

    <!-- Font Awesome for social media icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <script>
        function toggleEditForm() {
            var form = document.getElementById("editForm");
            if (form.style.display === "none" || form.style.display === "") {
                form.style.display = "block";
            } else {
                form.style.display = "none";
            }
        }
    </script>

</body>
</html>
