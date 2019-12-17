<html>
    <head>
        <style>
            body{
            background-image: url("https://bikiphay.net/wp-content/uploads/2019/06/backround-%C4%91%E1%BA%B9p51-1024x640.jpg");
            background-size: 100%;                  
            }
            input[type="text"]
            {
                background: #FEFCFC;
                width: 300px;
                height: 40px;
                border: none;
                outline: none;
                padding: 0 10px;
                border-radius: 10px 0 0 10px;
                font-size: 16px;
            }
            input[type="submit"]
            {
                position: relative;
                cursor: pointer;
                border-radius: 0 10px 10px 0;
                width: 90px;
                height: 40px;
                left: -5px;
                border: none;
                outline: none;
                font-size: 16px;
                background: #000000;
                color: White;
            }
            #in{
                width: 80%;
                margin-left: 10%;
                padding-left: 20px;
                padding-right: 20px;
                color: white;
                font-size: 20px;
                background: rgba(128,128,128,0.5);
            }
            #search{
                margin-top: 10px;
                
            }
        </style>
    </head>
    <body>
        <?php
        
            $sv = "localhost";
            $csdl = "chunguyendu";
            $tk = "root";
            $mk = "";
            
            
            $conn = mysqli_connect($sv, $tk, $mk, $csdl);
            
            
            if (!$conn) {
                die("Connection failed !" . mysqli_connect_error());
            }
            echo "<i><b><font color='#000000'>Connection successful ! </i></b>". "<br>";
            mysqli_set_charset($conn, 'UTF8');  // Thiết lập kiểu mã hóa font
        ?>
        
        
        <div id="search" align="center">
            <form method="post" action="php_law_05.php">
                <input type="text" name="dieu" placeholder="Nhập điều khoản...">
                <input type="submit" value="Tìm kiếm">
            </form>
        </div>
        <div id="in">
        <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") { 
                $sql = "SELECT ID,so,tieude,noidung FROM du where ID=$_POST[dieu] "; 
                $result = $conn->query($sql); 
            
                
                if ($result->num_rows > 0 ) {
                    while($row = $result->fetch_assoc()) {
                        echo "<br>"."<b>" ."Điều ".$row["so"].". ".$row["tieude"]. "<br>". $row["noidung"]. "<br>"."<br>";
                    }
                }
                else {
                    echo "<br>"."Nhập lại !"."<br>"."<br>";
                }
            }
        ?>
        </div>
    </body>
</html>