package com.zenblbug.ezen.provider;

import org.springframework.stereotype.Component;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

@Component
public class EmailProvider {

    private final String SUBJECT = "[젠틀벅 프로젝트 서비스] 인증메일입니다.";
    private final String HOST = "smtp.gmail.com"; // SMTP 서버 주소
    private final String USERNAME = "wogur4094@gmail.com"; // 발신자 이메일 주소
    private final String PASSWORD = "vglz ojpl rsjs bmqb"; // 발신자 이메일 비밀번호

    public boolean sendCertificationMail(String email, String certificationNumber) {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", HOST);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.port", "587"); // SMTP 서버 포트

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(USERNAME, PASSWORD);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(USERNAME));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject(SUBJECT);

            String htmlContent = getCertificationMessage(certificationNumber);
            message.setContent(htmlContent, "text/html; charset=UTF-8");

            Transport.send(message);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    private String getCertificationMessage(String certificationNumber) {
        StringBuilder certificationMessage = new StringBuilder();
        certificationMessage.append("<h1 style='text-align:center;'>[젠틀벅 프로젝트 서비스] 인증메일</h1>");
        certificationMessage.append("<h3 style='text-align:center;'>인증코드 : <strong style='font-size:32px; letter-spacing: 8px;'>")
                .append(certificationNumber).append("</strong></h3>");
        return certificationMessage.toString();
    }
}
