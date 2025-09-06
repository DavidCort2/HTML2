<?php

    class Database{
        //conexion local
        $db = new mysqli('localhost','root','','tienda');
        $db -> query("SET NAME 'utf8'");
        return $db;
    }