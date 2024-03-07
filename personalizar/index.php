<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" >
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <title>YBEY</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
 <img src="../personalizar/img/logo.png" alt="" width="60">
   <span><i class="fa-solid fa-envelope"></i> ybey3116286@gmail.com</span>
    <a class="navbar-brand" href="#">YBEY <i class="fa-solid fa-paintbrush"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#"></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" style="color:black; font-size: 16px;" href="http://localhost/TiendaOnline/"> Inicio</a>
  </li>
  <li class="nav-item">
  <a href="http://localhost/TiendaOnline/principal/login" class="btn btn-light"><i class="fa-solid fa-user"></i> Acceso</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true"></a>
  </li>
</ul>
</nav>

    <main class="container">
        <div class="d-flex row justify-content-center align-items-center">
            <section class="principal">
            
                <img class="boton atras" src="./img/flechaizquierda.png" alt="">
                
                <div class="secundario">
                    <img src="./img/remeranegra.png" class="ropa negra">
                </div>
                
                <img class="boton adelante" src="./img/flechaderecha.png" alt="">
            </section>
            
            <div class="d-flex row justify-content-center align-items-center estampado" id="estampado">
                <p class="texto text-center" contenteditable>Ingresar Texto</p>
                <!-- <img src="" id="logo" class="logo" draggable="false"> -->
                <div class="imagenLogo">
                    <img src="" id="logo" class="logo" draggable="false">
                    <div class="resolucion" style="visibility: hidden">
                        <div class="tamanio menos">
                            <img src="./img/signomenos .png" width="20px">
                        </div>
                        <div class="tamanio mas">
                            <img src="./img/signomas.png" width="20px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="colores">
            <div class="color" id="negro"></div>
            <div class="color" id="blanco"></div>
            <div class="color" id="azul"></div>
        </div>

        <section class="container galeria mt-4">
            
        </section>

<input type="file" name="" id="file" class="form-control mt-2">
<br>
<table border="0" cellpadding="0" cellspacing="0" width="13%" style="background-color:rgb(239, 220, 250); border:1px solid rgb(239, 220, 250); border-radius:5px;">
  <tr>
    <td align="center" valign="middle" style="color:#FFFFFF; font-family:Helvetica, Arial, sans-serif; font-size:16px; font-weight:bold; letter-spacing:-.5px; line-height:10%; padding-top:15px; padding-right:30px; padding-bottom:15px; padding-left:30px;">
      <a href="mailto:ybey3116286@gmail.com" target="_blank" style="color:#FFFFFF; text-decoration:none;">Enviar Diseño</a>
    </td>
  </tr>
</table>
</main>



        <!-- <input type="file" name="" id="file" class="form-control mt-2">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end p-5">
        <button class="btn btn-outline-info" type="submit" id="sus">Enviar Diseño</button>

        </div>
    </main>
 
        <script>
function mostrarAlerta() {
  window.alert("Su Diseño ha sido Enviado");
}
document.getElementById("sus").onclick = mostrarAlerta;
</script> -->

<footer class="footer mt-5">
      <div class="col-lg-4 col-md-12">
        <div class="footer__widget">
          <h6>Sé el primero en enterarte de nuestras ofertas exclusivas</h6>
          <p>Reciba actualizaciones por correo electrónico sobre nuestra últimas novedades y promociones.</p>
                  <form action="#">
                  <input type="text" placeholder="Introduce tu correo">
                  <a href="https://www.google.com/intl/es-419/gmail/about/"><button type="button" class="btn-outline">Suscribir</button></a>
                  </form>
                  <br>
                  <div class="footer__widget__social">
                  <a href="https://web.facebook.com/?locale=es_LA&_rdc=1&_rdr"><i class="fa-brands fa-facebook-f"></i></a>
                  <a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://web.whatsapp.com/"><i class="fa-brands fa-whatsapp"></i></a>
                    <a href="https://twitter.com/?lang=es"><i class="fa-brands fa-x-twitter"></i></a>
                  </div>
                </div>
              </div>
              </div>
            </div>
          </div>
    </footer>
    <script src="./js/app.js"></script>
</body>
</html>