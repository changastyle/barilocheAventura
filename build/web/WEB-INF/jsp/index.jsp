<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bariloche Aventura</title>
        <link rel="stylesheet" href="css/index.css">
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3.min.js"></script>
        <script src="carrusel/assets/owl-carousel/owl.carousel.js"></script>
        <script>
        
        function desplegar(quien)
        {
            /*desplego = $("#" + quien.id).data("desplegar");
            console.log("DESPLEGARÉ A " + $("#" + desplego ) );
            
            
            ancho = $("#" + desplego).data("width");
            alto = $("#" + desplego).data("height");
            console.log("ANCHO = " + ancho + ", ALTO:" + alto);
            
            anchoPantalla = parseInt(window.innerWidth);
            anchoElemento = parseInt($("#" + desplego ).innerWidth());
            altoElemento = parseInt($("#" + desplego ).innerHeight());
            console.log("ANCHO PANTALLA:" + anchoPantalla);
            
            console.log("PORCENTAJE:" + anchoElemento * anchoPantalla / 100);
            console.log("ANCHO ELEMENTO:" + anchoElemento );
            console.log("ALTO ELEMENTO:" + altoElemento );
        
            
        
            if(anchoElemento == 0 )
            {
               //$("#" + desplego).css("width",ancho); 
               $("#" + desplego).slideDown("slow");
            }
            else
            {
               
               $("#" + desplego).slideUp("slow");
               //$("#" + desplego).css("width",0);  
            }
            //$("#" + desplego).css("heigth","'" + alto +"'");*/
        
            who = $("#"+quien.id).data("desplegar");
            console.log(who);
            
            $("#" +  who ).slideToggle("slow");
        }
        function show(quien)
        {
            /*
            whoToShow = $("#"+quien.id).data("show");
            console.log(whoToShow);
            console.log($("#"+whoToShow));
            anchoActual = $("#"+whoToShow).css("width");
            anchoActual = parseInt(anchoActual.substring(0,anchoActual.length-2));
            console.log(anchoActual);
            if(anchoActual > 0)
            {
                $("#"+whoToShow).css("width","0px");
            }
            else
            {
                $("#"+whoToShow).css("width","250px");
            }*/
            whoToShow = $("#"+quien.id).data("show");
            ancho = parseInt($("#"+whoToShow).innerWidth());
            console.log(ancho);
            
            $("#"+whoToShow).css("display","block");
            
            if(ancho > 0)
            {
                //LO SACO:
                $("#"+whoToShow).innerWidth(0);
                
                $("#"+whoToShow).slideUp("slow");
                           
            }
            else
            {
                $("#"+whoToShow).css("display","block");
                $("#"+whoToShow).innerWidth(200);
            }
        }
        function init()
        {
            $("#desplegadorDer").css("width","25%");
        }
        $(document).ready(function() 
        {

            $("#owl-demo").owlCarousel(
            {

                autoPlay: 3000, //Set AutoPlay to 3 seconds

                items : 4,
                itemsDesktop : [1199,3],
                itemsDesktopSmall : [979,3]

            });

        });
        </script>
    </head>

    <body onload="init()">
        <div id="banner">
            Bariloche Aventura.
            
            <button id="butLupa" onclick="show(this)" data-show="barraBusqueda"></button>
            <button id="butMenu" onclick="desplegar(this)" data-desplegar="desplegadorDer"></button>
            <input id="barraBusqueda" type="text">
        </div>  
        <div id="desplegadorDer" data-width="25%" data-height="400px"></div>
        <div id="contenedorPrincipal">
            
            <div id="owl-demo">
          
                <div class="item"><img src="css/img/carrusel/carrusel (1).jpg" alt="Owl Image"></div>
                <div class="item"><img src="css/img/carrusel/carrusel (2).jpg" alt="Owl Image"></div>
                <div class="item"><img src="css/img/carrusel/carrusel (3).jpg"></div>
                <div class="item"><img src="css/img/carrusel/carrusel (4).jpg" alt="Owl Image"></div>
                <div class="item"><img src="css/img/carrusel/carrusel (5).jpg" alt="Owl Image"></div>
                <div class="item"><img src="assets/owl6.jpg" alt="Owl Image"></div>
                <div class="item"><img src="assets/owl7.jpg" alt="Owl Image"></div>
                <div class="item"><img src="assets/owl8.jpg" alt="Owl Image"></div>

            </div>
            <% for(int i = 0 ; i < 10 ; i ++)
            {
                String s = "<div class='itemsLista ";
                if(i%2 == 0 )
                {
                    s+= "itemsListaPares" ;
                }
                else
                {
                    s+= "itemsListaImpares" ;
                }
                s += "' id='itemLista" + i +"'>";
                s+= "" + i;
                s+= "</div>";
                out.println(s);
            }
            %>
        </div>
        
        
    </body>
</html>
