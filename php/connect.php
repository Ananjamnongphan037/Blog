<?php
    error_reporting(E_ALL); //เปิด error ในกรณีที่เราต้องการแสดง error ของเราเอง
    //error_reporting(0); //ปิด error ในกรณีที่เราต้องการแสดง error ของเราเอง
// connect mysqldatabase
    $conn = new mysqli('localhost:3307','root','','blog');
    // $conn = new mysqli('localhost','duckdeve_blog','De4Z3FfRrd','duckdeve_blog');
    $conn->set_charset('utf8'); //ตั้งค่าภาษาให้ร้องรับภาษาไทย
    if($conn->connect_errno){ //เช็คว่ามีค่า Error ได้หรือเปล่า
        echo "Connect Error : " .$conn->connect_error; //แสดงผล Error Massage
        exit(); //จบการทำงานทุกอย่าง (โปรแกรมปิดตัวลง)
    }
    $base_path_blog = 'assets/images/blog/';



   // if(true)
   // {echo "true";
   // }else{
   // echo "false";}


   /*
   
   บันทึกคำสั่ง
    ***เป็นตัวเลขของ error code
         echo $conn->connect_errno;

         ***เป็นตัวเลขของ error message
         echo $conn->connect_error   
   */
?>