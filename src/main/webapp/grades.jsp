<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Grades - Time Table Management</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        /* Global Styling */
        body {
            background-color: #000;
            color: #f39c12;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        h1 {
            text-align: center;
            color: #f39c12;
            font-size: 3.2em;
            margin-top: 50px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.6);
        }

        /* Container Styles */
        .container {
            width: 70%;
            margin: 50px auto;
            background-color: #333;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.4);
            text-align: center;
        }

        /* Modal Styles */
        .modal {
            display: block; /* Show modal immediately */
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            overflow: auto;
            padding-top: 60px;
        }

        .modal-content {
            background-color: #333;
            margin: 5% auto;
            padding: 30px;
            border-radius: 12px;
            width: 80%;
            max-width: 900px;
            color: #f39c12;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.5);
        }

        .modal-header {
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 20px;
            color: #f39c12;
        }

        /* Grades Table */
        .grades-container {
            width: 100%;
            padding: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            border-radius: 12px;
            overflow: hidden;
        }

        table th, table td {
            padding: 15px;
            text-align: center;
            border: 1px solid #444;
        }

        table th {
            background-color: #f39c12;
            color: #222;
        }

        table td {
            background-color: #555;
            color: #f39c12;
        }

        table tr:hover {
            background-color: #f39c12;
            color: #222;
            transition: background-color 0.3s;
        }

        /* Chart Container */
        .chart-container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: #222;
            border-radius: 12px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.5);
        }

        /* Close Button in Modal */
        .close-btn {
            color: #f39c12;
            font-size: 30px;
            font-weight: bold;
            background-color: transparent;
            border: none;
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 20px;
        }

        .close-btn:hover {
            color: #e67e22;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .container {
                width: 85%;
            }

            .modal-content {
                width: 90%;
            }

            h1 {
                font-size: 2.5em;
            }
        }

        @media (max-width: 480px) {
            .container {
                width: 90%;
            }

            h1 {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>

    <h1>Your Grades</h1>

    <!-- Modal Structure for Grades -->
    <div id="gradesModal" class="modal">
        <div class="modal-content">
            <button class="close-btn" onclick="closeModal()">&times;</button>
            <div class="modal-header">Your Grades</div>
            <div class="grades-container">
                <table>
                    <thead>
                        <tr>
                            <th>Course</th>
                            <th>Grade</th>
                            <th>Comments</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Engineering Subjects -->
                        <tr>
                            <td>Mathematics</td>
                            <td>A+</td>
                            <td>Excellent performance!</td>
                        </tr>
                        <tr>
                            <td>Physics</td>
                            <td>B</td>
                            <td>Good effort, but needs improvement in practicals.</td>
                        </tr>
                        <tr>
                            <td>Chemistry</td>
                            <td>A</td>
                            <td>Great understanding of the subject.</td>
                        </tr>
                        <tr>
                            <td>Engineering Mechanics</td>
                            <td>A</td>
                            <td>Very well done!</td>
                        </tr>
                        <tr>
                            <td>Electrical Engineering</td>
                            <td>B+</td>
                            <td>Solid understanding, but more effort needed in problem-solving.</td>
                        </tr>
                        <tr>
                            <td>Computer Programming</td>
                            <td>A-</td>
                            <td>Consistent performance, could improve in algorithm design.</td>
                        </tr>
                        <tr>
                            <td>Digital Logic Design</td>
                            <td>A</td>
                            <td>Excellent understanding and application of concepts.</td>
                        </tr>
                        <tr>
                            <td>Engineering Drawing</td>
                            <td>B-</td>
                            <td>Needs improvement in technical drawings.</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Graph Container -->
            <div class="chart-container">
                <canvas id="gradesChart"></canvas>
            </div>
        </div>
    </div>

    <script>
        // Function to close the modal
        function closeModal() {
            document.getElementById("gradesModal").style.display = "none";
        }

        // Close the modal if user clicks outside of it
        window.onclick = function(event) {
            var modal = document.getElementById("gradesModal");
            if (event.target === modal) {
                closeModal();
            }
        }

        // Data for Engineering Subjects Grades Chart
        const gradeLabels = ['Mathematics', 'Physics', 'Chemistry', 'Engineering Mechanics', 'Electrical Engineering', 'Computer Programming', 'Digital Logic Design', 'Engineering Drawing'];
        const gradeScores = [95, 75, 90, 88, 85, 92, 93, 70]; // Grades as percentages (e.g., A+ = 95%)

        // Chart.js Setup for Grades Graph
        var ctx = document.getElementById('gradesChart').getContext('2d');
        var gradesChart = new Chart(ctx, {
            type: 'bar',  // Bar chart
            data: {
                labels: gradeLabels,
                datasets: [{
                    label: 'Grade Percentage',
                    data: gradeScores,
                    backgroundColor: '#f39c12', // Yellow for bars
                    borderColor: '#f39c12',
                    borderWidth: 2
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 100
                    }
                }
            }
        });
    </script>

</body>
</html>
