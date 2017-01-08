<?php echo $header; ?>
<div class="container-fluid">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

      <div id="Aautoinstall" class="noprice">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <h2 class="sectionTitle">Servidores virtuales (VPS) con Panel de Control y opción de autoinstalación para:</h2>
                </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                  <div class="col-sm-4">
                    <div class="service-img">
                      <img src="/images/websites-text.png" title="Apache, mysql, crear websites" alt="servidor web" />
                    </div>
                    <h3 class="sectionTitle services">Servidor Apache + Mysql para construir y publicar tu webs</h2>
                  <!--<span class="description">Sin compartir el alojamiento con otros, disponiendo de una IP pública propia</span>-->
                  </div>
                  <div class="col-sm-4">
                      <div class="service-img">
                        <img src="/images/cloud-text.png" title="owncloud" alt="cloud y sincronizaciñon" />
                      </div>
                      <h3 class="sectionTitle services">Alojamiento y sincronización de archivos accesible en todos tus dispositivos</h3>
                  </div>
                  <div class="col-sm-4">
                      <div class="service-img">
                          <img src="/images/email-text.png" title="owncloud" alt="cloud y sincronizaciñon" />
                      </div>
                       <h3 class="sectionTitle services">Crea ilimitadas cuentas de correo electrónico para ilimitados dominios</h3>

                  </div>

              </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-xs-12">
                    <div class="col-sm-4">
                        <div class="service-img">
                            <img src="/images/vpn-text.png" title="VPN - Virtual private network" alt="servidor VPN"/>
                        </div>
                        <h3 class="sectionTitle services">Conexión directa, segura y cifrada a tu servidor y a cualquier dirección de internet</h3>

                        <!--<span class="description">Garantiza la máxima confidencialidad a todas tus comunicaciones y las de tu colaboradores sin limitaciones en número de usuarios</span>-->
                    </div>
                    <div class="col-sm-4">
                        <div class="service-img">
                            <img src="/images/https-text.png" title="Let's encrypt" alt="protocolo seguro https" />
                        </div>
                        <h3 class="sectionTitle services">Añade el protocolo seguro "https://" a todas tus webs y aplicaiones</h3>
                    </div>
                    <div class="col-sm-4">
                        <div class="service-img">
                            <img src="/images/apps2-text.png" title="panel de control" alt="cloud y sincronizaciñon" />
                        </div>
                         <h3 class="sectionTitle services">Costumiza tu sistema. Solicita o instala tú mismo software adicional</h3>
                  </div>

                </div>
            </div>
            </div>
</div> <!-- /Aautoinstall-->

<div id="featureWrap">
  <div class="content container-fluid">
    <div class="row">
      <div class="col-xs-12">
        <h2 class="sectionTitle">Servicios</h2>

      <div class="col-sm-6 text-center feature">
        <i class="fa fa-cloud icon"></i>

        <h3>Alojamiento y Sincronización </h3>
        <p>
        Trabaja en documentos, presentaciones, hojas de cálculo, bases de datos... siempre a mano y listos para compartir. Edita y comenta documentos colaborativamente. Impórtalos y expórtalos de otras plataformas. Trabaja en ellos en cualquier momento y desde cualquier dispositivo <b>incluso cuando estás sin conexión</b>.

Almacena todo tu trabajo, fotos o vídeos en tu propia nube del tamaño que necesites y de manera <b>segura, accesible y cifrada</b> sin cederlo a grandes empresas como Google, Apple o Dropbox.

<b>Organiza tu trabajo en línea</b> decidiendo el nivel de acceso que quieres darle a cada usuario que autorices.
        </p>
      </div>
      <div class="col-sm-6 text-center feature">
        <i class="fa fa-calendar icon"></i>
        <h3>Contactos & Calendarios </h3>
        <p>
        Todos tus contactos almacenados en un lugar seguro, privado, accesible y descargable en otros servicios y dispositivos. Importa automàticamente tus contactos desde Gmail, Outlook, thunderbird, Yahoo u otros formatos de archivos. <b>Conserva el control de tu propia agenda</b> sin ceder tus contactos a empresas que hagan negocio con ellos.
