<%@page import="org.apache.tomcat.dbcp.dbcp.DbcpException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="fifa20.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html">
	
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<title>Proyecto Web FIFA20</title>
</head>

<body class="is-preload">
		<div id="page-wrapper">
		<%
		
		%>
			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="index.html" id="logo">FIFA20</a></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="index.html">Inicio</a></li>
								<li>
									<a href="#">Listados</a>
									<ul>
										<li><a href="jugadores.jsp">FIFA 19 Jugadores</a></li>
										<li><a href="ligas.jsp">FIFA 19 Ligas</a></li>
										<li><a href="equipos.jsp">FIFA 19 Equipos</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>
			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div id="content">

							<!-- Content -->

								<article>
									<header>
										<table style="background-color:white; border-color: white; margin:0;padding: 0 0em 0em 0em;">
											<tr style="background-color:white; border-color: white; margin:0;padding: 0 0em 0em 0em;">
											<td width="100" style="background-color:white; border-color: black;text-align:center; margin:0;padding: 0 0em 0em 0em;"><h2></h2></td>
											</tr>
										</table>
									</header>
							<%
							BDController controlador = new BDController();
							Jugador jugador = controlador.dameJugador(Integer.parseInt(request.getParameter("cod_jugador")));
							Carta carta = controlador.dameCartaSimple(Integer.parseInt(request.getParameter("cod_jugador")));
							%>		
							<!-- Grid -->
							<div class="grid-containerGeneral">
							  <div class="c1">
								  <div class="grid-container" style="background-image: url('images/cartas/<% out.print(carta.getNombre().toLowerCase()); %>.png');">
									  <div class="A"><% out.print(carta.getRat()); %></div>
									  <div class="B"><% out.print(carta.getPos()); %></div>
									  <div class="C">
									  	<img src="images/paises/<% out.print(jugador.getPais()); %>.png" class="cartaBandera"/>
									  </div>
									  <div class="D">
									  	<img src="images/equipos/<% out.print(jugador.getCod_equipo()); %>.png" class="cartaEscudo">
									  </div>
									  <div class="E">
									  	<img src="images/jugadores/<% out.print(jugador.getCod_jugador()); %>.png" class="cartaFotoJugador">
									  </div>
									  <div class="F"><% out.print(jugador.getNombre()); %></div>
									  <div class="G"><% out.print(carta.getPac()); %> PAC &nbsp;&nbsp;|&nbsp;&nbsp; <% out.print(carta.getDri()); %> DRI<br>
									   <% out.print(carta.getSho()); %> SHO &nbsp;|&nbsp;&nbsp; <% out.print(carta.getDef()); %> DEF<br>
									   <% out.print(carta.getPas()); %> PAS &nbsp;&nbsp;|&nbsp;&nbsp; <% out.print(carta.getPhy()); %> PHY</div>
									 </div>
							  </div>
							  <div class="b">
								  <div class="grid-container2" >
									  <div class="grid-container2">
										  <div class="a2">PACE</div>
										  <div class="b2" class="<% out.print(carta.colorPac()); %>">
										  <% out.print(carta.getPac()); %>
										  </div>
										  <div class="c2" style="background-color:#4caf50; width:1px;"></div>
										  
										  <% 
											
										   %>
										  <div class="d2">SHOOTING</div>
										  <div class="e2" style="color:#4caf50;">88</div>
										  <div class="f2" style="background-color:#4caf50; width:300px;"></div>
										  <% 
											
										   %>
										  
										  <div class="g2">PASSING</div>
										  <div class="h2" style="color:#e9bc0b;">88</div>
										  <div class="i2" style="background-color:#e9bc0b; width:280px;"></div>
										  <% 
											
										   %>
										  <div class="j2">DRIBBLING</div>
										  <div class="k2" style="color:#fb8c00;">88</div>
										  <div class="l2" style="background-color:#fb8c00; width:120px;"></div>
										  <% 
											
										   %>
										  <div class="m2">DEFENDING</div>
										  <div class="n2" style="color:#4caf50;">88</div>
										  <div class="o2" style="background-color:#4caf50; width:240px;"></div>
										  <% 
											
										   %>
										  <div class="p2">PHYSICALITY</div>
										  <div class="q2" style="color:#4caf50;">88</div>
										  <div class="r2" style="background-color:#4caf50; width:200px;"></div>
									</div>
								 </div>
							  </div>
							</div>
								<div class="b"></div>
							</div>
							</article>

						</div>
					</div>
				</section>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>Listados</h3>
								<ul class="links">
									<li><a href="jugadores.asp">Listado de Jugadores</a></li>
									<li><a href="equipos.asp">Listado de Equipos</a></li>
									<li><a href="ligas.asp">Listado de Ligas</a></li>
								
								</ul>
							</section>
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h3>Más Opciones</h3>
								<ul class="links">
									<li><a href="altaJugador.jsp">Alta Jugador</a></li>
									<li><a href="altaEquipo.jsp">Alta Equipo</a></li>
									<li><a href="altaLiga.jsp">Alta Liga</a></li>
									<li><a href="altaCarta.jsp">Alta Carta</a></li>
									<li><a href="modifiJugador.jsp">Modificar Jugador</a></li>
									<li><a href="modifiEquipo.jsp">Modificar Equipo</a></li>
									<li><a href="modifiLiga.jsp">Modificar Liga</a></li>
									<li><a href="modifiCarta.jsp">Modificar Carta</a></li>
								</ul>
							</section>
							<section class="col-6 col-12-narrower">
								<h3>Solicita Información</h3>
								<form>
									<div class="row gtr-50">
										<div class="col-6 col-12-mobilep">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="col-6 col-12-mobilep">
											<input type="email" name="email" id="email" placeholder="Email" />
										</div>
										<div class="col-12">
											<textarea name="message" id="message" placeholder="Message" rows="5"></textarea>
										</div>
										<div class="col-12">
											<ul class="actions">
												<li><input type="submit" class="button alt" value="Enviar Email" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
						</div>
					</div>

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; FIFA 19. Todos los derechos reservados</li><li>Design: <a href="https://www.centronelson.org">Centro Nelson</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>

</html>