<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SignUp</title>
    <style>
        /* Body Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('/images/home.jpg') no-repeat center center fixed; /* Background Image */
            background-size: cover; /* Ensure the image covers the entire page */
            background-attachment: fixed; /* Keep the background fixed while scrolling */
            position: relative; /* Positioning for the container */
        }

        /* Signup Container Styling */
        .signup-container {
            background-color: white; /* White background for the form */
            border-radius: 8px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        /* Form Heading */
        .signup-container h2 {
            font-size: 28px;
            color: #333; /* Dark gray for the heading */
            margin-bottom: 20px;
        }

        /* Form Group */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        /* Form Label */
        .form-group label {
            font-size: 14px;
            margin-bottom: 8px;
            display: block;
            color: #555; /* Lighter gray for labels */
        }

        /* Form Input Fields */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            background-color: #f9f9f9;
            color: #333;
            transition: border-color 0.3s, background-color 0.3s;
        }

        /* Input Field Focus */
        input[type="text"]:focus,
        input[type="password"]:focus {
            background-color: #fff;
            border-color: #007BFF; /* Blue border on focus */
            outline: none;
        }

        /* Invalid Input */
        .invalid {
            border-color: red;
            background-color: #ffe6e6;
        }

        /* Submit Button */
        button {
            width: 100%;
            padding: 14px;
            background-color: #007BFF; /* Blue color */
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Button Hover Effect */
        button:hover {
            background-color: #0056b3;
        }

        /* Acknowledgement Message */
        #ack {
            font-size: 12px;
            color: #007BFF;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Signup Container -->
    <div class="signup-container">
        <h2>Create Account</h2>
        <div class="form-group">
            <label for="T1">Username*</label>
            <input type="text" id="T1" />
        </div>
        <div class="form-group">
            <label for="T2">Password*</label>
            <input type="password" id="T2" />
        </div>
        <div class="form-group">
            <label for="T3">Re-type Password*</label>
            <input type="password" id="T3" />
        </div>
        <div class="form-group">
            <label for="T4">First Name*</label>
            <input type="text" id="T4" />
        </div>
        <div class="form-group">
            <label for="T5">Last Name*</label>
            <input type="text" id="T5" />
        </div>
        <div class="form-group">
            <label for="T6">Mobile No.*</label>
            <input type="text" id="T6" />
        </div>
        <div class="form-group">
            <label for="T7">Email ID*</label>
            <input type="text" id="T7" />
        </div>
        <div class="form-group">
            <button onclick="save()">Save</button>
        </div>
        <div class="form-group">
            <label id="ack"></label>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        function save() {
            var username = document.getElementById("T1").value;
            var password = document.getElementById("T2").value;
            var retypePassword = document.getElementById("T3").value;
            var firstname = document.getElementById("T4").value;
            var lastname = document.getElementById("T5").value;
            var mobileno = document.getElementById("T6").value;
            var emailid = document.getElementById("T7").value;

            if (!username || !password || !retypePassword || !firstname || !lastname || !mobileno || !emailid) {
                alert("Please fill in all required fields.");
                return;
            }

            var retypeInput = document.getElementById("T3");

            if (password !== retypePassword) {
                alert("Passwords do not match. Please try again.");
                retypeInput.classList.add('invalid');
                return;
            } else {
                retypeInput.classList.remove('invalid');
            }

            var data = JSON.stringify({
                username: username,
                password: password,
                firstname: firstname,
                lastname: lastname,
                mobileno: mobileno,
                emailid: emailid
            });

            var url = "http://localhost:8081/user/signup";

            callApi("POST", url, data, getResponse);
        }
    </script>
</body>
</html>
