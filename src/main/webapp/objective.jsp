
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Preri's World 🌸 - Our Kindergarten Objective</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #ffdee9, #b5fffc);
            text-align: center;
            padding-top: 100px; 
            padding-bottom: 40px; 
            animation: fadeIn 2s ease;
            margin: 0;
            overflow-x: hidden; 
            position: relative;
        }

        
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


        .content-container {
            background: linear-gradient(45deg, #fbc2eb 0%, #a6c1ee 100%);
            border-radius: 35px;
            padding: 60px 80px;
            max-width: 1100px; 
            margin: 80px auto 40px auto; 
            box-shadow: 0px 15px 30px rgba(0,0,0,0.25);
            animation: fadeIn 2s ease;
            position: relative;
            overflow: hidden;
            border: 2px solid rgba(255, 255, 255, 0.5);
            text-align: left; 
        }

        
        h1, h2 {
            font-size: 3.5em; 
            color: #fff;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.2);
            margin-top: 0;
            margin-bottom: 20px;
            animation: textPop 1.5s ease-out;
            letter-spacing: 2px;
            text-align: center; 
        }

        h2 {
            font-size: 2.8em; 
            margin-top: 60px;
            margin-bottom: 30px;
        }

        p {
            font-size: 1.15em; 
            color: #333;
            line-height: 1.8;
            margin-bottom: 25px; 
            font-weight: 500;
        }

        p strong {
            color: #ff5e70;
            font-weight: 700;
        }

        
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

       
        .course-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); 
            gap: 30px; 
            margin-top: 50px;
            text-align: center;
        }

        .course-card {
            background: rgba(255, 255, 255, 0.7); 
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 8px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start; 
            min-height: 350px; 
        }

        .course-card:hover {
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 15px 25px rgba(0,0,0,0.18);
            background: rgba(255, 255, 255, 0.9); }

        .course-card img {
            width: 100px; 
            height: 100px;
            object-fit: contain;
            margin-bottom: 20px;
            border-radius: 10px; 
            box-shadow: 0 4px 8px rgba(0,0,0,0.1); 
        }

        .course-card h3 {
            font-size: 1.8em;
            color: #ff4d6d; 
            margin-top: 0;
            margin-bottom: 15px;
            letter-spacing: 1px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
        }

        .course-card p {
            font-size: 1em;
            color: #555;
            line-height: 1.6;
            margin-bottom: 0; 
        }

        .mission-points {
            margin-top: 40px;
            text-align: left;
            list-style: none;
            padding: 0;
        }

        .mission-points li {
            font-size: 1.1em;
            color: #444;
            margin-bottom: 15px;
            position: relative;
            padding-left: 30px; 
        }

        .mission-points li::before {
            content: '🌟'; 
            position: absolute;
            left: 0;
            top: 0;
            font-size: 1.2em;
            line-height: 1;
        }

    </style>
    <script>
        
        document.addEventListener('DOMContentLoaded', function() {
            const navLinks = document.querySelectorAll('.navbar a');

           
            navLinks.forEach(link => {
                if (link.getAttribute('href') === 'objective.jsp') {
                    link.classList.add('active');
                } else {
                     link.classList.remove('active'); 
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
        <h1>Our Kindergarten's Bright Objectives ✨</h1>

        <p>
            At <strong>Preri's Learn & Play Kindergarten</strong>, we believe every child is a unique star ready to shine! 🌟 Our mission is to create a nurturing, joyful, and stimulating environment where young learners can explore, discover, and grow into confident, curious, and compassionate individuals. We focus on fostering a love for learning that lasts a lifetime! 💖
        </p>

        <ul class="mission-points">
            <li>We empower children to discover their innate potential through hands-on experiences and creative play.</li>
            <li>We cultivate critical thinking and problem-solving skills in a supportive, fun-filled setting.</li>
            <li>We encourage social-emotional development, teaching empathy, cooperation, and respect for others.</li>
            <li>We lay a strong foundation for academic success by sparking curiosity in language, math, and science.</li>
            <li>We celebrate individuality, ensuring every child feels valued, safe, and excited to learn each day!</li>
        </ul>

        <h2>Our Magical Learning Adventures! 🌈</h2>

        <p style="text-align: center;">
            Dive into our specially designed courses that spark curiosity and ignite a passion for discovery! Each program is crafted to meet developmental milestones while making learning an absolute joy. Let's explore the wonderful worlds we open up for your child:
        </p>

        <div class="course-grid">
            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.55_67009155.jpg" alt="Language Acquisition">
                <h3>Language Explorers 🗣📚</h3>
                <p>Unlock the power of words! Our language program encourages children to express themselves confidently, expand their vocabulary, and fall in love with storytelling through interactive games, songs, and delightful books.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.56_efa8732e.jpg" alt="Cognitive Development">
                <h3>Mind Builders 🧠💡</h3>
                <p>Spark curiosity and critical thinking! This course is designed to enhance memory, problem-solving skills, and cognitive flexibility through engaging puzzles, experiments, and sensory play, helping little brains grow big ideas.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.56_481cbd7c.jpg" alt="Early Numeracy (Math)">
                <h3>Number Ninjas ➕➖</h3>
                <p>Making math fun and friendly! Children explore early numeracy concepts like counting, sorting, patterns, and basic addition through playful activities, building a strong foundation for future mathematical success.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.54_6d4fb2df.jpg" alt="Physical Development">
                <h3>Active Achievers 🏃‍♀🤸</h3>
                <p>Jump, run, and explore! This program boosts gross motor skills, coordination, and balance through active play, outdoor adventures, and fun physical challenges, building healthy bodies and strong spirits.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.55_d8cde3d6.jpg" alt="Science Discovery">
                <h3>Little Scientists 🔬🌿</h3>
                <p>Igniting curiosity about the world! Children conduct simple experiments, observe nature, and learn about cause and effect, fostering a lifelong passion for scientific inquiry and discovery.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.54_9adf1ea4.jpg" alt="Early Literacy">
                <h3>Storybook Stars 📖✨</h3>
                <p>Embark on a reading adventure! This course introduces phonics, sight words, and reading comprehension through captivating stories, interactive games, and personalized support, building confident young readers.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.55_38f2ab44.jpg" alt="Social-Emotional Learning">
                <h3>Heartfelt Connections 💖🤝</h3>
                <p>Learning to be kind and understand feelings! This program focuses on developing empathy, managing emotions, and building positive relationships through group activities, role-playing, and sharing circles.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 11.36.40_42b98e34.jpg" alt="Creative Arts">
                <h3>Artful Adventures 🎨🎶</h3>
                <p>Unleash inner artists and musicians! Children explore various art forms, develop fine motor skills through creative expression, and discover the joy of rhythm and melody in our vibrant arts program.</p>
            </div>

            <div class="course-card">
                <img src="images/WhatsApp Image 2025-06-28 at 17.52.54_9adf1ea4.jpg" alt="Music and Movement">
                <h3>Melody Makers & Movers 🎼💃</h3>
                <p>Explore the wonderful world of music and rhythm! Children sing, dance, play simple instruments, and express themselves creatively through movement, enhancing coordination, listening skills, and joy.</p>
            </div>
            </div>

        <div class="container-deco deco-left"></div>
        <div class="container-deco deco-right"></div>
    </div>

</body>
</html>