<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certification Courses</title>
    <style>
        /* Global Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #000; /* Black background */
            color: #ffeb3b; /* Yellow text */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #ffeb3b; /* Yellow heading */
            margin: 30px 0;
            font-size: 3em;
            text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.1);
        }

        /* Card Grid */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 4 columns layout */
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .card {
            background-color: #333; /* Dark grey card */
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(255, 235, 59, 0.3); /* Yellow shadow */
            text-align: center;
            color: #ffeb3b; /* Yellow text */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .card h3 {
            margin: 15px 0;
            font-size: 1.2em;
        }

        .card p {
            margin: 10px;
            font-size: 0.9em;
            color: #ffeb3b; /* Yellow text */
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 15px rgba(255, 235, 59, 0.5); /* Brighter yellow shadow */
        }

        .apply-btn {
            background-color: #ffeb3b; /* Yellow button */
            color: #000; /* Black text */
            border: none;
            padding: 10px 20px;
            margin: 15px 0;
            font-size: 1em;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .apply-btn:hover {
            background-color: #f1c40f; /* Slightly darker yellow on hover */
            color: #000;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .card-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .card-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <h1>Global Certification Courses</h1>

    <!-- Certification Cards Grid -->
    <div class="card-grid">
        <!-- Card 1 -->
        <div class="card">
            <img src="images/aws1.jpeg" alt="AWS Certification">
            <h3>AWS Certified Solutions Architect</h3>
            <p>Learn cloud architecture and become a certified AWS Solutions Architect.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 2 -->
        <div class="card">
            <img src="images/google.jpeg" alt="Google Cloud Certification">
            <h3>Google Cloud Professional Engineer</h3>
            <p>Become proficient in deploying and managing Google Cloud applications.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 3 -->
        <div class="card">
            <img src="images/azure123.png" alt="Azure Certification">
            <h3>Microsoft Certified: Azure Architect</h3>
            <p>Master Azure architecture and design solutions for enterprise use.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 4 -->
        <div class="card">
            <img src="images/cisco.jpg" alt="Cisco Certification">
            <h3>Cisco Certified Network Professional (CCNP)</h3>
            <p>Expertise in advanced networking and secure network architecture.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 5 -->
        <div class="card">
            <img src="images/18.png" alt="CompTIA Certification">
            <h3>CompTIA Security+</h3>
            <p>Certification in network security fundamentals and risk management.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 6 -->
        <div class="card">
            <img src="images/pm.jpg" alt="PMP Certification">
            <h3>Project Management Professional (PMP)</h3>
            <p>Global certification in project management and leadership techniques.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 7 -->
        <div class="card">
            <img src="images/cm.avif" alt="CSM Certification">
            <h3>Certified ScrumMaster (CSM)</h3>
            <p>Master Agile and Scrum methodologies for project management success.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>
        <!-- Card 8 -->
        <div class="card">
            <img src="images/oracle.jpg" alt="Oracle OCP Certification">
            <h3>Oracle Certified Professional (OCP)</h3>
            <p>Specialize in database management and Oracle technologies.</p>
            <form action="payment.jsp" method="get">
                <button class="apply-btn" type="submit">Apply Now</button>
            </form>
        </div>	
    </div>

</body>
</html>
