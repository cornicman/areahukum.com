<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AreaHukum | Media Informasi</title>
    <meta name="description" content="AreaHukum adalah media informasi yang menyajikan konten menarik, informatif, dan mudah dipahami.">
    <meta name="keywords" content="areahukum, media informasi, informasi modern, konten informatif">
    <meta property="og:title" content="AreaHukum | Media Informasi">
    <meta property="og:description" content="Media informasi modern dengan konten yang informatif dan mudah dipahami.">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="header">
        <div class="container nav">
            <a href="#" class="brand" aria-label="AreaHukum">
                <span class="brand-text">Area<span class="brand-accent">Hukum</span></span>
            </a>
            <div class="header-right">
                <div id="dateNow" class="date-box"></div>
                <form class="search-box" action="#" onsubmit="event.preventDefault(); const target = this.querySelector('select').value; location.hash = target;">
                    <select aria-label="Pilih kategori">
                        <option value="#tentang">Tentang</option>
                        <option value="#media">Media</option>
                        <option value="#kontak">Kontak</option>
                    </select>
                    <input type="text" placeholder="Cari di sini..." aria-label="Kata kunci" />
                    <button type="submit">Cari</button>
                </form>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container hero-grid">
                <div class="hero-copy">
                    <p class="tag">Media</p>
                    <h1>KEADILAN</h1>
                    <p>Temukan informasi yang dapat membantu Anda</p>
                </div>

            </div>
        </section>

        <section id="tentang" class="section">
            <div class="container">
                <h2>Tentang</h2>
                <p>AreaHukum adalah media informasi yang menyajikan konten tentang hukum, panduan, dan analisis yang mudah dipahami.</p>
            </div>
        </section>

        <section id="media" class="section alt">
            <div class="container">
                <h2>Media</h2>
                <p>Berita dan artikel terbaru akan ditampilkan di sini. Gunakan kategori di kotak pencarian untuk langsung menuju bagian ini.</p>
            </div>
        </section>

        <section id="kontak" class="section">
            <div class="container">
                <h2>Kontak</h2>
                <p>Untuk kerjasama atau pertanyaan: info@areahukum.com</p>
            </div>
        </section>

    </main>

    <footer class="footer">
        <div class="container">
            <p>© 2026 Area Hukum.</p>
        </div>
    </footer>

    <script>
        const dateNow = document.getElementById('dateNow');
        const now = new Date();
        const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        dateNow.textContent = now.toLocaleDateString('id-ID', options);
    </script>
</body>
</html>