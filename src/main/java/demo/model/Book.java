package demo.model;

/**
 * Created by AnLu on
 * 2017/6/16 09:14.
 * JavaEE_Library
 */
public class Book {
    private Integer id;
    private String title;
    private String author;
    private String pub;
    private String time;
    private double price;
    private int amount;

    public Book() {
    }

    public Book(Integer id, String title, String author, String pub, String time, double price, int amount) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.pub = pub;
        this.time = time;
        this.price = price;
        this.amount = amount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        this.pub = pub;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
