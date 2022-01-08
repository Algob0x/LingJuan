package fr.lingjuan.mvc.bean;

public class RegisterMBean {
    private String fullName;
    private String email;
    private String userName;
    private String password;
    private String role;
    //TODO AJOUTER LES CHAMPS MANQUANTS ADRESSE ET NO DE TELEPHONE

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getFullName() {
        return fullName;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }
    public String getRole() {return role;}
    public void setRole(String role) {this.role = role;}


    }
