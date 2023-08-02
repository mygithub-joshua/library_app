class PopularBookModel {
  String title, author, published, image, description, directions, title2;
  int color;

  PopularBookModel(
    this.title,
    this.author,
    this.published,
    this.image,
    this.color,
    this.description,
    this.directions,
    this.title2,
  );
}

//NEW  BOOK SECTION

List<PopularBookModel> newest = newestBookData
    .map(
      (item) => PopularBookModel(
        item['title'] as String,
        item['author'] as String,
        item['published'] as String,
        item['image'] as String,
        item['color'] as int,
        item['description'] as String,
        item['directions'] as String,
        item['title2'] as String,
      ),
    )
    .toList();

var newestBookData = [
  {
    "title": "",
    "author": "Muhlasin¹, Noviandi²*, Rafi N Romadhon3, Samson Wijaya4",
    "published": "2022",
    "image": "assets/images/new-jurnal-1.png",
    "color": 0xffFFFFFF,
    "description":
        "Pergantian bisnis konvensional menjadi bisnis digital, membuat jasa pengiriman barang semakin dibutuhkan oleh masyarakat saat ini. Jasa pengiriman barang juga semakin banyak digunakan setelah maraknya bisnis toko online yang masuk ke Indonesia. Peningkatan transaksi jual beli di toko online membuat jasa pengiriman semakin dibutuhkan khususnya di kota-kota besar Indonesia. Pengiriman barang yang dilakukan oleh seorang kurir dalam satu hari bisa mencapai ratusan alamat pengiriman dalam satu kali perjalanan. Pengiriman barang yang cepat dan efisien akan meningkatkan keuntungan perusahaan dan menambah kepuasan bagi konsumen yang menggunakan jasa pengiriman barang tersebut. Untuk mempermudah kurir dalam pengiriman barang, diperlukan suatu alat yang dapat digunakan untuk menentukan rute perjalanan pengiriman barang yang efisien dari titik awal sampai titik akhir. Oleh karena itu, perancangan aplikasi rute multi-stop dengan menggunakan Algoritma Floyd-Warshall diharapkan mampu membantu para kurir untuk menentukan rute yang efisien dalam pengiriman barang. Pengembangan aplikasi rute multi-stop menggunakan metode Extreme Programming (XP), yang mana memiliki karakteristik cepat, fleksibel, dan sesuai untuk tim pengembang kecil. Aplikasi rute multi-stop ini dirancang dan dikembangkan untuk platform mobile yang mendukung mobilitas kurir. \n \n Hasil penelitian membuktikan aplikasi rute multi-stop menggunakan Algoritma Floyd-Warshall dapat membantu kurir dalam mengirimkan barang dengan efisien.",
    "directions":
        "https://drive.google.com/file/d/1rSiSDFtB3kq0h_plkXWKJUglymapr73s/view?usp=drive_link", //CHANGE
    "title2":
        "ALGORITMA FLOYD-WARSHALL DALAM MENENTUKAN RUTE MULTI-STOP UNTUK EFISIENSI PENGIRIMAN BARANG" //CHANGE
  },
  {
    "title": "DIGITALISASI UMKM DENGAN....",
    "author": "Zidan Daffa, Anik Hanifatul Azizah, Budi Tjahjono",
    "published": "2022",
    "image": "assets/images/new-jurnal-2.png",
    "color": 0xffFFFFFF,
    "description":
        "Toko Balgis Cake adalah salah satu usaha mikro kecil menengah (UMKM) bergerak di bidang penjualan produk makanan dan masakan olahan. Selama proses penjualan yang dilakukan oleh pihak Balgis & Cake Frozen, terdapat beberapa permasalahan yang terjadi diantaranya proses jual beli masih dilakukan secara konvensional, dimana customer datang mengunjungi toko untuk melakukan pembelian secara manual sehingga pihak toko tidak dapat memfasilitasi customer yang tidak dapat datang langsung ke toko untuk melakukan transaksi pembelian. Jika dilihat dari segi pemasaran jaringan penjualan produknya hanya mencakup daerah sekitar kota Cirebon saja. \n\n Untuk mengatasi permasalahan diatas, maka penulis mengusulkan sebuah aplikasi e-commerce model business to consumer berbasis website yang dapat memudahkan customer dalam membeli produk yang dijual dan dapat meningkatkan pelayanan serta promosi pada Toko Balgis Cake. Metode dalam pengembangan aplikasi e-commerce yang digunakan adalah metode Prototype dan Pengujian perangkat lunak dilakukan dengan pengujian Blackbox. Aplikasi yang dibangun berbasis website menggunakan framework laravel dengan bahasa pemrograman PHP, untuk penyimpanan data pada website menggunakan MySQL.",
    "directions":
        "https://drive.google.com/file/d/1CZaXUMsugvyJsZTMm40e6eEc8JuZOkix/view?usp=sharing", //CHANGE
    "title2":
        "DIGITALISASI UMKM DENGAN MEMBANGUN APLIKASI E-COMMERCE MODEL BUSINESS TO CONSUMER (B2C) (STUDI KASUS: TOKO BALGIS CAKE)" //CHANGE
  },
  {
    "title": "ANALISIS PERFORMA FRAMEWORK....",
    "author": "Axel Christopher, Sherly Anjelina, Lina Lina",
    "published": "2022",
    "image": "assets/images/new-jurnal-3.png",
    "color": 0xffFFFFFF,
    "description":
        "Dengan berkembang pesatnya JavaScript belakangan ini, membuat beberapa Framework Javascript khususnya Frontend seperti Angular, React JS, dan VueJS menjadi populer. Maka, pada penelitian ini dilakukan pengujian perbandingan performa secara menyeluruh pada ketiga Framework Javascript Frontend tersebut, serta dengan pemberian tingkatan rekomendasi. Pengujian dilakukan dengan mengukur metrik FCP, SI, LCP, TTI, TBT, dan CLS. Terdapat satu poin pengujian performa Framework Javascript Frontend yang akan diujikan, berupa performa masing-masing Framework Javascript Frontend dalam mengurus Simple Dashboard, dimana semakin kecil nilai yang dihasilkan, semakin baik performanya. Pengujian perbandingan dilakukan dua kali terhadap ketiga Framework Javascript Frontend, lalu berikutnya dirangkum dan dijumlahkan nilai rerata. \n\n Hasil pengujian menyimpulkan React mendapatkan nilai rerata terkecil pada metrik FCP sebesar 0.5s,  metrik SI sebesar 0.95s, metrik LCP sebesar 1.1s, metrik TTI sebesar 1.1s, metrik TBT sebesar 15ms, dan metrik CLS sebesar 0s. Berbekal hasil pengujian yang telah dilakukan pada penelitian komparasi performa ini, dapat disimpulkan bahwa React mempunyai performa unggul dan sangat direkomendasikan agar digunakan oleh para pengembang khususnya Frontend Developer.",
    "directions":
        "https://drive.google.com/file/d/1frxwy83NlZRgLydL3RYXWvX2wlcCj9lp/view?usp=drive_link", //CHANGE
    "title2":
        "ANALISIS PERFORMA FRAMEWORK FRONTEND JAVASCRIPT BAGI PROGRAMMER" //CHANGE
  },
  {
    "title": "SIMULASI SISTEM ANTRIAN....",
    "author":
        "Badie Uddin, Randy Rizki Ananda, Diaz Achmad Fahrezi, Nida Fadhilah",
    "published": "2022",
    "image": "assets/images/new-jurnal-4.png",
    "color": 0xffFFFFFF,
    "description":
        "Antrian merupakan suatu peristiwa yang terjadi ketika jumlah sumber daya pelayanan lebih kecil dibandingkan dengan jumlah konsumen. Hal ini dapat menyebabkan terjadinya penurunan keuntungan yang akan didapat perusahaan. Salah satu tempat yang tidak luput dari antrian adalah Apotek. Apotek merupakan tempat proses pengambilan atau menjual obat yang dimana pada proses pengambilan atau menjual obat sering terjadi antrian pada waktu-waktu tertentu. Penelitian ini bertujuan untuk fasilitas pelayanan dengan meminimalkan waktu menunggu. Kualitas pelayanan Apotek saat ini masih belum optimal dikarenakan lamanya waktu tunggu yang dibutuhkan untuk seorang pelanggan. Apabila waktu tunggu terlalu lama maka dapat mengurangi kepuasan dan kenyamanan para pelanggan. Solusi untuk mengurangi waktu tunggu yaitu dengan menerapkan model sistem antria. \n\n Program C++ dapat memperkirakan situasi antrian sesungguhnya. Sistem antrian C++ memungkinkan untuk menentukan ukuran situasi antrian yang terkait dengan masalah kecepatan pelayanan. Hasil dari penelitian dengan menggunakan analisis teori antrian yaitu dengan perhitungan model antrian satu jalur pelayanan sehingga menunjukkan bahwa pada keadaan bukan jam sibuk, jumlah jalur fasilitas yang digunakan sebanyak satu jalur fasilitas sudah baik, namun tidak pada keadaan jam sibuk yaitu pukul 08.00-10.00. Data nilai antrian, variabel sistem, dan flowchart diberikan sebagai informasi dan untuk meningkatkan kualitas pelayanan bagi para pelanggan.",
    "directions":
        "https://drive.google.com/file/d/1bSu_p2Wyw_Q5x3GBTL-WWlOCUTGcoSNH/view?usp=drive_link", //CHANGE
    "title2":
        "SIMULASI SISTEM ANTRIAN PELANGGAN APOTEK KIMIA FARMA CITRA RAYA KABUPATEN TANGERANG", //CHANGE
  },
];

