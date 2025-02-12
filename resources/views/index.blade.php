@extends('layouts.landing')
@section('content')
<div class="modal fade" id="searchModal" tabindex="-1">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
            <div class="modal-header border-0">
                <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body d-flex align-items-center justify-content-center">
                <div class="input-group" style="max-width: 600px;">
                    <input type="text" class="form-control bg-transparent border-success p-3" placeholder="Type search keyword">
                    <button class="btn btn-success px-4"><i class="bi bi-search"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid facts py-5 pt-lg-0">
    <div class="container py-5 pt-lg-0">
        <div class="row gx-0">
            <div class="col-lg-4 wow zoomIn" data-wow-delay="0.1s">
                <div class="bg-success shadow d-flex align-items-center justify-content-center p-4" style="height: 150px;">
                    <div class="bg-white d-flex align-items-center justify-content-center rounded mb-2" style="width: 60px; height: 60px;">
                        <i class="fa fa-users text-success"></i>
                    </div>
                    <div class="ps-4">
                        <h5 class="text-white mb-0">Total Penduduk</h5>
                        <h1 class="text-white mb-0" data-toggle="counter-up">{{ $totalPenduduk }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow zoomIn" data-wow-delay="0.3s">
                <div class="bg-light shadow d-flex align-items-center justify-content-center p-4" style="height: 150px;">
                    <div class="bg-success d-flex align-items-center justify-content-center rounded mb-2" style="width: 60px; height: 60px;">
                        <i class="fa fa-check text-white"></i>
                    </div>
                    <div class="ps-4">
                        <h5 class="text-success mb-0">Jumlah Pengajuan</h5>
                        <h1 class="mb-0" data-toggle="counter-up">{{ $totalPengajuan }}</h1>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
                <div class="bg-success shadow d-flex align-items-center justify-content-center p-4" style="height: 150px;">
                    <div class="bg-white d-flex align-items-center justify-content-center rounded mb-2" style="width: 60px; height: 60px;">
                        <i class="fa fa-flag text-success"></i>
                    </div>
                    <div class="ps-4">
                        <h5 class="text-white mb-0">Jumlah Pengaduan</h5>
                        <h1 class="text-white mb-0" data-toggle="counter-up">{{ $totalPengaduan }}</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-7">
                <div class="section-title position-relative pb-3 mb-5">
                    <h5 class="fw-bold text-success text-uppercase">Profil Desa</h5>
                    <h1 class="mb-0">Desa Cinta Kasih Kecamatan Belimbing Kabupaten Muara Enim</h1>
                </div>
                <p class="mb-4">Lokasi dan Batas Wilayah Administrasi Desa Desa Cinta Kasih merupakan salah satu desa yang ada di Kecamatan Belimbing, Kabupaten Muara Enim. Desa Cinta Kasih adalah salah satu desa pemekaran dari desa Darmo Kasih. Desa Cinta Kasih merupakan rumpun dari empat petulai dalam Belimbing yaitu Desa Tanjung, Desa Dalam, Desa Bulang dan Desa Belimbing. Desa Cinta Kasih memiliki luas wilayah 11 KM2. Adapun batas  batas wilayah Cinta Kasih Sebelah utara berbatasan dengan desa Darmo Kasih Sebelah selatan berbatasan dengan desa Tanjung, Simpang Tanjung, Darmo Kasih Sebelah timur berbatasan dengan desa Belimbing Jaya Sebelah barat berbatasan dengan desa Simpang Tanjung</p>
                
            </div>
            <div class="col-lg-5" style="min-height: 500px;">
                <div class="position-relative h-100">
                    <img class="position-absolute w-100 h-100 rounded wow zoomIn" data-wow-delay="0.9s" src="{{ asset('assets/images/profil-desa.jpg') }}" style="object-fit: cover;">
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
            <h1 class="mb-0">Lembaga Pemerintahan Desa Cinta Kasih</h1>
        </div>
        <div class="row g-5">
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon">
                        <i class="fa fa-shield-alt text-white"></i>
                    </div>
                    <h4 class="mb-3">Badan Permusyawaratan Desa (BPD)</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon">
                        <i class="fa fa-chart-pie text-white"></i>
                    </div>
                    <h4 class="mb-3">Lembaga Pemberdayaan Masyarakat (LPM)</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.9s">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon">
                        <i class="fa fa-code text-white"></i>
                    </div>
                    <h4 class="mb-3">Majelis Ulama Indonesia (MUI) Desa Cinta Kasih</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon">
                        <i class="fab fa-android text-white"></i>
                    </div>
                    <h4 class="mb-3">Pemberdayaan dan Kesejahteraan Keluarga (PKK)</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon">
                        <i class="fa fa-search text-white"></i>
                    </div>
                    <h4 class="mb-3">Perlindungan Masyarakat (LINMAS)</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon">
                        <i class="fa fa-search text-white"></i>
                    </div>
                    <h4 class="mb-3">Karang Taruna Sinar Pusaka</h4>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
            <h1 class="mb-0">Struktur Perangkat Desa Cinta Kasih</h1>
        </div>
        <div class="row g-5">
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.3s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">H. SAMSON ALI.S.T</h4>
                        <p class="text-uppercase m-0">KEPALA DESA</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.6s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">REZA OCTAVIA</h4>
                        <p class="text-uppercase m-0">SEKRETARIS</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">RAIHAN MUNAWAR.S.Si</h4>
                        <p class="text-uppercase m-0">KASI PELAYANAN</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">SAMSUL JAYA</h4>
                        <p class="text-uppercase m-0">KASI PEMERINTAHAN</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">NAZARUDIN</h4>
                        <p class="text-uppercase m-0">KASI KESEJAHTERAAN</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">ERTASI JULIANA</h4>
                        <p class="text-uppercase m-0">KAUR TU & UMUM</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">MIFTAHUL JANAH</h4>
                        <p class="text-uppercase m-0">KAUR KEUANGAN</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">SUHARJO</h4>
                        <p class="text-uppercase m-0">KAUR PERENCANAAN</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">HASNEN HADI</h4>
                        <p class="text-uppercase m-0">KADUS 1</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">ERHAM</h4>
                        <p class="text-uppercase m-0">KADUS 2</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">EVAN YANES DS.S.T</h4>
                        <p class="text-uppercase m-0">KADUS 3</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">RAHMAT</h4>
                        <p class="text-uppercase m-0">KADUS 4</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 wow slideInUp" data-wow-delay="0.9s">
                <div class="team-item bg-light rounded overflow-hidden">
                    <div class="team-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" width="150" src="{{ asset('assets/images/stk.png') }}" alt="">
                    </div>
                    <div class="text-center py-4">
                        <h4 class="text-success">HORISON</h4>
                        <p class="text-uppercase m-0">KADUS 5</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-5">
        <iframe class="w-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31860.54016727588!2d103.96007629577062!3d-3.4547753272533037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3a3cea66c24b61%3A0x63db675c2ddd6153!2sCinta%20Kasih%2C%20Kec.%20Gn.%20Megang%2C%20Kabupaten%20Muara%20Enim%2C%20Sumatera%20Selatan!5e0!3m2!1sid!2sid!4v1738923915580!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</div>
@endsection
