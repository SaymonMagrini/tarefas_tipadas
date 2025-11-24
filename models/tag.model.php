<?php

class categoria
{
    public ?int $id;
    public  string $tag;
    public  string $descricao;    

    public function __get($atributo)
    {
        return $this->$atributo;
    }

    public function __set($atributo, $valor)
    {
        $this->$atributo = $valor;
        return $this;
    }
}

?>