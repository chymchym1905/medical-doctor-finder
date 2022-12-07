<?php

class DatabaseClass
{
    private $conn = null;
    private $server_name;
    private $user_name;
    private $password;
    private $db_name;
    private $table_name;

    // this function is called everytime this class is instantiated
    public function __construct(
        $server_name = "localhost", 
        $db_name = "mdfinder",
        $user_name = "root", 
        $password = "",
        $table_name = "doctor"
    )
    {
        $this->db_name = $db_name;
        $this->table_name = $table_name;
        $this->server_name = $server_name;
        $this->user_name = $user_name;
        $this->password = $password;

        $this->conn = mysqli_connect($server_name, $user_name, $password, $db_name);
        mysqli_set_charset($this->conn, 'UTF8');

        if (!$this->conn) {
            echo "Connection Failed.";
        }
    }

    // Get all Doctorss
    public function getAllDoctors() {
        $sql = "SELECT * FROM $this->table_name";

        $result = mysqli_query($this->conn, $sql);

        if(mysqli_num_rows($result) > 0){
            return $result;
        }

        #$stmt = $this->conn->prepare($sql);
        #$stmt->execute();
        #return $stmt->get_result();
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

    public function searchData($keyword){
        $sql = "SELECT * FROM $this->table_name WHERE md_name LIKE '%$keyword%' OR md_desc LIKE '%$keyword%' OR md_dept LIKE '%$keyword%'";

        $result = mysqli_query($this->conn, $sql);

        if(mysqli_num_rows($result) > 0){
            return $result;
        } else{
            echo 'No result';
        }
    }
}

$db = new DatabaseClass();
// If you have password, use the line below
// $db = new DatabaseClass(password: "");