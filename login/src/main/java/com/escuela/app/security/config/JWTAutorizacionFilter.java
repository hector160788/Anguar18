package com.escuela.app.security.config;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.UnsupportedJwtException;
import io.jsonwebtoken.security.SignatureException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
@Component
@Slf4j
public class JWTAutorizacionFilter extends OncePerRequestFilter{

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		try {
			if (isJWTValido(request, response)) {
				log.info("antes del claims");
				Claims claims = setSigningKey(request);
				log.info("claims {} ",claims.get("authorities"));
				log.info("varios claims {} ",claims.get("saludo"));
				if (claims.get("authorities") != null) {

					setAuthentication(claims);
				} else {
					SecurityContextHolder.clearContext();
				}
			} else {
				SecurityContextHolder.clearContext();

			}
			filterChain.doFilter(request, response);
		} catch (ExpiredJwtException  e) {
			log.error("ExpiredJwtException {} ",e.getMessage());
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED, e.getMessage());
			response.getWriter().write(e.getMessage());
			return;
		}catch(UnsupportedJwtException e) {
			log.error("UnsupportedJwtException {} ",e.getMessage());
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED, e.getMessage());
			return;
		}catch( MalformedJwtException e) {
			log.error("MalformedJwtException {} ",e.getMessage());
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED, e.getMessage());
			return;
		}
		catch( SignatureException e) {
			log.error("SignatureException {} ",e.getMessage());
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED, e.getMessage());
			return;
		}
		catch( IllegalArgumentException e) {
			log.error("IllegalArgumentException {} ",e.getMessage());
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED, e.getMessage());
			return;
		}
		
	}
	/*
	 * metodo para validar si el token es valido
	 */
	private boolean isJWTValido(HttpServletRequest request, HttpServletResponse res) {
		/*obtenemos del header el  Authorization para obtener el Bearer token*/
		String authenticationHeader = request.getHeader(Constantes.HEADER_AUTHORIZACION_KEY);
		log.info("token validacion {} ",authenticationHeader);
		if (authenticationHeader == null || !authenticationHeader.startsWith(Constantes.TOKEN_BEARER_PREFIX))
			return false;
		return true;
	}
	/*
	 * metodo para agregar la autorizacion al contexto de spring security por cada peticion
	 */
	private void setAuthentication(Claims claims) {

		List<String> authorities = (List<String>) claims.get("authorities");

		UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(claims.getSubject(), null,
				authorities.stream().map(SimpleGrantedAuthority::new).collect(Collectors.toList()));

		SecurityContextHolder.getContext().setAuthentication(auth);

	}
	
	private Claims setSigningKey(HttpServletRequest request) {
		String jwtToken = request.getHeader(Constantes.HEADER_AUTHORIZACION_KEY).replace(Constantes.TOKEN_BEARER_PREFIX, "");
		log.info("token en setSigningKey {} ",jwtToken);
//		Claims responseclaims = (Claims) Jwts.parserBuilder().build();
//		try {
//		 responseclaims = Jwts
//				.parserBuilder()
//				.setSigningKey(Constantes.getSigningKey(Constantes.SUPER_SECRET_KEY))
//				.build()
//				.parseClaimsJws(jwtToken)
//				.getBody();
//		}catch (Exception e) {
//			log.info("errro******* "+e.getCause());
//		}
		
		return Jwts
				.parserBuilder()
				.setSigningKey(Constantes.getSigningKey(Constantes.SUPER_SECRET_KEY))
				.build()
				.parseClaimsJws(jwtToken)
				.getBody();
	}

}
