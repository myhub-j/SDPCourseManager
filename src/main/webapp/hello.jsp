<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Course Manager - Empowering Global Learning</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --accent-color: #17a2b8;
        }
        body {
            background: linear-gradient(135deg, #f8f9fa 0%, #e3f2fd 100%);
            font-family: 'Montserrat', Arial, sans-serif;
            color: #333;
        }
        /* Navbar styles */
        .navbar {
            background-color: var(--primary-color);
        }
        .navbar-nav a {
            color: white !important;
            font-weight: 600;
        }
        .navbar-nav a:hover {
            background-color: var(--accent-color);
            color: white !important;
        }
        .header {
            background: linear-gradient(to right, var(--primary-color), var(--accent-color));
            color: white;
            padding: 40px 0;
            text-align: center;
            clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%);
        }
        .header h1 {
            font-weight: 600;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        .quote-section {
            background: rgba(255,255,255,0.9);
            border-radius: 15px;
            padding: 30px;
            margin: 30px 0;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        .quote-section blockquote {
            font-style: italic;
            border-left: 4px solid var(--primary-color);
            padding-left: 15px;
            color: #555;
        }
        .course-card {
            transition: all 0.3s ease;
            border: none;
            border-radius: 15px;
            overflow: hidden;
            margin-bottom: 30px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        .course-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.15);
        }
        .course-card img {
            height: 250px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }
        .course-card:hover img {
            transform: scale(1.1);
        }
        .feedback-section {
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            padding: 50px 0;
            border-radius: 15px;
            margin-top: 30px;
        }
        .footer {
            background: #343a40;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Course Manager</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Student Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminLogin">Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header Section -->
    <div class="header">
        <div class="container">
            <h1>Course Manager</h1>
            <p class="lead">Empowering Global Learning | Breaking Boundaries of Education</p>
        </div>
    </div>

    <!-- Inspirational Quotes Section -->
    <div class="container">
        <div class="quote-section text-center">
            <h2 class="mb-4">Wisdom of Learning</h2>
            <div class="row">
                <div class="col-md-4">
                    <blockquote>
                        "Education is the most powerful weapon which you can use to change the world."
                        <footer class="blockquote-footer">- Nelson Mandela</footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote>
                        "One Child, one teacher, one pen and one book can change the world."
                        <footer class="blockquote-footer">- Malala Yousafzai</footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote>
                        "Quality education is the foundation for sustainable development."
                        <footer class="blockquote-footer">- UN Sustainable Development Goal 4</footer>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>

    <!-- Courses Section -->
    <div class="container">
        <h2 class="text-center my-5">Our Courses</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card course-card">
                    <img src="images/course1.avif" class="card-img-top" alt="Course 1">
                    <div class="card-body">
                        <h5 class="card-title">Data Science Essentials</h5>
                        <p class="card-text">Learn the basics of data science and analytics using Python and R.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card course-card">
                    <img src="images/course2.avif" class="card-img-top" alt="Course 2">
                    <div class="card-body">
                        <h5 class="card-title">Web Development Mastery</h5>
                        <p class="card-text">Master front-end and back-end web development technologies.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card course-card">
                    <img src="images/course3.avif" class="card-img-top" alt="Course 3">
                    <div class="card-body">
                        <h5 class="card-title">AI and Machine Learning</h5>
                        <p class="card-text">Explore advanced AI concepts and build machine learning models.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Feedback Section -->
 

    <!-- Footer Section -->
    <div class="footer">
        <div class="container">
            <p>&copy; 2024 Course Manager. All rights reserved.</p>
            <small>Empowering Global Learning | Committed to UN SDG 4</small>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
