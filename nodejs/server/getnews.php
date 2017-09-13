<?php

    header("Content-type:application/json;charset=utf-8");

    require_once('db.php');
   
    if($link){
        //执行成功的过程
        if(@$_GET['newstype']){
            $newstype=$_GET['newstype'];
            $sql="SELECT * FROM `newsinfo` WHERE `newstype`='{$newstype}'";
            mysqli_query($link,"SET NAMES utf8");
            $relust=mysqli_query($link,$sql);
            $senddata=array();
            while ($row=mysqli_fetch_assoc($relust)) {
                array_push($senddata, array(
                    'id'=>$row['id'],
                    'newstype'=>$row['newstype'],
                    'newstitle'=>$row['newstitle'],
                    'newsimg'=>$row['newsimg'],
                    'newstime'=>$row['newstime'],
                    'newssrc'=>$row['newssrc']
                    ));
            };
            echo json_encode($senddata);
        }else{
            $sql='SELECT * FROM newsinfo';
            mysqli_query($link,"SET NAMES utf8");
            $relust=mysqli_query($link,$sql);
            $senddata=array();
            while ($row=mysqli_fetch_assoc($relust)) {
                array_push($senddata, array(
                    'id'=>$row['id'],
                    'newstype'=>$row['newstype'],
                    'newstitle'=>$row['newstitle'],
                    'newsimg'=>$row['newsimg'],
                    'newstime'=>$row['newstime'],
                    'newssrc'=>$row['newssrc']
                ));
            };
            echo json_encode($senddata);
        };
    }else{
        echo json_encode(array('success'=>'none'));
    }
    mysqli_close($link);
   
    // echo json_encode($arr);

?>