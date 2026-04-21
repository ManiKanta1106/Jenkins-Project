<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUMINA — modern e‑commerce</title>

    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fefefe;
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            color: #1A1E2B;
            scroll-behavior: smooth;
        }

        :root {
            --gradient-1: linear-gradient(135deg, #0B1120 0%, #19233C 100%);
            --glass-bg: rgba(255, 255, 255, 0.96);
            --accent: #C0F2F0;
            --vibrant: #FF6B6B;
            --vibrant-dark: #E84545;
            --electric: #4C9AFF;
            --mint: #6DD5A5;
            --shadow-sm: 0 12px 28px -8px rgba(0, 0, 0, 0.05), 0 2px 4px rgba(0, 0, 0, 0.02);
            --shadow-lg: 0 25px 40px -12px rgba(0, 0, 0, 0.15);
            --radius-xl: 32px;
            --radius-2xl: 40px;
            --border-light: 1px solid rgba(0, 0, 0, 0.04);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* modern header with blur */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.04);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand-logo {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.85rem;
            background: linear-gradient(130deg, #0B1120, #2C3E66);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .brand-logo span {
            background: linear-gradient(125deg, #FF6B6B, #FF8E53);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        nav ul {
            display: flex;
            gap: 32px;
            list-style: none;
        }

        nav a {
            text-decoration: none;
            font-weight: 500;
            color: #1F2A44;
            transition: all 0.2s ease;
            font-size: 0.95rem;
        }

        nav a:hover {
            color: #FF6B6B;
        }

        .search-glass {
            display: flex;
            align-items: center;
            background: #F2F4F8;
            border-radius: 60px;
            padding: 8px 18px;
            gap: 10px;
            backdrop-filter: blur(4px);
            transition: all 0.2s;
            border: 1px solid transparent;
        }

        .search-glass:focus-within {
            background: white;
            border-color: #FF6B6B;
            box-shadow: 0 0 0 3px rgba(255, 107, 107, 0.2);
        }

        .search-glass input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 190px;
        }

        .cart-icon {
            position: relative;
            background: #F2F4F8;
            width: 44px;
            height: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: all 0.2s;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: #FF6B6B;
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        /* hero modern */
        .hero-modern {
            background: linear-gradient(110deg, #F4F8FF 0%, #FFFFFF 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 40px;
            position: relative;
            overflow: hidden;
        }

        .hero-grid {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            padding: 60px 0 70px;
            flex-wrap: wrap;
        }

        .hero-text {
            flex: 1;
        }

        .hero-badge {
            background: rgba(255, 107, 107, 0.12);
            display: inline-block;
            padding: 6px 16px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.8rem;
            color: #FF6B6B;
            margin-bottom: 20px;
        }

        .hero-text h1 {
            font-size: 3.7rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #10182F, #2C3E66);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .hero-cta {
            display: flex;
            gap: 18px;
            margin: 32px 0 20px;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: #1E2A44;
            color: white;
            border: none;
            padding: 14px 32px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            display: inline-flex;
            gap: 8px;
            align-items: center;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.05);
        }

        .btn-primary:hover {
            background: #FF6B6B;
            transform: scale(1.02);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid #CFDDEB;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .hero-image {
            flex: 1;
            min-width: 280px;
            text-align: center;
        }

        .hero-image img {
            max-width: 100%;
            border-radius: 32px;
            filter: drop-shadow(0 20px 30px rgba(0, 0, 0, 0.1));
        }

        /* section titles */
        .section-head {
            text-align: center;
            margin: 56px 0 32px;
        }

        .section-head h2 {
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
        }

        .section-head p {
            color: #5A6B87;
            margin-top: 8px;
        }

        /* category cards glass */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }

        .cat-card-modern {
            background: white;
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s ease;
            cursor: pointer;
            border: 1px solid rgba(0, 0, 0, 0.03);
            box-shadow: var(--shadow-sm);
        }

        .cat-card-modern:hover {
            transform: translateY(-8px);
            background: #FFFFFF;
            border-color: #FFE0E0;
            box-shadow: 0 25px 35px -12px rgba(0, 0, 0, 0.1);
        }

        .cat-icon {
            font-size: 2.4rem;
            background: linear-gradient(145deg, #FFF0F0, #FEF5F5);
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin: 0 auto 16px;
            color: #FF6B6B;
        }

        /* product grid premium */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }

        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.02);
            border: 1px solid #F0F2F6;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 25px 40px -12px rgba(0, 0, 0, 0.15);
            border-color: #FFDCDC;
        }

        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-info {
            padding: 18px 18px 20px;
        }

        .price-tag {
            font-weight: 800;
            font-size: 1.4rem;
            color: #1E2A44;
        }

        .add-cart-btn {
            background: #F4F6FC;
            border: none;
            border-radius: 40px;
            padding: 10px 0;
            font-weight: 600;
            width: 100%;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .add-cart-btn:hover {
            background: #FF6B6B;
            color: white;
        }

        /* flash sale area */
        .flash-deal {
            background: linear-gradient(115deg, #10182F 0%, #1F2C49 100%);
            border-radius: 48px;
            margin: 60px 0;
            padding: 40px;
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
            color: white;
        }

        .timer-modern {
            display: flex;
            gap: 18px;
            margin: 20px 0;
        }

        .time-card {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(8px);
            border-radius: 28px;
            padding: 12px 18px;
            text-align: center;
            min-width: 70px;
        }

        .time-number {
            font-size: 2rem;
            font-weight: 800;
            line-height: 1;
        }

        /* testimonials modern */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scrollbar-width: thin;
        }

        .testimonial-card {
            background: white;
            border-radius: 32px;
            padding: 28px;
            min-width: 320px;
            box-shadow: var(--shadow-sm);
        }

        /* newsletter */
        .newsletter-premium {
            background: linear-gradient(145deg, #F8FAFF, #FFFFFF);
            border-radius: 56px;
            padding: 56px 32px;
            text-align: center;
            border: 1px solid rgba(255, 107, 107, 0.2);
            margin-bottom: 30px;
        }

        footer {
            background: #0C111F;
            color: #ADB7D1;
            border-radius: 48px 48px 0 0;
            padding: 48px 0 24px;
            margin-top: 48px;
        }

        @media (max-width: 800px) {
            .header-inner {
                flex-wrap: wrap;
            }
            nav ul {
                gap: 18px;
            }
            .hero-text h1 {
                font-size: 2.4rem;
            }
        }

        @media (max-width: 640px) {
            .container {
                padding: 0 20px;
            }
            .cat-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        .toast-msg {
            position: fixed;
            bottom: 24px;
            left: 50%;
            transform: translateX(-50%);
            background: #1E2A44;
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            font-weight: 500;
            z-index: 200;
            backdrop-filter: blur(8px);
            animation: fadeInUp 0.3s ease;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateX(-50%) translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateX(-50%) translateY(0);
            }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div class="brand-logo">LUMINA<span>.</span></div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#products-section">Shop</a></li>
                <li><a href="#deals-section">Offers</a></li>
                <li><a href="#">Journal</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search-glass">
                <i class="fas fa-search" style="color: #8E9BB0;"></i>
                <input type="text" id="searchField" placeholder="Search products...">
            </div>
            <div class="cart-icon" id="cartIconBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCountDisplay">0</span>
            </div>
        </div>
    </div>
</header>

<main>
    <!-- modern hero -->
    <div class="hero-modern">
        <div class="container hero-grid">
            <div class="hero-text">
                <div class="hero-badge"><i class="fas fa-bolt"></i> limited drops</div>
                <h1>Define your<br> signature style</h1>
                <p style="font-size: 1.05rem; color: #475569; max-width: 500px;">Discover curated pieces — from tech to streetwear, all with free shipping & 30-day returns.</p>
                <div class="hero-cta">
                    <button class="btn-primary" id="heroShopBtn">Explore now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn-outline" id="heroDealsBtn">Flash sale <i class="fas fa-tag"></i></button>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=600&q=80" alt="hero fashion">
            </div>
        </div>
    </div>

    <!-- categories section -->
    <div class="container">
        <div class="section-head">
            <h2>Shop by vibe</h2>
            <p>what sparks your style?</p>
        </div>
        <div class="cat-grid" id="dynamicCategories"></div>
    </div>

    <!-- products grid -->
    <div class="container" id="products-section">
        <div class="section-head">
            <h2>✨ trending picks</h2>
            <p>most wanted this week</p>
        </div>
        <div class="product-grid" id="productContainer"></div>
    </div>

    <!-- flash sale area -->
    <div class="container" id="deals-section">
        <div class="flash-deal">
            <div style="flex:1">
                <h2 style="font-size: 2rem; font-weight: 700;">⚡ FLASH SALE</h2>
                <p style="opacity:0.85; margin-top: 8px;">Signature bundle + extra 15% off</p>
                <div class="timer-modern" id="dealTimerBlock">
                    <div class="time-card"><div class="time-number" id="daysDeal">0</div><div>DAYS</div></div>
                    <div class="time-card"><div class="time-number" id="hoursDeal">00</div><div>HRS</div></div>
                    <div class="time-card"><div class="time-number" id="minsDeal">00</div><div>MINS</div></div>
                    <div class="time-card"><div class="time-number" id="secsDeal">00</div><div>SEC</div></div>
                </div>
                <div style="display: flex; gap: 24px; align-items: baseline; flex-wrap: wrap; margin-top: 16px;">
                    <div><span style="font-size: 2rem; font-weight: 800;">$849</span> <span style="text-decoration: line-through; opacity:0.6;">$1299</span></div>
                    <button class="btn-primary" id="flashBuyBtn" style="background:#FF6B6B;">Claim deal <i class="fas fa-gift"></i></button>
                </div>
            </div>
            <div style="flex:0.8; min-width: 160px;">
                <img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=500&q=80" style="width:100%; border-radius: 32px;" alt="sale item">
            </div>
        </div>
    </div>

    <!-- testimonials -->
    <div class="container">
        <div class="section-head"><h2>❤️ loved by customers</h2></div>
        <div class="testimonial-scroll" id="testiList"></div>
    </div>

    <!-- newsletter modern -->
    <div class="container">
        <div class="newsletter-premium">
            <i class="fas fa-envelope-open-text" style="font-size: 2rem; color:#FF6B6B;"></i>
            <h3 style="font-size: 1.8rem;">stay radiant ✨</h3>
            <p>Get early access to drops & secret sales</p>
            <div style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 20px;">
                <input type="email" id="newsEmail" placeholder="Your email address" style="border-radius: 80px; border: 1px solid #e2e8f0; padding: 14px 20px; width: 280px;">
                <button class="btn-primary" id="subscribeModernBtn" style="background:#1E2A44;">Subscribe</button>
            </div>
            <div id="newsMessage" style="margin-top: 16px; font-size: 0.9rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 30px;">
        <div><h3 style="color:white;">LUMINA</h3><p style="max-width: 240px;">Minimalist shop with soul. Good design, great energy.</p></div>
        <div><strong>Explore</strong><br>New Arrivals<br>Best Sellers<br>Lookbook</div>
        <div><strong>Support</strong><br>FAQs<br>Returns<br>Contact</div>
    </div>
    <div style="text-align: center; margin-top: 48px;">© 2025 LUMINA — all vibes reserved.</div>
</footer>

<script>
    // ----- enhanced DATA (beautiful product set) -----
    const CATEGORY_DATA = [
        { id: 'wear', name: 'Streetwear', icon: 'fa-shirt' },
        { id: 'tech', name: 'Gadgets', icon: 'fa-microchip' },
        { id: 'sneakers', name: 'Kicks', icon: 'fa-shoe-prints' },
        { id: 'access', name: 'Accessories', icon: 'fa-gem' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'lifestyle', name: 'Lifestyle', icon: 'fa-couch' }
    ];

    const PRODUCT_LIST = [
        { id: 101, title: 'Aether Hoodie', price: 89, oldPrice: 129, rating: 5, img: 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80', category: 'wear', badge: '🔥 hot' },
        { id: 102, title: 'Urban Runner 3.0', price: 119, oldPrice: 159, rating: 4, img: 'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?auto=format&fit=crop&w=600&q=80', category: 'sneakers', badge: 'sale' },
        { id: 103, title: 'Orbit Wireless Earbuds', price: 79, rating: 5, img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 104, title: 'Minimalist Backpack', price: 64, oldPrice: 99, rating: 5, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'access', badge: 'eco' },
        { id: 105, title: 'Smart Watch Ultra', price: 249, rating: 4, img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'tech', badge: 'new' },
        { id: 106, title: 'Silk Blend Tee', price: 49, oldPrice: 79, rating: 4, img: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80', category: 'wear' },
        { id: 107, title: 'Noise Cancelling Headphones', price: 199, rating: 5, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio', badge: '-25%' },
        { id: 108, title: 'Leather Cardholder', price: 35, rating: 4, img: 'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?auto=format&fit=crop&w=600&q=80', category: 'access' }
    ];

    let cartItemCount = 0;

    function showToast(message) {
        let existing = document.querySelector('.toast-msg');
        if(existing) existing.remove();
        const toast = document.createElement('div');
        toast.className = 'toast-msg';
        toast.innerHTML = `<i class="fas fa-check-circle"></i> ${message}`;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 2000);
    }

    function updateCartUI() {
        document.getElementById('cartCountDisplay').innerText = cartItemCount;
    }

    function addToCartById(productId) {
        const product = PRODUCT_LIST.find(p => p.id === productId);
        if(product) {
            cartItemCount++;
            updateCartUI();
            showToast(`✨ ${product.title} added to cart`);
        }
    }

    // render categories
    function renderCategories() {
        const grid = document.getElementById('dynamicCategories');
        grid.innerHTML = '';
        CATEGORY_DATA.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card-modern';
            card.innerHTML = `
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <p style="font-size: 13px; color:#7F8FA4;">shop now →</p>
            `;
            card.addEventListener('click', () => {
                const searchField = document.getElementById('searchField');
                searchField.value = cat.name;
                filterProductsBySearch(cat.name);
                document.getElementById('products-section').scrollIntoView({ behavior: 'smooth' });
            });
            grid.appendChild(card);
        });
    }

    function filterProductsBySearch(query) {
        const term = query.trim().toLowerCase();
        if (!term) return renderProducts(PRODUCT_LIST);
        const filtered = PRODUCT_LIST.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
    }

    function renderProducts(productsArray) {
        const container = document.getElementById('productContainer');
        container.innerHTML = '';
        if(productsArray.length === 0) {
            container.innerHTML = '<div style="text-align:center; width:100%; padding:40px;">✨ No products match, explore other categories ✨</div>';
            return;
        }
        productsArray.forEach(prod => {
            const prodDiv = document.createElement('div');
            prodDiv.className = 'product-card';
            prodDiv.innerHTML = `
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-info">
                    <div style="display:flex; justify-content:space-between; align-items:center;">
                        <strong style="font-size:1.1rem;">${prod.title}</strong>
                        ${prod.badge ? `<span style="background:#FFEDED; padding:4px 12px; border-radius:60px; font-size:11px;">${prod.badge}</span>` : ''}
                    </div>
                    <div style="margin: 12px 0 8px;">
                        <span class="price-tag">$${prod.price}</span>
                        ${prod.oldPrice ? `<span style="text-decoration:line-through; margin-left:10px; color:#9aa9bf;">$${prod.oldPrice}</span>` : ''}
                    </div>
                    <div style="display:flex; align-items:center; gap:8px; margin-bottom:16px;">
                        <span style="color:#FFB347;">${'★'.repeat(prod.rating)}${'☆'.repeat(5-prod.rating)}</span>
                    </div>
                    <button class="add-cart-btn" data-pid="${prod.id}"><i class="fas fa-shopping-bag"></i> Add to bag</button>
                </div>
            `;
            container.appendChild(prodDiv);
        });
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const pid = parseInt(btn.getAttribute('data-pid'));
                addToCartById(pid);
                const originalText = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => { btn.innerHTML = originalText; }, 1000);
            });
        });
    }

    // testimonials dynamic
    const testimonials = [
        { name: "Sofia Chen", text: "Best quality and insane design. The sneakers are next level!", stars: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus Lee", text: "Fast shipping, great customer care. Will order again.", stars: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
        { name: "Elena Rossi", text: "Love the minimalist vibe. The packaging is stunning.", stars: 4, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
    ];
    function loadTestimonials() {
        const tContainer = document.getElementById('testiList');
        tContainer.innerHTML = '';
        testimonials.forEach(t => {
            const card = document.createElement('div');
            card.className = 'testimonial-card';
            card.innerHTML = `
                <div style="display:flex; align-items:center; gap:12px; margin-bottom:12px;">
                    <img src="${t.avatar}" style="width:48px; height:48px; border-radius:50%; object-fit:cover;">
                    <div><strong>${t.name}</strong><div>${'⭐'.repeat(t.stars)}</div></div>
                </div>
                <p style="font-style:italic;">“${t.text}”</p>
            `;
            tContainer.appendChild(card);
        });
    }

    // Flash sale countdown timer (48hrs)
    function startCountdown() {
        const targetDate = new Date();
        targetDate.setHours(targetDate.getHours() + 47);
        targetDate.setMinutes(targetDate.getMinutes() + 59);
        function update() {
            const now = new Date();
            const diff = targetDate - now;
            if(diff <= 0) {
                document.getElementById('daysDeal').innerText = '0'; document.getElementById('hoursDeal').innerText = '00';
                document.getElementById('minsDeal').innerText = '00'; document.getElementById('secsDeal').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000*60*60*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('daysDeal').innerText = days;
            document.getElementById('hoursDeal').innerText = String(hours).padStart(2,'0');
            document.getElementById('minsDeal').innerText = String(mins).padStart(2,'0');
            document.getElementById('secsDeal').innerText = String(secs).padStart(2,'0');
        }
        update();
        setInterval(update, 1000);
    }

    // search events
    function bindSearch() {
        const searchField = document.getElementById('searchField');
        const searchHandler = () => filterProductsBySearch(searchField.value);
        searchField.addEventListener('input', searchHandler);
        document.getElementById('heroShopBtn').addEventListener('click', () => {
            document.getElementById('products-section').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('heroDealsBtn').addEventListener('click', () => {
            document.getElementById('deals-section').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('flashBuyBtn').addEventListener('click', () => {
            cartItemCount++;
            updateCartUI();
            showToast('🔥 Flash deal added to cart!');
        });
        document.getElementById('subscribeModernBtn').addEventListener('click', () => {
            const email = document.getElementById('newsEmail').value;
            const msgDiv = document.getElementById('newsMessage');
            if(!email || !email.includes('@')) {
                msgDiv.innerHTML = '<span style="color:#FF6B6B;">valid email needed 🌸</span>';
            } else {
                msgDiv.innerHTML = '<span style="color:#38A169;">🎉 You’re in! exclusive deals on the way.</span>';
                document.getElementById('newsEmail').value = '';
                setTimeout(() => msgDiv.innerHTML = '', 3000);
            }
        });
        document.getElementById('cartIconBtn').addEventListener('click', () => {
            showToast(`🛍️ Cart has ${cartItemCount} item${cartItemCount !== 1 ? 's' : ''}`);
        });
    }

    // initial render & reset
    function init() {
        renderCategories();
        renderProducts(PRODUCT_LIST);
        loadTestimonials();
        startCountdown();
        bindSearch();
        updateCartUI();
        // bonus: search clear on load
        const searchField = document.getElementById('searchField');
        if(searchField) searchField.value = '';
    }
    init();
</script>
</body>
</html>
