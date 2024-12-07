<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- Dynamic link to CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css' />">
    <style>
        /* Body Styling with Background Image */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        /* Background Image Styling */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('/images/home.jpg') no-repeat center center fixed;
            background-size: cover;
            z-index: -2; /* Ensure it stays behind other elements */
        }

        /* Blur Layer */
        .background-blur {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            backdrop-filter: blur(10px); /* Apply blur */
            z-index: -1; /* Ensure it's above the image but behind the content */
        }

        .container {
            width: 350px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            text-align: center;
            z-index: 1; /* Ensure it's above the blur layer */
        }

        .logo {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="text"]#captchaInput {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            transition: border 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="text"]#captchaInput:focus {
            border-color: #3897f0;
            outline: none;
        }

        .captcha-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 0;
        }

        #captchaImage {
            max-height: 40px;
        }

        button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #3897f0;
            color: white;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #287dcf;
            transform: scale(1.05);
        }

        .error {
            color: red;
            font-size: 12px;
            margin-top: 10px;
        }

        .signup {
            margin-top: 20px;
            font-size: 14px;
        }

        .signup a {
            color: #3897f0;
            text-decoration: none;
            font-weight: bold;
        }

        .signup a:hover {
            text-decoration: underline;
        }

        .forgot-password {
            margin: 10px 0;
            font-size: 12px;
            color: #3897f0;
            cursor: pointer;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }
        
        .refresh-captcha {
            background-color: #f44336; /* Red background for refresh */
            color: white;
            padding: 8px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .refresh-captcha:hover {
            background-color: #d32f2f; /* Darker red on hover */
        }
    </style>
</head>
<body>
    <!-- Background Image -->
    <div class="background"></div>
    <!-- Blur Layer -->
    <div class="background-blur"></div>

    <!-- Login Container -->
    <div class="container">
        <!-- Logo Section -->
        <div class="logo">STUDENT LOGIN</div>

        <!-- Login Form -->
        <form action="/adminLogin" method="post">
            <!-- Username Field -->
            <input type="text" id="T1" name="username" placeholder="Enter your username" required>
            
            <!-- Password Field -->
            <input type="password" id="T2" name="password" placeholder="Enter your password" required>
            
            <!-- CAPTCHA Section -->
            <div class="captcha-container">
                <img id="captchaImage" src="data:image/png;base64," alt="CAPTCHA">
                <input type="text" id="captchaInput" placeholder="Enter CAPTCHA" required>
            </div>

            <!-- Sign In Button -->
            <button type="button" onclick="signin()">Sign In</button>

            <!-- Error Message -->
            <div id="ack" class="error">${error}</div>
        </form>

        <!-- Forgot Password -->
        <div class="forgot-password">Forgot Password?</div>

        <!-- Sign-Up Section -->
        <div class="signup">
            Don't have an account? <a href="/signup">Sign up</a>
        </div>

        <!-- Refresh CAPTCHA Button -->
        <button class="refresh-captcha" onclick="loadCaptcha()">Refresh CAPTCHA</button>
    </div>

    <!-- Scripts -->
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        // Function to fetch CAPTCHA from the server and display it
        function loadCaptcha() {
            fetch("/captcha")
                .then(response => response.json())
                .then(data => {
                    document.getElementById("captchaImage").src = "data:image/png;base64," + data.captcha;
                    sessionStorage.setItem("captchaText", data.captchaText); // Store correct CAPTCHA in session storage
                });
        }

        // Sign-in function with CAPTCHA validation
        function signin() {
            const enteredCaptcha = document.getElementById("captchaInput").value;
            const correctCaptcha = sessionStorage.getItem("captchaText");

            // Check CAPTCHA input
            if (enteredCaptcha !== correctCaptcha) {
                document.getElementById("ack").style.color = "red";
                document.getElementById("ack").innerHTML = "Incorrect CAPTCHA!";
                return;
            }

            // Prepare login data
            const data = JSON.stringify({
                username: document.getElementById("T1").value,
                password: document.getElementById("T2").value
            });
            
            const url = "http://localhost:8081/user/login";
            callApi("POST", url, data, signinHandler);
        }

        function signinHandler(res) {
            if (res == "401") {  // Expecting a string response for status code
                document.getElementById("ack").style.color = "red";
                document.getElementById("ack").innerHTML = "Invalid Credentials!";
            } else if (res === "200") {  // Check for successful login
                document.getElementById("ack").innerHTML = "";
                location.replace("/home");  // Redirect to home on success
            } else {
                // Handle unexpected response
                document.getElementById("ack").style.color = "red";
                document.getElementById("ack").innerHTML = "Unexpected response. Please try again.";
            }
        }

        // Load CAPTCHA when page loads
        document.addEventListener("DOMContentLoaded", function() {
            loadCaptcha();
        });
    </script>
</body>
</html>
