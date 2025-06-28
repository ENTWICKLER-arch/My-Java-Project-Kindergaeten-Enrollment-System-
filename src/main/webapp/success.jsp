<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Preri's World 🌸 - Student Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            background: linear-gradient(120deg, #ffdee9, #b5fffc);
            padding-top: 100px;
            padding-bottom: 40px;
            animation: fadeIn 1s ease-in-out;
            margin: 0;
            overflow-x: hidden;
            position: relative;
        }

        /* Navigation Bar Styles */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: linear-gradient(90deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
            padding: 20px 0;
            z-index: 1000;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            font-weight: 600;
            padding: 12px 25px;
            margin: 0 20px;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .navbar a:hover {
            color: #ff2670;
            transform: translateY(-3px);
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.7);
        }

        .navbar a.active {
            background: #ff2670;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .navbar a.active:hover {
            background: #ff4d6d;
            transform: translateY(-4px);
        }

        .navbar a:active {
            transform: translateY(0px);
            box-shadow: 0 1px 3px rgba(0,0,0,0.2);
        }

        .navbar a::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.9);
            transition: all 0.4s ease-out;
            z-index: -1;
            border-radius: 8px;
        }

        .navbar a:hover::before {
            left: 0;
        }

        /* Floating Background Elements */
        .floating-element {
            position: absolute;
            animation: floatEffect 7s infinite ease-in-out;
            opacity: 1;
            z-index: -1;
            object-fit: cover;
            border-radius: 25px;
            box-shadow: 0px 8px 15px rgba(0,0,0,0.15);
            pointer-events: none;
        }

        .star1 {
            width: 350px; height: 400px;
            top: 0%; left: -5%;
            animation-delay: 0.5s;
        }
        .star2 {
            width: 400px; height: 450px;
            bottom: -5%; right: -8%;
            animation-delay: 1.5s;
        }
        .heart1 {
            width: 380px; height: 430px;
            top: 5%; right: -5%;
            animation-delay: 1s;
        }
        .heart2 {
            width: 370px; height: 420px;
            bottom: -8%; left: -3%;
            animation-delay: 2s;
        }

        /* Keyframe Animations */
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-8px); }
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: scale(0.95); }
            100% { opacity: 1; transform: scale(1); }
        }

        @keyframes floatEffect {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            25% { transform: translateY(-10px) rotate(5deg); }
            50% { transform: translateY(0px) rotate(0deg); }
            75% { transform: translateY(10px) rotate(-5deg); }
        }

        @keyframes textPop {
            0% { opacity: 0; transform: scale(0.5); }
            80% { opacity: 1; transform: scale(1.1); }
            100% { transform: scale(1); }
        }

        @keyframes rotateAndScale {
            0% { transform: rotate(0deg) scale(0.9); }
            50% { transform: rotate(180deg) scale(1.1); }
            100% { transform: rotate(360deg) scale(0.9); }
        }

        /* Container Styling */
        .container {
            background: linear-gradient(135deg, #fbc2eb 0%, #a6c1ee 100%);
            display: inline-block;
            padding: 50px 40px;
            border-radius: 25px;
            box-shadow: 0px 15px 30px rgba(0, 0, 0, 0.25);
            max-width: 500px;
            width: 90%;
            margin: 50px auto;
            border: 2px solid rgba(255, 255, 255, 0.5);
            position: relative;
            overflow: hidden;
            animation: fadeIn 1.5s ease-out;
        }

        .container h1 {
            color: #fff;
            font-size: 2.8em;
            margin-bottom: 30px;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.2);
            animation: textPop 1.5s ease-out;
            letter-spacing: 1px;
        }

        /* Form Styling */
        form {
            text-align: left;
            margin: 0 auto;
            max-width: 350px;
        }

        label {
            display: block;
            margin: 20px 0 8px 0;
            font-size: 1.1em;
            color: #333;
            font-weight: 600;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        select {
            width: calc(100% - 20px);
            padding: 12px;
            margin: 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            color: #555;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20256%22%3E%3Cpath%20fill%3D%22%23777%22%20d%3D%22M200.4 104.4L128 176.8 55.6 104.4c-4.7-4.7-12.3-4.7-17 0s-4.7 12.3 0 17l80 80c4.7 4.7 12.3 4.7 17 0l80-80c4.7-4.7 4.7-12.3 0-17s-12.3-4.7-17 0z%22%2F%3E%3C%2Fsvg%3E');
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 16px;
            cursor: pointer;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="tel"]:focus,
        select:focus {
            border-color: #ff2670;
            outline: none;
            box-shadow: 0 0 8px rgba(255, 38, 112, 0.3);
        }

        /* Submit Button Styling */
        input[type="submit"],
        a#registerAgainButton { /* Apply same style to the "Register Another" link button */
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 18px 40px;
            font-size: 20px;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.4s ease;
            box-shadow: 0px 6px 12px rgba(0,0,0,0.3);
            font-weight: 700;
            letter-spacing: 1px;
            position: relative;
            overflow: hidden;
            margin-top: 35px;
            width: auto;
            display: inline-block;
            text-decoration: none; /* For the anchor tag */
        }

        input[type="submit"]::before,
        a#registerAgainButton::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: width 0.3s ease, height 0.3s ease;
            opacity: 0;
        }

        input[type="submit"]:hover::before,
        a#registerAgainButton:hover::before {
            width: 200%;
            height: 200%;
            opacity: 1;
        }

        input[type="submit"]:hover,
        a#registerAgainButton:hover {
            background-color: #ff4d6d;
            transform: translateY(-5px);
            box-shadow: 0px 10px 20px rgba(0,0,0,0.4);
        }

        input[type="submit"]:active,
        a#registerAgainButton:active {
            transform: translateY(0);
            box-shadow: 0px 3px 6px rgba(0,0,0,0.2);
            background-color: #e04561;
        }

        /* Override for the "Register Another Student" to have a distinct color */
        a#registerAgainButton {
            background-color: #6a5acd; /* Royal purple for contrast */
        }
        a#registerAgainButton:hover {
            background-color: #8a2be2; /* Blue violet on hover */
        }
        a#registerAgainButton:active {
            background-color: #5d3fd3;
        }

        /* Success Message & Button Styling */
        .success-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 300px;
            text-align: center;
        }

        h2#successMsg {
            color: #ff2670;
            font-size: 2.5em;
            margin-top: 40px;
            animation: textPop 1.5s ease-out;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.1);
        }

        .hidden {
            display: none;
        }

        /* Internal decorative elements for the container */
        .container-deco {
            position: absolute;
            opacity: 0.15;
            pointer-events: none;
            animation: rotateAndScale 10s infinite alternate ease-in-out;
            z-index: 0;
        }
        .deco-top-left {
            width: 80px; height: 80px;
            top: -30px; left: -30px;
            background: url('images/Small_red_heart.svg.png') no-repeat center center / contain; /* Assuming relative path to images */
            transform: rotate(-30deg);
        }
        .deco-bottom-right {
            width: 100px; height: 100px;
            bottom: -40px; right: -40px;
            background: url('images/star-icon-10.png') no-repeat center center / contain; /* Assuming relative path to images */
            animation-delay: 2s;
            transform: rotate(30deg);
        }
    </style>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const navLinks = document.querySelectorAll('.navbar a');
            const registerForm = document.getElementById("registerForm");
            const successContent = document.getElementById("successContent");
            const registerAgainButton = document.getElementById("registerAgainButton");

            // --- Navbar Active State ---
            // Set the 'Register' link in the navbar as active for this page
            navLinks.forEach(link => {
                if (link.getAttribute('href') === 'success.jsp') { // This link should point to success.jsp for registration
                    link.classList.add('active');
                } else {
                    link.classList.remove('active');
                }
            });

            // --- Page State Management ---
            const urlParams = new URLSearchParams(window.location.search);
            const status = urlParams.get('status');

            if (status === 'success') {
                // Scenario: After successful form submission (redirected from servlet)
                registerForm.classList.add("hidden"); // Hide the form
                successContent.classList.remove("hidden"); // Show the success message
                // Optionally clear the URL parameter for cleaner refreshes
                history.replaceState({}, document.title, "success.jsp");
            } else {
                // Scenario: Initial load of success.jsp (show the form by default)
                registerForm.classList.remove("hidden"); // Ensure form is visible
                successContent.classList.add("hidden"); // Ensure success content is hidden
            }

            // --- Event Listener for "Register Another Student" button ---
            if (registerAgainButton) {
                registerAgainButton.addEventListener('click', function(e) {
                    e.preventDefault(); // Prevent default link behavior
                    registerForm.reset(); // Clear the form fields
                    successContent.classList.add("hidden"); // Hide success message
                    registerForm.classList.remove("hidden"); // Show the empty form
                    // Scroll to the top of the form for better UX
                    registerForm.scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
            }
        });
    </script>
