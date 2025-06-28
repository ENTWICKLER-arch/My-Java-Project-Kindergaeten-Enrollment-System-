<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Preri's World 🌸</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #ffdee9, #b5fffc);
            text-align: center;
            padding-top: 100px; /* Space for fixed navbar */
            /* Removed padding-bottom and flexbox properties related to footer positioning */
            animation: fadeIn 2s ease;
            margin: 0;
            overflow-x: hidden; /* Prevent horizontal scrollbar if elements go slightly off-screen */
            position: relative;
            /* Removed min-height, display, flex-direction as they were for the footer */
        }

        /* Navigation Bar Styles (retained) */
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

        /* Main Content Container (retained) */
        .content-container {
            background: linear-gradient(45deg, #fbc2eb 0%, #a6c1ee 100%);
            border-radius: 35px;
            padding: 60px 80px;
            max-width: 900px;
            margin: 80px auto;
            box-shadow: 0px 15px 30px rgba(0,0,0,0.25);
            animation: fadeIn 2s ease;
            position: relative;
            overflow: hidden;
            border: 2px solid rgba(255, 255, 255, 0.5);
            /* Removed flex-grow */
        }

        /* Text Styling within container (retained) */
        h1 {
            font-size: 4em;
            color: #fff;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.2);
            margin-top: 0;
            margin-bottom: 20px;
            animation: textPop 1.5s ease-out;
            letter-spacing: 2px;
        }

        p {
            font-size: 20px;
            color: #333;
            line-height: 1.8;
            margin-bottom: 50px;
            font-weight: 500;
        }

        p strong {
            color: #ff5e70;
            font-weight: 700;
        }

        /* Animated background elements inside container (retained) */
        .container-deco {
            position: absolute;
            opacity: 0.2;
            pointer-events: none;
            animation: rotateAndScale 10s infinite alternate ease-in-out;
        }
        .deco-left {
            width: 150px; height: 150px;
            top: -50px; left: -50px;
            background: url('https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Small_red_heart.svg/1200px-Small_red_heart.svg.png') no-repeat center center / contain;
        }
        .deco-right {
            width: 180px; height: 180px;
            bottom: -60px; right: -60px;
            background: url('https://www.freeiconspng.com/uploads/star-icon-10.png') no-repeat center center / contain;
            animation-delay: 2s;
        }

        /* Button styles (retained) */
        button {
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
        }

        button::before {
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

        button:hover::before {
            width: 200%;
            height: 200%;
            opacity: 1;
        }

        button:hover {
            background-color: #ff4d6d;
            transform: translateY(-5px);
            box-shadow: 0px 10px 20px rgba(0,0,0,0.4);
        }

        button:active {
            transform: translateY(0);
            box-shadow: 0px 3px 6px rgba(0,0,0,0.2);
            background-color: #e04561;
        }

        /* Keyframe Animations (retained) */
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
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

        /* Floating Background Elements (retained) */
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

        /* All animated text styles are removed */

    </style>
    <script>
        function goToForm() {
            window.location.href = "objective.jsp";
        }

        document.addEventListener('DOMContentLoaded', function() {
            const currentPath = window.location.pathname.split('/').pop();
            const navLinks = document.querySelectorAll('.navbar a');

            navLinks.forEach(link => {
                const linkHref = link.getAttribute('href');
                if (linkHref && linkHref.includes(currentPath)) {
                    link.classList.add('active');
                }
            });
        });
    </script>
</head>
<body>
    <div class="navbar">
        <a href="register.jsp">Home</a>
        <a href="objective.jsp">Objective</a>
        <a href="success.jsp">Register</a>
    </div>

    <img src="images/WhatsApp Image 2025-06-28 at 11.36.39_d0673efb.jpg" alt="Star" class="floating-element star1">
    <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_42b98e34.jpg" alt="Heart" class="floating-element heart1">
    <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_d6a2b3ff.jpg" alt="Star" class="floating-element star2">
    <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_c2213c61.jpg" alt="Heart" class="floating-element heart2">

    <div class="content-container">
        <h1>Welcome to Preri's World 🌸</h1>

        <p>
            Built with love by <strong style="color:#ff5e70;">Prerana</strong> 💫<br>
            Step into my little techie world 🌈 where creativity meets code 💻✨<br>
            Let’s make learning fun, colorful, and full of heart! 💕
        </p>

        <button onclick="goToForm()">Start Our Fun Learning Journey!</button>

        <div class="container-deco deco-left"></div>
        <div class="container-deco deco-right"></div>
    </div>

    </body>
</html>