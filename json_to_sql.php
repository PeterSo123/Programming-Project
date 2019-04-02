<html>
</<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Order update</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css">
    <script src="main.js"></script>
</head>
<body>
<?php
                            header('Content-type: text/javascript');
                            require_once('dbconnect.php');

                        // reading json file
                        $json = file_get_contents( to_json(workbook));

                        //converting json object to php associative array
                        $data = json_decode($json, true);


                        // 視符幾多data加所相應嘅foreach statement
                        foreach ($data as $user) {
                            $/*files name*/ = $/*table name*/['/*Files name*/'];
                            $/*files name*/ = $/*table name*/['/*Files name*/'];
                            $/*files name*/ = $/*table name*/['/*Files name*/'];
                            $/*files name*/ = $/*table name*/['/*Files name*/'];

                            
                        foreach ($data as $user) {
                            $/*files name*/ = $/*table name*/['/*Files name*/'];
                            $/*files name*/ = $/*table name*/['/*Files name*/'];
                            $/*files name*/ = $/*table name*/['/*Files name*/'];
                            $/*files name*/ = $/*table name*/['/*Files name*/'];

                            //set 一個var name for instrest data to database
                            //視符幾多data去咩資料表，開唔同var name
                            $/*var name 記得要加$ eg. $st*/ = mysqli_prepare($connection, 'INSERT INTO /*table name*/(/*files name*/) VALUES (?, ?, ?, ?)');
                            
                            // bind variables to insert query params
                            // 將var name放返入去做一個連接
                            mysqli_stmt_bind_param(/*var name 記得要加$ eg. $st*/, '/*有幾多files加幾多s*/', /*files name*/);

                            // executing insert query
                            // 真正insert data to datbase
                            mysqli_stmt_execute($st); 
                        }
                        ?>

                        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
                        <script src="global.js"></script>

</body>
</html>


                       