//TRENDING  BOOK SECTION

List<PopularBookModel> trending = trendingBookData
    .map(
      (item) => PopularBookModel(
        item['title'] as String,
        item['author'] as String,
        item['published'] as String,
        item['image'] as String,
        item['color'] as int,
        item['description'] as String,
        item['directions'] as String,
        item['title2'] as String,
      ),
    )
    .toList();

var trendingBookData = [
  {
    "title": "PERANCANGAN SISTEM PENJUALAN....",
    "author": "Cici Rahmawati, Yunita Fauzia Achmad",
    "published": "2021",
    "image": "assets/images/trend-jurnal-1.png",
    "color": 0xffFFFFFF,
    "description":
        "Toko Berkah merupakan salah satu distributor yang menyediakan berbagai macam kebutuhan pokok seperti minyak, tepung, beras, dan lain-lain. Pada Toko Berkah proses penjualan dan pendataan barang, harga, jumlah dan data transaksi masih dilakukan secara manual. Tujuan dari penelitian ini adalah untuk merancang sistem informasi penjualan dan pendataan barang pada Toko Berkah. Metode pengembangan sistem yang digunakan pada penelitian ini adalah metode prototype, sedangkan pemodelan sistem yang digunakan adalah metode Unified Modeling Language (UML). Sistem informasi penjualan dan pendataan barang ini menjadi salah satu solusi yang dapat digunakan untuk mempermudah pemilik Toko Berkah dalam mengelola data penjualan dan data laporan barang menjadi lebih mudah, cepat dan efisien. Sehingga dapat membantu dalam meningkatkan keuntungan Toko Berkah dalam  menjalankan usahanya. Penelitian ini juga melakukan pengujian pada sistem yang telah dikembangkan dengan menggunakan metode blackbox testing dan output yang dihasilkan pada penelitian ini adalah aplikasi sistem penjualan dan pendataan barang sembako pada Toko Berkah yang menyediakan fitur stok barang, laporan stok barang, Kelola data Pelanggan data transaksi, laporan data transaksi, laporan penjualan dan lain-lain disesuaikan dengan kebutuhan pengguna sistem.",
    "directions":
        "https://drive.google.com/file/d/1TRlNPVzxveBIdkz3xGIlwHlK3XfInI_3/view?usp=drive_link",
    "title2":
        "PERANCANGAN SISTEM PENJUALAN DAN PENDATAAN BARANG PADA TOKO BERKAH MENGGUNAKAN METODE PROTOTYPE", //CHANGE
  },

  //
  {
    "title": "PERANCANGAN SISTEM PENA.....",
    "author": "Adinda Diana Chaedir, Nizirwan Anwar",
    "published": "2021",
    "image": "assets/images/trend-jurnal-2.png",
    "color": 0xffFFFFFF,
    "description":
        "Proses transaksi di setiap perusahaan merupakan salah satu kegiatan bisnis yang sering terjadi, baik secara langsung maupun tidak langsung. Proses transaksi langsung seperti melalui e-commerce sedangkan secara tidak langsung seperti menyiapkan penawaran harga yang kemudian akan direview oleh manajemen perusahaan pelanggan. PT Glous Tech Info merupakan perusahaan yang menyediakan produk IT, oleh karena itu perlu adanya penawaran harga untuk diberikan kepada pelanggannya. Namun dalam pembuatan penawaran harga dan laporan masih menggunakan cara manual seperti Microsoft Excel. Pada penelitian yang akan dilakukan, peneliti mengusulkan untuk merancang sistem penawaran berbasis web untuk memudahkan proses pembuatan penawaran harga dan pelaporan. Perancangan sistem menggunakan UML (Unified Modelling Language) dan metode pengembangannya menggunakan waterfall.",
    "directions":
        "https://drive.google.com/file/d/1vwK7B0xjihEFbRNIMexgP5PDrJ0WEFNp/view?usp=drive_link",
    "title2":
        "PERANCANGAN SISTEM PENAWARAN HARGA BERBASIS WEB DI PT GLOUS TECH INFO", //CHANGE
  },

  //
  {
    "title": "IMPLEMENTASI METODE DESIGN....",
    "author":
        "Diah Aryani, Pas Mahyu Akhirianto, \n Fathinatul Husnah, Kartini Kartini,Popong Setiawati",
    "published": "2021",
    "image": "assets/images/trend-jurnal-3.png",
    "color": 0xffFFFFFF,
    "description":
        "Usaha Mikro Kecil dan Menenggah (UMKM) merupakan pilar terpenting dalam perekonomian Indonesia sebagai penyumbang Prodok Domestik Broro (PDB) sejumlah lebih dari 60% Jumlah UMKM di Indonesia tahun 2021 dari keseluruhan sektor usaha namun pada era digital seperti sekarang ini masyarakat sangat di fasilitasi dalam memenuhi sesuatu kebutuhan yang mereka perlukan diantaranya pada marketplace kita dapat memenuhi segala kebutuhan serta keinginan yang ingin kita miliki. Sehingga hal ini menjadi tantangan UMKM ke depan yang harus diatasi Bersama-sama segenap stakeholders yang salah satunya terkait dengan terkait antara lain berkaitan dengan inovasi dan teknologi, pemerataan pembinaan dan pelatihan untuk mendukung peningkatan daya saing UKM tersebut. Penelitian ini bertujuan untuk mendesain User Interface (UI) dan User Experience (UX) website education marketplace dengan metode Desain Thinking dengan  fitur yang dapat memberikan akses yang lebih mudah dengan program edukasi dan mentoring para pendiri UMKM di Indonesia lebih maju di era digital. Berdasarkan hasil metode Design Thinking berbasis Website pada Education Marketplace diporoleh hasil tes usability testing dengan hasil analisa data SUS diperoleh nilai sebesar 85 maka dirasi dapat membantu dalam menghasilkan sebuah prototype sesuai sesuai Calon pengguna Fitur Kolaborasi Website Education Marketplace.",
    "directions":
        "https://drive.google.com/file/d/1vNm5WtIoR7QzIy5ij1oscNHcdlh9j0LK/view?usp=drive_link",
    "title2":
        "IMPLEMENTASI METODE DESIGN THINKING PADA DESAIN USER INTERFACE (UI) DAN USER EXPERIENCE (UX) WEBSITE EDUCATION MARKETPLACE", //CHANGE
  },

  //
  {
    "title": "RANCANG BANGUN SI....",
    "author": "Aziza Anisawati, Holder Simorangkir, Kundang Karsono \nJuman",
    "published": "2021",
    "image": "assets/images/trend-jurnal-4.png",
    "color": 0xffFFFFFF,
    "description":
        "Dalam memberikan layanan digital ICT dan IT di PT Indosat Tbk, sales akan dibantu oleh tim solusi atau yang dikenal presales dalam memberikan desain solusi dari layanan yang akan ditawarkan. Banyaknya proses yang dilakukan untuk menentukan suatu desain solusi proyek, seringkali menyulitkan karyawan untuk membuat laporan aktivitas kerja. Laporan aktivitas kerja masih dibuat secara manual menggunakan microsoft excel dengan melakukan rekapitulasi setiap aktivitas kerja. Penyimpanan data historis proyek secara individu, menyulitkan manajer untuk memonitor dan mencadangkan pekerjaan karyawan. Dalam mengatasi permasalahan tersebut maka dibuatlah sebuah sistem yang dapat memonitoring setiap aktivitas pekerjaan, memudahkan pembuatan laporan pekerjaan dan penyimpanandata proyek dalam sistem berbasis web yang dibuat dengan menggunakan metode pengembangan sistem waterfalldan perancangan sistem UML. Adanya sistem ini, semua aktivitas pekerjaan dapat termonitor dan tercatat secara otomatis.",
    "directions":
        "https://drive.google.com/file/d/15Doxbr7Bgw89y6_CTFixHtd8s1-gqlND/view?usp=drive_link",
    "title2":
        "RANCANG BANGUN SISTEM MONITORING KINERJA KARYAWAN MENGGUNAKAN METODE PENGEMBANGAN SISTEM WATERFALL", //CHANGE
  },
];

