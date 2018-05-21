<?php

$rotas = [
    '/' => [
        'GET' => '\Controlador\PedidoControlador#index',
    ],
    // REST
    '/pedidos/?' => [
        'PATCH' => '\Controlador\PedidoControlador#atualizar',
        'DELETE' => '\Controlador\PedidoControlador#destruir',
    ],
    // NÃO INCLUSO NO REST
    '/pedidos/criar' => [
        'GET' => '\Controlador\PedidoControlador#criar',
        'POST' => '\Controlador\PedidoControlador#armazenar',
    ],
    // NÃO INCLUSO NO REST
    '/pedidos/?/editar' => [
        'GET' => '\Controlador\PedidoControlador#editar',
    ],
    // REST
    '/lanches' => [
        'GET' => '\Controlador\LancheControlador#lanche',
        'POST' => '\Controlador\LancheControlador#armazenar',
    ],
    // REST
    '/lanches/?' => [
        'DELETE' => '\Controlador\LancheControlador#destruir',
    ],
    // NÃO INCLUSO NO REST
    '/lanches/criar' => [
        'GET' => '\Controlador\LancheControlador#criar',
    ],
];
