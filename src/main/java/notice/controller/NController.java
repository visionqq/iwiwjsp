package notice.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface NController {
//	추상메소드모임
	public void execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception;
		

}
