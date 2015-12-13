package ng.demo.web.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.AbstractHandlerExceptionResolver;

/**
 * 
 * @author cokolin
 *
 */
@Component
public class HandlerExceptionResolver extends AbstractHandlerExceptionResolver {

  @Override
  protected ModelAndView doResolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
      Exception ex) {
    boolean jsonResonse = false;
    if (handler != null) {
      HandlerMethod method = (HandlerMethod) handler;
      ResponseBody inter = method.getMethodAnnotation(ResponseBody.class);
      jsonResonse = (inter != null);
    } else {
      String accept = request.getHeader("Accept");
      jsonResonse = (accept != null && accept.contains(MediaType.APPLICATION_JSON_VALUE));
    }
    if (jsonResonse) {
      response.setContentType(MediaType.APPLICATION_JSON_VALUE);
      //TODO return JSON String!
    }
    return null;
  }

}
