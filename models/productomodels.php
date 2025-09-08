<?php

    class Productos{
        private $id_producto;
        private $nombre_producto;
        private $descripcion;
        private $precio;
        private $stock;
        private $oferta;
        private $fecha;
        private $imagen;

        private $db;

        public function __construct() 
        {
            $this->db = Database::connect();
        }
        //getters
        function getId_producto(){
            return $this->id_producto;
        }

        function getNombre_producto(){
            return $this->nombre_producto;
        }

        function getDescripcion(){
            return $this->descripcion;
        }

        function getPrecio(){
            return $this->precio;
        }

        function getStock(){
            return $this->stock;
        }

        function getOferta(){
            return $this->oferta;
        }

        function getFecha(){
            return $this->fecha;
        }

        function getImagen(){
            return $this->imagen;
        }

        //setters
        function setId_producto($id_producto){
            $this->id_producto = $id_producto;
        }
        function setNombre_producto($nombre_producto){
            $this->nombre_producto = $nombre_producto;
        }
        function setDescripcion($descripcion){
            $this->descripcion = $descripcion;
        }
        function setPrecio($precio){
            $this->precio = $precio;
        }
        function setStock($stock){
            $this->stock = $stock;
        }
        function setOferta($oferta){
            $this->oferta = $oferta;
        }
        function setFecha($fecha){
            $this->fecha = $fecha;
        }
        function setImagen($imagen){
            $this->imagen = $imagen;
        }

    }
?>