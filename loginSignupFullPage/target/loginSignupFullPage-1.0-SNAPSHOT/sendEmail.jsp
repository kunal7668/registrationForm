<%-- 
    Document   : sendEmail
    Created on : May 6, 2025, 11:55:54 AM
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, javax.mail.*, jakartaa.mail.internet.*, javax.activation.*" %>
<%
    String to = request.getParameter("to");
    String subject = request.getParameter("subject");
    String messageText = request.getParameter("message");

    final String from = "your-email@gmail.com";
    final String password = "your-app-password";  // Use App Password for Gmail

    Properties props = new Properties();
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.socketFactory.port", "465");
    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "465");

    Session session = Session.getDefaultInstance(props,
        new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });

    try {
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject(subject);
        message.setText(messageText);

        Transport.send(message);
%>
        <h3>Email Sent Successfully!</h3>
<%
    } catch (MessagingException e) {
        out.println("Error: " + e.getMessage());
    }
%>
