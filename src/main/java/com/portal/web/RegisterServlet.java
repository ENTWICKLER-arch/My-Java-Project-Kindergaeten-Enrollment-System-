package com.portal.web;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String city = request.getParameter("city");
        String whatsapp = request.getParameter("whatsapp");
        System.out.println("servlet triggered");

        com.portal.model.Student student = new com.portal.model.Student(0, name, email, course, city, whatsapp);

        com.portal.dao.StudentDAO dao = new com.portal.dao.StudentDAO();
        dao.insertStudent(student);

        
        String to = email;
        String from = "your.email@gmail.com"; 
        String host = "smtp.gmail.com";

        
        Properties properties = System.getProperties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               
                return new PasswordAuthentication("preranac03@gmail.com", "fcvm ycum wjat ieit");
            }
        });

       
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("preranac03@gmail.com"));  
            message.addRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("🎉 Registration Successful - " + course);
            message.setText("Hi " + name + "!\n\nYou are successfully registered for the " + course + " course in " + city + ".\n\nThank you for joining us!\n\n~ Team Prerana ❤");

            Transport.send(message);
            System.out.println("Email sent successfully...");
        } catch (MessagingException mex) {
            System.err.println("Error sending email: " + mex.getMessage());
            mex.printStackTrace();
        }

       
        response.sendRedirect("success.jsp?status=success");
    }
}