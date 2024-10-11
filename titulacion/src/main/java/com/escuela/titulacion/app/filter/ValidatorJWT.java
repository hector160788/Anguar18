package com.escuela.titulacion.app.filter;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.filter.OncePerRequestFilter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class ValidatorJWT extends OncePerRequestFilter {

	private final RestClient restClient;

	public ValidatorJWT(RestClient.Builder restClient) {
		this.restClient = restClient.baseUrl("http://localhost:8085").build();
	}

	public ValidatorJWT() {
		this.restClient = RestClient.builder()

//				  .requestFactory(new HttpComponentsClientHttpRequestFactory())
//				  .messageConverters(converters -> converters.add( String))
				.baseUrl("http://localhost:8085")
//				  .defaultUriVariables(Map.of("variable", "foo"))
//				  .defaultHeader("My-Header", "Foo")
//				  .requestInterceptor(myCustomInterceptor)
//				  .requestInitializer(myCustomInitializer)
				.build();
	}

//	@Override
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//			throws IOException, ServletException {
//		HttpServletRequest req = (HttpServletRequest) request;
//		HttpServletResponse res = (HttpServletResponse) response;
//		// LOG.info("Logging Request {} : {}", req.getMethod(), req.getRequestURI());
//		 Enumeration<String> enumeration = req.getHeaderNames();
//		while(enumeration.hasMoreElements()) {
//			String element = enumeration.nextElement(); // Obtener el siguiente elemento
//            System.out.println(element); // Procesar el elemento (aquí lo imprimimos)
//		}
//		String token = req.getHeader("Authorization").replace("Bearer ", "");
//		
//		try {
//			if(token == null) {
//				res.sendError(res.SC_UNAUTHORIZED, "Token Invalido");
//				return;
//			}
//			Object resultado = restClient.get().uri("/api/v1/validatoken")
//					.header("Authorization", req.getHeader("Authorization")).retrieve().body(Object.class);
//			System.out.println("doFilter " + token);
//		} catch (Exception e) {
//			System.out.println("error " + e.getMessage());
//			res.sendError(res.SC_UNAUTHORIZED, "Token Invalido");
//			return;
//		}
//		chain.doFilter(request, response);
//		// LOG.info("Logging Response :{}", res.getContentType());
//
//	}

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		 Enumeration<String> enumeration = request.getHeaderNames();
		 System.out.println("*************************************");
			while(enumeration.hasMoreElements()) {
				String element = enumeration.nextElement(); // Obtener el siguiente elemento
	            System.out.println(element+" "+request.getHeader(element)); // Procesar el elemento (aquí lo imprimimos)
			}
			String token = request.getHeader("Authorization") !=null? request.getHeader("Authorization").replace("Bearer ", ""):"error";
			
			
			try {
				if(token == null || "error".equalsIgnoreCase(token)) {
					System.out.println(token+ " ????????????????????????????");
					response.sendError(response.SC_UNAUTHORIZED, "Token Invalido");
				
					return;
				}
				System.out.println("*************************************");
				Object resultado = restClient.get().uri("/api/v1/validatoken")
						.header("Authorization", request.getHeader("Authorization")).retrieve().body(Object.class);
				System.out.println("doFilter " + token);
			} catch (Exception e) {
				System.out.println("error " + e.getMessage());
				response.sendError(response.SC_UNAUTHORIZED, "Token Invalido");
				return;
			}
			filterChain.doFilter(request, response);
	}

}
