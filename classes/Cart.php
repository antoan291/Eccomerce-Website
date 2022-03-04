<?php

class Cart{
    public $db = null;

    public function __construct(DBController $db){
           
        if(!isset($db->con)) return null;
            $this->db = $db;
        
    }

    //insert into cart table
    public function insertIntoCart($params = null,$table = 'cart'){
        if($this->db->con != null){
            if($params != null){
                //insert into cart(user_id)
                //get table columns
                $columns = implode(',',array_keys($params));
         
                $values = implode(',',array_values($params));
              


                //sql
                $query_string = sprintf("INSERT INTO %s(%s) VALUES(%s)",$table,$columns,$values);


                //execute query
                $result = $this->db->con->query($query_string);
                return $result;
            }
        }
    }

    //get user_Id and item_id and insert into card tb
    public function addToCart($userid,$itemid){
        if(isset($userid) && isset($itemid)){
            $params = array(
            "user_id" => $userid,
            "item_id" => $itemid,
            );
            

            $result = $this ->insertIntoCart($params);
            if($result){
                //reload page
                header("Location:".$_SERVER['PHP_SELF']);
            }
        }
    }

    //delete cart item using card item id
    public function deleteCart($item_id = null,$table = 'cart'){
        if($item_id != null){
            $result = $this->db->con->query("DELETE FROM {$table} WHERE item_id = {$item_id}");
        
            if($result){
                header("Location:" . $_SERVER['PHP_SELF']);
            }
            return $result;
        }
    }

    
}