</head>
<body>
    <div class="navbar">
        <a href="register.jsp">Home</a>
        <a href="objective.jsp">Objective</a>
        <a href="success.jsp">Register</a> </div>

    <img src="images/WhatsApp Image 2025-06-28 at 11.36.39_d0673efb.jpg" alt="Star" class="floating-element star1">
    <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_42b98e34.jpg" alt="Heart" class="floating-element heart1">
    <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_d6a2b3ff.jpg" alt="Star" class="floating-element star2">
    <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_c2213c61.jpg" alt="Heart" class="floating-element heart2">

    <div class="container">
        <form id="registerForm" action="register" method="post">
            <h1>Join Our Preri Family! 💖</h1>
            <label for="name">Child's Name:</label>
            <input type="text" id="name" name="name" required placeholder="Enter child's full name"><br>

            <label for="email">Parent's Email:</label>
            <input type="email" id="email" name="email" required placeholder="example@domain.com"><br>

            <label for="course">Preferred Course:</label>
            <select id="course" name="course" required>
                <option value="">Select a Course</option>
                <option value="Language Explorers">Language Explorers 🗣📚</option>
                <option value="Mind Builders">Mind Builders 🧠💡</option>
                <option value="Number Ninjas">Number Ninjas ➕➖</option>
                <option value="Active Achievers">Active Achievers 🏃‍♀🤸</option>
                <option value="Little Scientists">Little Scientists 🔬🌿</option>
                <option value="Storybook Stars">Storybook Stars 📖✨</option>
                <option value="Heartfelt Connections">Heartfelt Connections 💖🤝</option>
                <option value="Artful Adventures">Artful Adventures 🎨🎶</option>
                <option value="Melody Makers & Movers">Melody Makers & Movers 🎼💃</option>
            </select><br>

            <label for="city">Your City:</label>
            <input type="text" id="city" name="city" required placeholder="e.g., Mumbai, Delhi"><br>

            <label for="whatsapp">WhatsApp Number:</label>
            <input type="tel" id="whatsapp" name="whatsapp" required pattern="[0-9]{10}" placeholder="e.g., 9876543210" title="Please enter a 10-digit WhatsApp number (digits only)"><br>

            <input type="submit" value="Register Now!">
        </form>

        <div id="successContent" class="hidden success-content">
            <h2 id="successMsg">🎉 Hooray! Registration Successful! 🥳</h2>
            <a href="#" id="registerAgainButton">Register Another Student</a>
        </div>

        <div class="container-deco deco-top-left"></div>
        <div class="container-deco deco-bottom-right"></div>
    </div>
</body>
</html>