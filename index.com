<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edi Tech Studio | Professional Services</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --brand-blue: #2563eb;
            --brand-pink: #db2777;
            --brand-orange: #f97316;
        }
        
        body {
            font-family: 'Inter', sans-serif;
            scroll-behavior: smooth;
        }

        .gradient-text {
            background: linear-gradient(to right, var(--brand-blue), var(--brand-pink), var(--brand-orange));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-bg {
            background: linear-gradient(135deg, rgba(37, 99, 235, 0.05) 0%, rgba(219, 39, 119, 0.05) 50%, rgba(249, 115, 22, 0.05) 100%);
        }

        .service-card {
            transition: all 0.3s ease;
            border: 1px solid rgba(0,0,0,0.05);
        }

        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
        }

        .btn-gradient {
            background: linear-gradient(to right, var(--brand-blue), var(--brand-pink));
            transition: opacity 0.3s;
        }

        .btn-gradient:hover {
            opacity: 0.9;
        }

        .nav-link:hover {
            color: var(--brand-pink);
        }
    </style>
</head>
<body class="bg-white text-gray-800">

    <!-- Navigation -->
    <nav class="fixed w-full z-50 bg-white/80 backdrop-blur-md border-b border-gray-100">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-20 items-center">
                <div class="flex items-center">
                    <span class="text-2xl font-black gradient-text tracking-tighter">EDI TECH STUDIO</span>
                </div>
                <div class="hidden md:flex space-x-8 font-medium">
                    <a href="#home" class="nav-link transition-colors">Home</a>
                    <a href="#services" class="nav-link transition-colors">Services</a>
                    <a href="#about" class="nav-link transition-colors">About</a>
                    <a href="#contact" class="nav-link transition-colors">Contact</a>
                </div>
                <div class="md:hidden">
                    <button id="mobile-menu-btn" class="text-gray-600">
                        <i class="fa-solid fa-bars text-2xl"></i>
                    </button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero-bg pt-32 pb-20 px-4">
        <div class="max-w-7xl mx-auto text-center">
            <span class="inline-block px-4 py-1.5 mb-6 text-sm font-semibold tracking-wide text-white bg-orange-500 rounded-full">
                Welcome to the Future of Tech Services
            </span>
            <h1 class="text-5xl md:text-7xl font-extrabold mb-6 leading-tight">
                Providing <span class="gradient-text">Excellent Tech Solutions</span> For Everyone.
            </h1>
            <p class="text-xl text-gray-600 max-w-2xl mx-auto mb-10">
                From high-quality printing to professional film making, we bring your creative visions to life in the heart of Western Province.
            </p>
            <div class="flex flex-col sm:flex-row justify-center gap-4">
                <a href="#contact" class="btn-gradient text-white px-8 py-4 rounded-xl font-bold text-lg shadow-lg">Get in Touch</a>
                <a href="#services" class="bg-white border-2 border-gray-100 px-8 py-4 rounded-xl font-bold text-lg hover:border-blue-500 transition-colors">Our Services</a>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="py-24 px-4 bg-gray-50">
        <div class="max-w-7xl mx-auto">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">Our Services</h2>
                <div class="h-1 w-20 bg-pink-500 mx-auto rounded-full"></div>
                <p class="mt-4 text-gray-500">Comprehensive technology and creative services tailored for you.</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Printing -->
                <div class="service-card bg-white p-8 rounded-2xl">
                    <div class="w-14 h-14 bg-blue-100 rounded-xl flex items-center justify-center mb-6 text-blue-600">
                        <i class="fa-solid fa-print text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold mb-3">Printing & Scanning</h3>
                    <p class="text-gray-600">High-resolution document printing and digital scanning for all your personal and business needs.</p>
                </div>

                <!-- Photocopy -->
                <div class="service-card bg-white p-8 rounded-2xl">
                    <div class="w-14 h-14 bg-pink-100 rounded-xl flex items-center justify-center mb-6 text-pink-600">
                        <i class="fa-solid fa-copy text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold mb-3">Photocopy</h3>
                    <p class="text-gray-600">Fast and reliable photocopying services with crystal clear results at competitive prices.</p>
                </div>

                <!-- Irembo -->
                <div class="service-card bg-white p-8 rounded-2xl">
                    <div class="w-14 h-14 bg-orange-100 rounded-xl flex items-center justify-center mb-6 text-orange-600">
                        <i class="fa-solid fa-earth-africa text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold mb-3">Irembo Services</h3>
                    <p class="text-gray-600">Expert assistance with all Government of Rwanda e-services and application processes.</p>
                </div>

                <!-- Film Making -->
                <div class="service-card bg-white p-8 rounded-2xl">
                    <div class="w-14 h-14 bg-blue-100 rounded-xl flex items-center justify-center mb-6 text-blue-600">
                        <i class="fa-solid fa-video text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold mb-3">Film Making</h3>
                    <p class="text-gray-600">Professional video production and film making services for your special events and projects.</p>
                </div>

                <!-- Graphic Design -->
                <div class="service-card bg-white p-8 rounded-2xl">
                    <div class="w-14 h-14 bg-pink-100 rounded-xl flex items-center justify-center mb-6 text-pink-600">
                        <i class="fa-solid fa-pen-nib text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold mb-3">Graphic Design</h3>
                    <p class="text-gray-600">Creative logo design, posters, and visual content tailored to your brand identity.</p>
                </div>

                <!-- Support -->
                <div class="service-card bg-white p-8 rounded-2xl">
                    <div class="w-14 h-14 bg-orange-100 rounded-xl flex items-center justify-center mb-6 text-orange-600">
                        <i class="fa-solid fa-handshake-angle text-2xl"></i>
                    </div>
                    <h3 class="text-xl font-bold mb-3">General Support</h3>
                    <p class="text-gray-600">Dedicated to giving good services for everyone with a customer-first approach.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="py-24 px-4">
        <div class="max-w-7xl mx-auto flex flex-col md:flex-row items-center gap-16">
            <div class="flex-1">
                <div class="relative">
                    <div class="w-full h-[400px] bg-gradient-to-tr from-blue-500 to-pink-500 rounded-3xl transform rotate-3 absolute -z-10 opacity-20"></div>
                    <div class="w-full h-[400px] bg-white border border-gray-100 rounded-3xl shadow-xl flex items-center justify-center p-12 text-center">
                        <div>
                            <i class="fa-solid fa-bullseye text-6xl text-orange-500 mb-6"></i>
                            <h3 class="text-3xl font-bold mb-4">Our Aim</h3>
                            <p class="text-xl text-gray-600 italic">"To give good services for everyone."</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex-1">
                <h2 class="text-4xl font-bold mb-6">Innovative Technology, Local Expertise.</h2>
                <p class="text-gray-600 mb-6 text-lg leading-relaxed">
                    Based in Bikingi, Bigogwe, Edi Tech Studio is a hub for creativity and technical excellence. We understand the needs of our Nyabihu community and provide world-class services with a personal touch.
                </p>
                <ul class="space-y-4">
                    <li class="flex items-center gap-3">
                        <div class="w-6 h-6 rounded-full bg-blue-100 flex items-center justify-center text-blue-600">
                            <i class="fa-solid fa-check text-xs"></i>
                        </div>
                        <span>Western Province’s leading tech partner</span>
                    </li>
                    <li class="flex items-center gap-3">
                        <div class="w-6 h-6 rounded-full bg-pink-100 flex items-center justify-center text-pink-600">
                            <i class="fa-solid fa-check text-xs"></i>
                        </div>
                        <span>Affordable & fast delivery</span>
                    </li>
                    <li class="flex items-center gap-3">
                        <div class="w-6 h-6 rounded-full bg-orange-100 flex items-center justify-center text-orange-600">
                            <i class="fa-solid fa-check text-xs"></i>
                        </div>
                        <span>Certified Irembo agent</span>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-24 px-4 bg-gray-900 text-white">
        <div class="max-w-7xl mx-auto">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-16">
                <div>
                    <h2 class="text-4xl font-bold mb-8">Let's Connect</h2>
                    <p class="text-gray-400 mb-12 text-lg">
                        Ready to start your next project? Visit us or reach out via phone/WhatsApp for inquiries.
                    </p>
                    
                    <div class="space-y-8">
                        <div class="flex items-start gap-6">
                            <div class="w-12 h-12 rounded-full bg-blue-600/20 flex items-center justify-center text-blue-400 shrink-0">
                                <i class="fa-solid fa-location-dot"></i>
                            </div>
                            <div>
                                <h4 class="text-lg font-bold">Location</h4>
                                <p class="text-gray-400">Bikingi / Bigogwe / Nyabihu<br>Western Province, Rwanda</p>
                            </div>
                        </div>

                        <div class="flex items-start gap-6">
                            <div class="w-12 h-12 rounded-full bg-pink-600/20 flex items-center justify-center text-pink-400 shrink-0">
                                <i class="fa-solid fa-phone"></i>
                            </div>
                            <div>
                                <h4 class="text-lg font-bold">Phone</h4>
                                <a href="tel:250792449704" class="text-gray-400 hover:text-white">+250 792 449 704</a>
                            </div>
                        </div>

                        <div class="flex items-start gap-6">
                            <div class="w-12 h-12 rounded-full bg-green-600/20 flex items-center justify-center text-green-400 shrink-0">
                                <i class="fa-brands fa-whatsapp"></i>
                            </div>
                            <div>
                                <h4 class="text-lg font-bold">WhatsApp</h4>
                                <a href="https://wa.me/250790026358" target="_blank" class="text-gray-400 hover:text-white">+250 790 026 358</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-white/5 p-8 rounded-3xl border border-white/10">
                    <form onsubmit="event.preventDefault(); alert('Thank you! This is a demo. Please use the WhatsApp or Phone buttons to contact us.')" class="space-y-6">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label class="block text-sm font-medium mb-2 text-gray-400">Your Name</label>
                                <input type="text" class="w-full bg-white/10 border border-white/20 rounded-xl px-4 py-3 focus:outline-none focus:border-pink-500" placeholder="John Doe">
                            </div>
                            <div>
                                <label class="block text-sm font-medium mb-2 text-gray-400">Service Needed</label>
                                <select class="w-full bg-white/10 border border-white/20 rounded-xl px-4 py-3 focus:outline-none focus:border-pink-500">
                                    <option class="bg-gray-800">Printing</option>
                                    <option class="bg-gray-800">Irembo</option>
                                    <option class="bg-gray-800">Film Making</option>
                                    <option class="bg-gray-800">Other</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <label class="block text-sm font-medium mb-2 text-gray-400">Message</label>
                            <textarea rows="4" class="w-full bg-white/10 border border-white/20 rounded-xl px-4 py-3 focus:outline-none focus:border-pink-500" placeholder="How can we help you?"></textarea>
                        </div>
                        <button type="submit" class="w-full py-4 rounded-xl font-bold text-lg bg-white text-gray-900 hover:bg-gray-200 transition-colors">
                            Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="py-12 border-t border-gray-100">
        <div class="max-w-7xl mx-auto px-4 text-center">
            <span class="text-xl font-black gradient-text tracking-tighter block mb-4">EDI TECH STUDIO</span>
            <p class="text-gray-500 text-sm">© 2024 Edi Tech Studio. All rights reserved.</p>
            <div class="flex justify-center gap-6 mt-6">
                <a href="#" class="text-gray-400 hover:text-blue-600"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#" class="text-gray-400 hover:text-pink-600"><i class="fa-brands fa-instagram"></i></a>
                <a href="#" class="text-gray-400 hover:text-blue-400"><i class="fa-brands fa-twitter"></i></a>
            </div>
        </div>
    </footer>

    <!-- Floating WhatsApp Button -->
    <a href="https://wa.me/250790026358" target="_blank" class="fixed bottom-8 right-8 w-16 h-16 bg-[#25D366] text-white rounded-full flex items-center justify-center text-3xl shadow-2xl hover:scale-110 transition-transform z-[100]">
        <i class="fa-brands fa-whatsapp"></i>
    </a>

    <script>
        // Mobile menu toggle logic
        const btn = document.getElementById('mobile-menu-btn');
        btn.addEventListener('click', () => {
            // Basic toggle implementation would go here for mobile nav
            alert('Mobile navigation would open here!');
        });
    </script>
</body>
</html>
