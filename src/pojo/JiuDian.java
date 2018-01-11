package pojo;

/**
 * Created by ttc on 18-1-3.
 */
public class JiuDian {
    private int id;
    private String Name;
    private String Type;
    private double Price;
    private String Address;
    private double Right;
    private int Commentnumber;
    private String Commentt;
    private String Managersay;
    private String Images;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImages() {
        return Images;
    }

    public void setImages(String images) {
        Images = images;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double price) {
        Price = price;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public double getRight() {
        return Right;
    }

    public void setRight(double right) {
        Right = right;
    }

    public int getCommentnumber() {
        return Commentnumber;
    }

    public void setCommentnumber(int commentnumber) {
        Commentnumber = commentnumber;
    }

    public String getCommentt() {
        return Commentt;
    }

    public void setCommentt(String commentt) {
        Commentt = commentt;
    }

    public String getManagersay() {
        return Managersay;
    }

    public void setManagersay(String managersay) {
        Managersay = managersay;
    }

    @Override
    public String toString() {
        return getName();
    }
}
