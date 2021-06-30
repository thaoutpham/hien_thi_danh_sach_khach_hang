package main.java;

public class Customer {
    private String name;
    private String date;
    private String img;

    public Customer() {
    }

    public Customer(String name,String date,String img) {
        this.name = name;
        this.date = date;
        this.img = img;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
