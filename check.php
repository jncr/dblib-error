<?php

$host = getenv('MSSQL_HOST') ?: 'localhost';
$dsn = sprintf('dblib:host=%s:1433;dbname=foo', $host);
$user = 'sa';
$password = 'Strong_Password_123';

$pdo = new \PDO($dsn, $user, $password);
$rows = $pdo->query('SELECT foo FROM test', \PDO::FETCH_ASSOC);

foreach ($rows as $row) {
    var_dump($row);
}