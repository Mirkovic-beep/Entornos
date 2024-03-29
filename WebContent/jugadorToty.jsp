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
										
										String nCarta= "toty";
										
										int cod_jugador = Integer.parseInt(request.getParameter("cod_jugador"));
										
										BDController controlador = new BDController(); 
										
										Jugador jugador = controlador.dameJugador(cod_jugador);								
										Carta carta = controlador.dameCarta(nCarta,cod_jugador);
										
										%>
							<!-- Grid -->
							<div class="grid-containerGeneral">
							  <div class="c1" >
								  <div class="grid-container" style="background-image: url('images/cartas/toty.png'); color:white;" >
									  <div class="A" ><%out.print(carta.getRat()); %></div>
									  <div class="B"><%out.print(carta.getPos()); %></div>
									  <div class="C"><img src="images/paises/<%=jugador.getPais()%>.png" height="20px" width="30px"></div>
									  <div class="D"><img src="images/equipos/<%=jugador.getCod_equipo()%>.png" height="30px" width="30px"></div>
									  <div class="E"><img src="images/jugadores/<%=jugador.getCod_jugador()%>.png" height="100px" width="100px"></div>
									  <div class="F"><%out.print(jugador.getNombre()); %></div>
									  <div class="G"><%out.print(carta.getPac()); %> PAC &nbsp;&nbsp;|&nbsp;&nbsp; <%out.print(carta.getDri()); %> DRI<br> <%out.print(carta.getSho()); %> SHO &nbsp;|&nbsp;&nbsp; <%out.print(carta.getDef()); %> DEF<br><%out.print(carta.getPas()); %> PAS   &nbsp;&nbsp;|&nbsp;&nbsp; <%out.print(carta.getPhy()); %> PHY</div>
									 </div>
							  </div>
							  <div class="b">
								  <div class="grid-container2" >
									  <div class="grid-container2">
									  
										 <div class="a2">PACE</div>
										 <div class="b2" style="<%out.print(carta.colorNumPac());%>;"><% out.print(carta.getPac()); %></div>
										 <div class="c2" style="<%out.print(carta.colorBarraPac());%>; width:<%=carta.getPac()*3%>px;"></div>
																					  
										 
										  <div class="d2">SHOOTING</div>
										  <div class="e2" style="<%out.print(carta.colorNumSho());%>;"><% out.print(carta.getSho()); %></div>
										  <div class="f2" style="<%out.print(carta.colorBarraSho());%>; width:<%=carta.getSho()*3%>px;"></div>
										 
										  
										  <div class="g2">PASSING</div>
										  <div class="h2" style="<%out.print(carta.colorNumPas());%>;"><% out.print(carta.getPas()); %></div>
										  <div class="i2" style="<%out.print(carta.colorBarraPas());%>; width:<%=carta.getPas()*3%>px;"></div>
										  										 
										  <div class="j2">DRIBBLING</div>
										  <div class="k2" style="<%out.print(carta.colorNumDri());%>;"><% out.print(carta.getDri()); %></div>
										  <div class="l2" style="<%out.print(carta.colorBarraDri());%>; width:<%=carta.getDri()*3%>px;"></div>
										  
										  <div class="m2">DEFENDING</div>
										  <div class="n2" style="<%out.print(carta.colorNumDef());%>;"><% out.print(carta.getDef()); %></div>
										  <div class="o2" style="<%out.print(carta.colorBarraDef());%>; width:<%=carta.getDef()*3%>px;"></div>
										 
										  <div class="p2">PHYSICALITY</div>
										  <div class="q2" style="<%out.print(carta.colorNumPhy());%>;"><% out.print(carta.getPhy()); %></div>
										  <div class="r2" style="<%out.print(carta.colorBarraPhy());%>; width:<%=carta.getPhy()*3%>px;"></div>
									</div>
								 </div>
							  </div>
							</div>
							<div class="grid-containerGeneral">
								<div class="c1"  style="padding-left:5px; padding-top:5px;text-align: center;">
									<table style="border-color:white; background-color:white;">
										<tr style="border-color:white; background-color:white;">
										
										<%
										if(controlador.dameCarta("Simple", cod_jugador).getRat() != 0 && controlador.dameCarta("if", cod_jugador) != null){						
											
											Carta simple = controlador.dameCarta("Simple", cod_jugador);
										
										%>
										<td style="border-color:white; background-color:white;"><a href="jugador.jsp?cod_jugador=<%=jugador.getCod_jugador() %>"><div class="Simple" style="text-align: center;"><%out.print(simple.getRat()); %></div></a></td>
										
										<%} %>
										
										<%
										if(controlador.dameCarta("if", cod_jugador).getRat() != 0 && controlador.dameCarta("if", cod_jugador) != null){
											
											Carta IF  = controlador.dameCarta("if", cod_jugador);
										
										%>
										<td style="border-color:white; background-color:white;"><a href="jugadorIf.jsp?cod_jugador=<%=jugador.getCod_jugador() %>"><div class="IF" style="text-align: center;"><%out.print(IF.getRat()); %></div></a></td>
										<%} %>
										
										<%
										if(controlador.dameCarta("motm", cod_jugador).getRat() != 0 && controlador.dameCarta("motm", cod_jugador) != null){
											
											Carta motm  = controlador.dameCarta("motm", cod_jugador);
										
										%>
									   <td style="border-color:white; background-color:white;"><a href="jugadorMotm.jsp?cod_jugador=<%=jugador.getCod_jugador() %>"><div class="MOTM" style="text-align: center;"><%out.print(motm.getRat()); %></div></a></td>
										<%} %>
										
										<%
										if(controlador.dameCarta("toty", cod_jugador).getRat() != 0 && controlador.dameCarta("toty", cod_jugador) != null){
											
											Carta toty = controlador.dameCarta("toty", cod_jugador);
										
										%>
										<td style="border-color:white; background-color:white;"><a href="jugadorToty.jsp?cod_jugador=<%=jugador.getCod_jugador() %>"><div class="TOTY" style="text-align: center;"><%out.print(toty.getRat()); %></div></a></td>
										<%} %>
										
										
										
										
										
										
										
										
										
										
										
												
										</tr>
									</table>
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