Crea tu propio calendario o impórtalo de otra plataforma. Fácil de usar y siempre consultable. Listo para compartir y editar con quien quieras. 
      </p>
    </div>
    </div><!--col-xs-12-->
    <div class="col-xs-12">
    <div class="col-sm-6 text-center feature">
      <i class="fa fa-envelope-o icon"></i>
      <h3>Correo electrónico</h3>
      <p>Crea todos los <b>correos electrónicos que necesites para todos los dominios que quieras</b> de manera sencilla sin salir de tu propia nube.
Direcciones, listas y grupos de trabajo (como Google Groups) ilimitados. 
Mantén almacenado tu correo en tu propio espacio sin depender en ningún momento de terceros. Consúltalo desde todos tus dispositivos en una página rápida y fácil de usar o agrega otras cuentas de otras plataformas.</p>
        </p>
      </div>
      <div class="col-sm-6 text-center feature">
        <i class="fa fa-sitemap icon"></i>
        <h3>VPN (Red Privada Virtual)</h3>
        <p>
        Envía toda tu actividad y la de tus colaboradores por tu propia VPN garantizando por ti mismo el <b>máximo nivel de confidencialidad</b> de tu actividad online mediante tu propia conexión segura.
<b>Visita cualquier sitio</b> desde cualquier parte <b>de forma privada</b> creando conexiones seguras y directas a través de internet.
Protégete cuando usas redes WiFi públicas o abiertas y accede a sitios bloqueados en el país desde donde te conectas.
Con MaadiX puedes crear todos los usuarios VPN que necesites para tu familia, compañeros o empleados desde una sencilla pantalla y con un clic.
        </p>
      </div>
      </div><!--col-xs-12-->
    </div>
  </div>
</div> <!-- /featureWrap -->
<div id="productWrap" class="altWrap">
  <div class="content container-fluid">
    <div class="row">
      <div class="col-xs-12">
        <h2 class="sectionTitle">¿Porqué?</h2>
        <h3 class="sectionTitle"> </h3>
      </div>
    </div>
    <div class="row">
                      <div class="col-xs-12 productFeatures">
      <div class="col-md-6">
          <div class="col-xs-2 icon">
            <span class="fa-stack fa-lg">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-users fa-stack-1x fa-inverse"></i>
            </span>
          </div>
          <div class="col-xs-10">
            <h3>Protección de datos</h3>
            <p> 
          La aprobación del acuerdo  Privacy Shield, que regula la transferencia internacional de datos de los ciudadanos europeos, a pesar de haber mejorado la situación con respecto al anterior acuerdo Safe Harbour, sigue sin garantizar plenamente el cumplimiento de la normativa europea en cuanto a protección de datos.
