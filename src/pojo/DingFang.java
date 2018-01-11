package pojo;

public class DingFang {
    private  String startdate;
    private String enddate;
    private String name;
    private String jiudianname;
    private int number1;
    private String phone;
    private int price;

    @Override
    public String toString() {
        return getJiudianname() +getName();
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJiudianname() {
        return jiudianname;
    }

    public void setJiudianname(String jiudianname) {
        this.jiudianname = jiudianname;
    }

    public int getNumber1() {
        return number1;
    }

    public void setNumber1(int number1) {
        this.number1 = number1;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
