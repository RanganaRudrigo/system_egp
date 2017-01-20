<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/21/15
 * Time: 2:36 PM
 */


class MY_Form_validation extends CI_Form_validation {

    public function is_unique_update($str, $field) {
        sscanf($field, '%[^.].%[^.].%[^.].%[^.]', $table, $field,$field2,$val);
        return isset($this->CI->db)
            ? ($this->CI->db->limit(1)->from($table)->where( $field , $str)->where( "$field2 !=" , $val)->get()->num_rows() === 0)
            : FALSE;
    }

} 