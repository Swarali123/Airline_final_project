<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Airlines</title>
        <link rel="stylesheet" href="style.css">

<style>
body {
    margin: 0;
    margin-top: 50px;
    font-family: sans-serif;
}

header {
    display: flex;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height: 50px;
    line-height: 50px;
    background-color: #eee;
}

header * {
    display: inline;
    height: 50px;
}

header ul {
    padding: 0;
}

header li {
    margin-left: 20px;
}

section {
    height: 100vh;
    border: 1px solid black;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    
    background-size: cover; /* Add this line */
    background-position: center center; /* Add this line */
    background-repeat: no-repeat; /* Add this line */
    background-attachment: fixed; /* Add this line */
}

#hero .profile-img {
    width: 300px;
    border-radius: 50%;
}

footer {
    text-align: center;
    padding: 50px;
}



section h2 {
    font-size: 2.5em;
}

section h3 {
    font-size: 1.5em;
}

header a {
    text-decoration: none;
    color: black;
}

/* Add everything below here */

#home {
    background-image: linear-gradient(rgba(255,255,255,0.75),rgba(255,255,255,0.75)), url('https://compote.slate.com/images/222e0b84-f164-4fb1-90e7-d20bc27acd8c.jpg');
}

#about {
    background-image: linear-gradient(rgba(255,255,255,0.75),rgba(255,255,255,0.75)), url('https://cdn.vox-cdn.com/thumbor/oDdR6AF3DKIp7R73RYAXdLaC68g=/0x0:1280x720/1200x800/filters:focal(538x258:742x462)/cdn.vox-cdn.com/uploads/chorus_image/image/63621787/jetblue1.0.jpg');
}

#contact {
    background-image: linear-gradient(rgba(255,255,255,0.75),rgba(255,255,255,0.75)), url('https://cdn.vox-cdn.com/thumbor/oDdR6AF3DKIp7R73RYAXdLaC68g=/0x0:1280x720/1200x800/filters:focal(538x258:742x462)/cdn.vox-cdn.com/uploads/chorus_image/image/63621787/jetblue1.0.jpg');
}
#gif{
    height: 100px;
    width: 100px;
    border-radius: 100%;
}


</style>
    </head>

    <body>
        <header>
            <img src="https://www.tripsavvy.com/thmb/c-NAAy5LOU7HeEdOppqljNBGTOY=/800x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/a80dacbbe0e3454b90e60afe5276db0e-5735d7005f9b587231-6fb8476aee4e44a6976c6e2aa78d3682.jpg" class="profile-img">
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
		    <li style="float:right"><a href="admin">Admin login</a></li>
		    <li style="float:right"><a href="login">User login</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <section id="home">
                <div class="section-inner">
                    
                    <h1>Welcome to Delta airlines</h1>
                     <img src="https://media1.giphy.com/media/xThuW0uZfF3rwVan4I/giphy.gif" alt="" id="gif">
                </div>
            </section>
            <section id="about">
                <div class="section-inner">
                    <h2>About us</h2>
                    <p>We are committed to delivering ‘Low Fares Done Right’. This is more than a tagline. It’s our driving philosophy.

		Why are low fares so important? We believe travel should be for everyone. Low fares allow people to travel more often, see new places, connect with family and loved ones and develop business opportunities.

		We work harder than anyone in the airline industry to help you save money on your flights, but we know that low fares alone aren’t enough. That’s why we make a bigger commitment to our customers-- the ‘Done Right’ promise. 
		This means providing you with a real choice – with options that allow you to customize your flight to match both your wants and your wallet. And we are committed to providing safe, 
		on-time and reliable service while at the same time treating you with hospitality like only we can provide.</p>
                   
                </div>
            </section>
            <section id="contact">
                <div class="section-inner">
                    <h2>Contact us</h2>
                    <p>You can find me on:</p>
                    <ul>
                        <li><a href="https://twitter.com/delta">Twitter</a></li>
                        <li><a href="https://www.reddit.com/delta">Reddit</a></li>
                        <li><a href="https://www.instagram.com/delta">Instagram</a></li>
                    </ul>
                    <p>Or, you can <a href="mailto:deltaairlines@gmail.com">send us an email</a>.</p>
                </div>
            </section>
        </main>
        <footer>
            © Copyright Delta Airlines, November 2019
        </footer>
    </body>
</html>

