<?php 

    class Database{
        public static function connect(){
            //conexion local
            $db = new mysqli('localhost','root','','tienda');
            $db->query("SET NAMES 'utf8'");
            return $db;
        }

    }