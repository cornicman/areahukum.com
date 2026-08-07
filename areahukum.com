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
                <form class="search-box" action="#">
                    <select aria-label="Pilih kategori">
                        <option value="#tentang">Tentang</option>
                        <option value="#berita">Berita</option>
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