<?php      
require_once('footer.php') ;
$header ='<!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <title>Image Docker !</title>

            <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

            <!-- Bootstrap core CSS -->
            <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="navbar-top-fixed.css" rel="stylesheet">
        </head>
        <body>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
                <a class="navbar-brand" href="#">It works from the container</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">'.
                    createTopNav()
               .'</div>
               <a class="navbar-brand" href="#">Aujourd\'hui nous sommes le '.date('d/m/Y h:i:s').'</a>
            </nav>' ;

function createTopNav()
{
    $pages = array(
        array(
            'name'=>'Home',
            'link'=>'index.php'
        ),
        array(
            'name'=>'About Us',
            'link'=>'about.php'
        ),
        array(
            'name'=>'Contact Us',
            'link'=>'contact.php'
        )
    );
    $res = "<ul class='navbar-nav mr-auto'>";
    foreach($pages as $key=>$val){
        $actual = basename($_SERVER['PHP_SELF']);
        if($val['link']==$actual) {
            $res.= "<li class='nav-item active'><a class='nav-link' href='".$val['link']."'>".$val['name']."</a></li>";
        }else{
            $res.= "<li class='nav-item'><a class='nav-link' href='".$val['link']."'>".$val['name']."</a></li>";          
        }
    }
    $res.="</ul>";
    return $res;
}

