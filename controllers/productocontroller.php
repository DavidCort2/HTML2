<?php

require_once 'models/productoModels.php';

class productoController{
    public function index(){
        $Producto = new Producto();
        $productos = $Producto->getAll();

        require_once 'views/producto/destacados.php';
    }
}