En concreto, la recogida masiva de datos  sigue siendo posible en virtud del acuerdo, el funcionamiento y el acceso al Defensor del pueblo (organo encargado de recibir reclamaciones por parte de los ciudadanos europeos) sigue siendo opaco, y el acceso a un recurso puede no ser aplicable a todos los miembros de la UE, lo que sería contrario a la Carta de los Derechos Fundamentales de la UE. <a href="https://www.accessnow.org/privacy-shield-third-illegal-instrument-eu-approves-year/" target="_blank" title="Privacy Shield: Third unlawful instrument to be approved by EU this year">Saber más</a>   
          </div>
      </div><!--col-md-6-->
                              <div class="col-md-6">
                                      <div class="imgWrap">
                                              <img class="img-responsive" src="https://maadix.net/images/die-cut-stickers.png"/>
                                      </div>
                              </div>

      </div><!--col-xs-12-->
      <div class="col-xs-12 productFeatures">
        <div class="col-md-6">
          <div class="col-xs-2 icon">
            <span class="fa-stack fa-lg">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-eye-slash fa-stack-1x fa-inverse"></i>
            </span>
          </div>
          <div class="col-xs-10">
            <h3>Privacidad</h3>
            <p>Maadix es un producto de nuestro tiempo y una solución a problemas compartidos. Tras las revelaciones de Snowden, la preocupación por la privacidad de las comunicaciones ha aumentado en los usuarios. Las grandes empresas de internet como Apple, Google o Dropbox han comenzado a responder comercialmente a esta demanda de los usuarios. En Maadix creemos que no se trata de una demanda que puedan solucionar comercialmente las grandes empresas de internet sino de un problema compartido entre usuarios y desarrolladores que podemos solucionar agotando las posibilidades de la tecnología actual para que el usuario pueda <b>garantizar por sí mismo su privacidad y la seguridad de su información y las comunicaciones sin depender de su confianza en terceros y grandes compañias</b>.</p>
          </div>
        </div><!--col-md-6-->
        <div class="col-md-6">
          <div class="col-xs-2 icon">
            <span class="fa-stack fa-lg">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-code fa-stack-1x fa-inverse"></i>
            </span>
          </div>
          <div class="col-xs-10">
            <h3>Software Libre</h3>
            <p>MaadiX es 100% Software Libre y de código abierto. El Software Libre supone para nosotros una ventaja competitiva que nos permite ofrecer un nivel de seguridad, actualizaciones y precio que nunca podrá ofrecer el software privativo.
El Software Libre supone para ti que no tienes porqué confiar en lo que te decimos ya que todas las piezas que componen MaadiX están auditadas por amplias comunidades que vigilan, detectan y corrigen cualquier error. También implica que en el momento en el que decidas dejar de usar Maadix todos tus datos y tus configuraciones serán fácilmente exportables a otra plataforma.</p>
          </div>
        </div><!--col-xs-6-->
        </div><!--col-xs-12-->
        </div>
      </div>
    </div>
</div> <!-- /productWrap -->
<div id="contactWrap" class="">
  <div class="container">
    <div class="row">
              <div class="col-xs-12">
<h2 class="sectionTitle grey">¡Próximamente!</h2>
        <h2 class="sectionTitle">Aquí podrás contratar MaadiX durante el tiempo que tú decidas</h2>
        <h3 class="sectionTitle">Al hacerlo pondremos a tu disposición un <b>servidor personal y exclusivo alojado en Europa</b> y al que siempre podrás tener total acceso (si ya tienes un servidor y deseas instalar MaadiX en él ponte en contacto con nosotros)
</br>
En una simple pantalla con un click podrás contratar o ampliar los  servicios y las aplicaciones que necesites, modificar preferencias y elegir niveles de seguridad.</h3>  
        <h3 class="sectionTitle">Y si necesitas otros servicios adicionales, los puedes solicitar en cualquier momento.</h3>
              </div>
    </div>
  </div>
</div>


<?php echo $content_top; ?><?php echo $content_bottom; ?></div>
<div id="testimonialsWrap" class="altWrap">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <h2 class="sectionTitle">Por qué eso importa</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12">
        <div class="flexslider">
          <ul class="slides">
            <li>
              <div class="quote">"Google no es un buscador ni una compañía, sino la mayor base de datos del mundo. Y si aceptamos aquello de que la información es poder, entonces podemos decir que Google es la compañía más poderosa del planeta"</div>
              <div class="author">Alejandro Suárez Sánchez-Ocaña</div>
            </li>
            <li>
              <div class="quote">"The web is already decentralized. The problem is the dominance of one search engine, one big social network, one Twitter for microblogging. We don’t have a technology problem, we have a social problem."</div>
              <div class="author">Tim Berners-Lee</div>
            </li>
            <li>
              <div class="quote">"Arguing that you don't care about the right to privacy because you have nothing to hide is no different than saying you don't care about free speech because you have nothing to say."</div>
              <div class="author">Edward Snowden</div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div> <!-- /testimonialsWrap -->

  <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
