<?php
function connection(){
    $driver="mysql";
    $host="localhost";
    $nameDB="cater_DB";
    $userDB="root";
    $passwordDB="";
    $charset="utf8mb4";
    try{
        return new PDO ("$driver:host=$host;dbname=$nameDB;charset=$charset", $userDB, $passwordDB);
    }
    catch(PDOException $e){
        die("Нет подключеня к базе данных. Ошибка - " . $e->getMessage());
    }
}
function query($sql, $params = []){
    $sth = connection();
    $sth = $sth->prepare($sql);
    $sth->execute($params);
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);

    if (!$result) return [];
    return $result;
}
function make($sql, $params = []){
    $sth = connection();
    $sth = $sth->prepare($sql); 
    return $sth->execute($params); 
}
function validate($data) {
    $data = strip_tags($data); 
    $data = trim($data);
    $data = preg_replace('/\s+/', ' ', $data);
    $data = htmlspecialchars($data);
    return $data;
}
function resTovar($sql){
    $sth = connection();
    $sth = $sth->prepare($sql);
    $sth->execute();
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);

    if (!$result) return [];
    return $result;
}
?>


