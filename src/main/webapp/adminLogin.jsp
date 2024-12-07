<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        /* General Styles */
        body {
            background-color: #000; /* Black background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #222; /* Dark gray background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        .login-container h2 {
            font-size: 28px;
            color: yellow; /* Yellow text */
            margin-bottom: 20px;
        }

        .login-container img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 30px;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            background-color: #333; /* Dark input background */
            border: 1px solid #444; 
            border-radius: 5px;
            font-size: 14px;
            color: #fff;
        }

        .input-field:focus {
            outline: none;
            border-color: yellow; /* Yellow border on focus */
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: yellow; /* Yellow background */
            color: black; /* Black text */
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #ffcc00; /* Lighter yellow on hover */
        }

        .forgot-password {
            text-align: center;
            margin-top: 15px;
        }

        .forgot-password a {
            color: yellow; /* Yellow text */
            text-decoration: none;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        /* Responsive Design */
        @media screen and (max-width: 400px) {
            .login-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="login-container">
        <!-- Person Logo (Avatar) -->
        <img src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png" alt="Person Logo">

        <h2>Admin Login</h2>

        <form action="adminLogin.jsp" method="post" id="loginForm">
            <input type="text" name="username" class="input-field" placeholder="Username" required id="username">
            <input type="password" name="password" class="input-field" placeholder="Password" required id="password">
            <button type="submit" class="submit-btn">Login</button>
        </form>

        <div class="forgot-password">
            <a href="forgotPassword.jsp">Forgot Password?</a>
        </div>

        <div id="errorMessage" class="error-message hidden">
            Invalid username or password
        </div>

        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null) {
                if ("admin".equals(username) && "1234".equals(password)) {
                    response.sendRedirect("admin.jsp");
                } else {
                    out.println("<script>");
                    out.println("document.getElementById('errorMessage').classList.remove('hidden');");
                    out.println("document.getElementById('errorMessage').classList.add('visible');");
                    out.println("</script>");
                }
            }
        %>
    </div>

    <script>
        // Client-side Validation
        document.getElementById('loginForm').onsubmit = function(event) {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;
            if (username.trim() === '' || password.trim() === '') {
                event.preventDefault(); // Prevent form submission
                alert('Please fill in both username and password.');
            }
        };
    </script>

</body>
</html>
