<?php

class DatabaseClass
{
    private $conn = null;

    // this function is called everytime this class is instantiated
    public function __construct($servername = "localhost", $db_name = "test",$user_name = "root", $password = ""){
        $this->conn = mysqli_connect($servername, $user_name, $password, $db_name);
        mysqli_set_charset($this->conn, 'UTF8');

        if (!$this->conn) {
            echo "Connection Failed.";
        }
    }

    // Get all Doctorss
    public function getAllDoctorss() {
        $sql = "CALL getLaptopDoctorss";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        return $stmt->get_result();
    }

    // Get filtered Doctorss
    public function getFilteredDoctorss($Doctors_name, $brand, $os, $cpu, $ram, $storage, $min_price, $max_price) {
        $sql = "CALL filterDoctorss(?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ssssssii", $Doctors_name, $brand, $os, $cpu, $ram, $storage, $min_price, $max_price);
        $stmt->execute();
        return $stmt->get_result();
    }

    public function conn_next() {
        $this->conn->next_result();
    }
}

$db = new DatabaseClass();
// If you have password, use the line below
// $db = new DatabaseClass(password: "");