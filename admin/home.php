<?php
session_start();
$userid = $_SESSION['userid'];
include '../config/koneksi.php';
if ($_SESSION['status'] != 'login') {
    echo "<script>
    alert('Anda belum Login!');
    location.href='../index.php';
    </script>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Website Galeri Foto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"/>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <div class="container">
            <a class="navbar-brand text-light" href="index.php">Website Galeri Foto</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse mt-2" id="navbarNav">
                <div class="navbar-nav me-auto">
                    <a href="home.php" class="nav-link text-light mb-2">Home</a>
                    <a href="album.php" class="nav-link text-light mb-2">Album</a>
                    <a href="foto.php" class="nav-link text-light mb-2">Foto</a>
                </div>
                <a href="../config/aksi_logout.php" class="btn btn-outline-light btn-danger m-1">Keluar</a>
            </div>
        </div>
    </nav>

    <div class="container mt-3">
        <!-- Album : 
        <?php 
        $album = mysqli_query($koneksi, "SELECT * FROM album WHERE userid='$userid'");
        while($row = mysqli_fetch_array($album)){ ?>
        <a href="home.php?albumid=<?php echo $row['albumid'] ?>" class="btn btn-primary mt-3 mb-3">
            <?php echo $row['namaalbum'] ?>
        </a>
        <?php }
        ?> -->
        <div class="row">
            <?php 
            if (isset($_GET['albumid'])) {
                $albumid = $_GET['albumid'];
                $query =mysqli_query($koneksi, "SELECT * FROM foto WHERE userid='userid' AND albumid='albumid'");
                while($data = mysqli_fetch_array($query)){ ?>
                 <div class="col-md-3">
                    <div class="card">
                        <img src="../assets/img/<?php echo $data['lokasifile']?>" class="card-img-top" 
                        style="height: 12rem;" title="<?php echo $data['judulfoto']?>">
                        <div class="card-footer text-center">
                            <h1><?php echo $data['judulfoto'] ?></h1>
                            <a href="../config/proses_like.php?fotoid=<?php echo $data['fotoid']?>" 
                            type="submit" name="suka"><i class="fa-regular fa-heart"></i></a>
                            <?php
                            $fotoid = $data['fotoid'];
                            $like = mysqli_query($koneksi, "SELECT * FROM likefoto WHERE fotoid='$fotoid'");
                            echo mysqli_num_rows($like). ' Like';
                            ?>

                            <!-- <a href=""><i class="fa-regular fa-comment"></i>1 Comment</a> -->
                        </div>
                    </div>
                </div>
            <?php } }else{ 
            
            
            
            $query = mysqli_query($koneksi, "SELECT * FROM foto WHERE userid='$userid'");
            while($data = mysqli_fetch_array($query)) {
            ?>
                <div class="col-md-3 mb-3">
                    <div class="card">
                        <img src="../assets/img/<?php echo $data['lokasifile']?>" class="card-img-top" 
                        style="height: 12rem;" title="<?php echo $data['judulfoto']?>">
                        <div class="card-footer text-center">
                            <a href="../config/proses_like.php?fotoid=<?php echo $data['fotoid']?>" 
                            type="submit" name="suka"><i class="fa-regular fa-heart"></i></a>
                            <?php
                            $fotoid = $data['fotoid'];
                            $like = mysqli_query($koneksi, "SELECT * FROM likefoto WHERE fotoid='$fotoid'");
                            echo mysqli_num_rows($like). ' Like';
                            ?>

                            <!-- <a href=""><i class="fa-regular fa-comment"></i>1 Comment</a> -->
                        </div>
                    </div>
                </div>
            <?php } } ?>
        </div>
    </div>
    <footer class="d-flex justify-content-center border-top mt-3 bd-light fixed-bottom">
        <p>&copy; UKK PPLG | Nama Peserta</p>
    </footer>

    <script src="../assets/js/bootstrap.min.js"></script>
</body>

</html>