package main.java.propertea.model.finance;

public class User {

    private int userID;

    private String email;

    private String password;

    private String role;

    public User(int userID, String email, String password, String role) {
        this.userID = userID;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public User() {

    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User [id=" + userID + ", email=" + email + ", password=" + password + ", role=" + role + "]";
    }
}
