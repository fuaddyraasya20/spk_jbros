<?php
    include 'koneksi.php';
    include 'head.html';
?>
<html>
    <head><link rel="stylesheet" href="assets tentang/body.css"></head>
    <body>
        <div class="main">        
            <div class="border-daftar" style="padding-bottom: 5px;">
            <h3 style="padding-bottom: 15px;">Tentang <span style='color:red;'>Laptop</span></h3>
            <table style="padding-bottom: 25px;">
                    <tr>
                        <td rowspan="2" style="padding-right: 10px;"><img style="width: 75px;" src="user.png" alt=""></td>
                        <td>diposting oleh <span style='color:#5f9bce;'>Admin</span></td>
                     </tr>
                     <?php
                        $sql = mysql_query("select * from tb_tentang where id_judul='laptop'");
                        {
                            while ($hasil = mysql_fetch_array($sql))
                            {
                                ?>
                                <tr>
                                    <td>Diperbarui pada tanggal : <?php echo "$hasil[tanggal]" ?></td>
                                </tr>
                                <?php
                            }
                        }
                    ?>
            </table>
            <div class="border-daftar" style="padding-bottom: 5px; margin: 0px 50px 10px 50px;">
                <table>
                    <?php
                        $sql = mysql_query("select * from tb_tentang where id_judul='laptop'");
                                {
                                    while ($hasil = mysql_fetch_array($sql))
                                    {
                                        ?>
                                        <tr>
                                            <td>
                                                <?php echo "$hasil[isi]" ?>
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                }
                    ?>
                </table>
            </div>
        </div>
    </body>
</html>
<?php
    include 'footer.html';
?>