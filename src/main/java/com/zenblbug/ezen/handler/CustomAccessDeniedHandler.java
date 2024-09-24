package com.zenblbug.ezen.handler;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CustomAccessDeniedHandler implements AccessDeniedHandler {

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response,
                       AccessDeniedException accessDeniedException) throws IOException {
        // 이미 로그인한 사용자이고, 권한이 있는 상태에서 접근할 수 없는 경우
        // /main으로 리다이렉트
        response.sendRedirect(request.getContextPath() + "/main");
    }
}