//blm di edit : popular, all links to gdrive, file blm di upload ke gdrive
//POPULAR

List<PopularBookModel> populars = popularBookData
    .map(
      (item) => PopularBookModel(
        item['title'] as String,
        item['author'] as String,
        item['published'] as String,
        item['image'] as String,
        item['color'] as int,
        item['description'] as String,
        item['directions'] as String,
        item['title2'] as String,
      ),
    )
    .toList();

var popularBookData = [
  {
    "title": "PEMBANGUNAN BALAI LE....",
    "author": "Dewi Eka Putri",
    "published": "2022",
    "image": "assets/images/popular-jurnal-1.png",
    "color": 0xffFFFFFF,
    "description":
        "Sejalan dengan berkembangnya teknologi, dunia bisnis mulai mengembangkan sayap mereka untuk berlomba-lomba menjadi yang terbaik. Dan untuk mewujudkan impian tersebut maka banyak perusahaan-perusahaan besar merasa bahwa perlu mengadakan perubahan dalam sistem bisnis yang mereka jalani. \n\n Internet menjadi salah satu wadah untuk mengembangkan bisnis yang telah ada. Bisnis-bisnis tradisional saat ini telah mulai berkembang menjadi bisnis elektronik atau biasanya di sebut E-Business. Dalam E-Business, memiliki cakupan yang sangat luas, karena tidak hanya membahas mengenai E-Commerce saja melainkan juga membahas tentang interaksi antara pelanggan dengan perusahaan. Salah satu pengembangannya adalah Lelang Online. Oleh karena itu, PT. Gramedia Pustaka Utama merupakan salah satu penerbit buku terbesar, dan telah menerapkan E-Commerce. Untuk menyempurnakan lagi bisnis yang mereka jalani, maka diusulkan sebuah konsep baru yaitu E-Auction/Lelang Online. Perancangan lelang online ini menggunakan pemodelan object oriented dengan menggunakan UML (Unified Modeling Language), dan bahasa pemrograman PHP serta Database MySQL. Dengan mengusulkan pembangunan balai lelang online diharapkan dapat meningkatkan bisnis yang telah berkembang sejak lama ini.",
    "directions":
        "https://drive.google.com/file/d/1OM79iscVjNKesECPjn1d8ekCyxvzzeMl/view?usp=drive_link",
    "title2":
        "PEMBANGUNAN BALAI LELANG ONLINE BERDASARKAN KONSEP EBUSINESS (STUDI KASUS PT. GRAMEDIA PUSTAKA UTAMA)",
  },
  {
    "title": "RANCANG BANGUN SISTEM....",
    "author": "Binastya Anggara Sekti1* , Puji Lestari2",
    "published": "2021",
    "image": "assets/images/popular-jurnal-2.png",
    "color": 0xffFFFFFF,
    "description":
        "Stasiun Meteorologi Budiarto sebagai penyedia layanan informasi MET report untuk keperluan takeoff and landing yang selalu digunakan oleh user dan stakeholder. khususnya taruna Politeknik Penerbangan Indonesia (PPI), Aero Flyer (Sekolah Penerbang Maskapai Batavia Airlines) dan Air Traffic Controller (ATC), yang digunakan untuk menentukan landas pacu di Bandara Budiarto. \n\n Sistem layanan informasi MET report yang berjalan saat ini masih membutuhkan waktu yang lama dalam mengolah MET report karena data mentah di dapat dari hasil pengamatan kemudian data mentah tersebut diolah kedalam Microsoft Excel sehingga belum berjalan dengan efektif, membutuhkan waktu dan jarak tempuh dari flop untuk mengirimkan MET report ke ATC dan Taruna penerbang sehingga sistem saat ini belum berjalan dengan efektif, selain itu dalam menyampaikan informasi MET report melalui telepon dapat terjadi kemungkinan salah pembacaan MET report sehingga informasi yang disampaikan ke ATC dan taruna penerbang kurang akurat. Dalam penelitian ini telah behasil dibuat sistem Informasi Data Meteorologi Penerbangan Pengamatan Sinoptik (MET report) Berbasis Web yang akan mempermudah observer, ATC dan taruna penerbang untuk mendapatkan MET report yang diperlukan dalam sebuah aplikasi. Sistem ini dibuat menggunakan bahasa pemograman PHP dan database Mysql. Metode analisis menggunakan PIECES, pengembangan sistem waterfall dan pengujian sistem menggunakan blackbox system.",
    "directions":
        "https://drive.google.com/file/d/1yje9jcdv9qOUvPKlf8ZzEUh6Zl-vicSd/view?usp=drive_link", //CHANGE
    "title2":
        "RANCANG BANGUN SISTEM INFORMASI DATA METEOROLOGI PENERBANGAN PENGAMATAN SINOPTIK (MET Report) BERBASIS WEB STASIUN METEOROLOGI BUDIARTO",
  },
  {
    "title": "PENGUJIAN SISTEM PENDUKU....",
    "author": "Yunita Fauzia Achmad, Alivia Yulfitri",
    "published": "2020",
    "image": "assets/images/popular-jurnal-3.png",
    "color": 0xffFFFFFF,
    "description":
        "Pengembangan sistem memiliki beberapa tahapan diantaranya adalah tahap analisis, perencanaan, desain dan implementasi. Pada tahapan implementasi dibagi menjadi dua yaitu pengujian dan perawatan sistem. Pengujian merupakan proses pengecekan apakah suatu sistem sudah dapat dijalankan sesuai dengan standar yang ditentukan. Secara umum, pengujian sistem dapat diklasifikasi menjadi dua yaitu software testing techniques dan software testing strategies. Software testing techniques diklasifikasikan menjadi dua golongan yaitu white box testing dan black box testing, sedangkan untuk software testing strategies diklasifikasi menjadi 3 yaitu unit testing, integration testing, dan validation testing. Pada penelitian ini software testing techniques yang diterapkan menggunakan Teknik black box testing, sedangkan software testing strategies yang diterapkan menggunakan validation testing. Teknik black box testing berfokus kepada perilaku sistem berdasarkan kebutuhan fungsional sistem, sedangkan validation testing dilakukan untuk menjamin kesesuaian sistem dengan desain yang telah diterapkan. Pada validation testing terdapat dua pengujian yang dilakukan yaitu alpha testing dan beta testing . E-Wisuda Institut Sains dan Teknologi Al-Kamal adalah sistem pendukung keputusan berbasis web yang dibuat untuk membantu anggota senat dalam menentukan lulusan terbaik, sekaligus menjadi wisudawan / wisudawati terbaik pada prosesi wisuda. \n\n hasil pengujian sistem pendukung keputusan E-Wisuda menyatakan bahwa sistem tidak memiliki kesalahan sintaks dan secara fungsional menghasilkann sistem yang telah sesuai dengan kebutuhan pengguna serta sistem dapat membantu pengguna dalam penentuan lulusan terbaik dan memberikan hasil yang akurat.",
    "directions":
        "https://drive.google.com/file/d/1JW1ccno6zqnbXyHxIMquci8FuOMCT8cW/view?usp=drive_link",
    "title2":
        "PENGUJIAN SISTEM PENDUKUNG KEPUTUSAN MENGGUNAKAN BLACK BOX TESTING STUDI KASUS E-WISUDAWAN DI INSTITUT SAINS DAN TEKNOLOGI AL-KAMAL", //CHANGE
  },
];
