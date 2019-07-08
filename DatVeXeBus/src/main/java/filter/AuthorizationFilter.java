package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import com.busBooking.model.UsersRole;
import com.busBooking.utils.SessionUtil;

public class AuthorizationFilter implements Filter{

	private ServletContext context;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) servletRequest;
		HttpServletResponse resp = (HttpServletResponse) servletResponse;
		String url = req.getRequestURI();
		UsersRole us = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");
		if(url.startsWith("/admin")) {						
			if(us !=null) {			
				if(us.getRole().equals("ADMIN")) {
					filterChain.doFilter(servletRequest, servletResponse);
				}else {
					resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
				}				
			}else {
				resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
			}
		}else if(url.startsWith("/trang-chu")) {
			if(us !=null) {			
				if(us.getRole().equals("ADMIN")) {
					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/home.jsp");
					rd.forward(req, resp);
				}else {
					filterChain.doFilter(servletRequest, servletResponse); 
				}				
			}else {
				filterChain.doFilter(servletRequest, servletResponse); 
			} 
		}else {
			filterChain.doFilter(servletRequest, servletResponse); 
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
