/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Dinh Kha Vy
 */
public class ChuyenNganh {

    private String maChuyenNganh;
    private String tenChuyenNganh;
    private String maKhoa;

    public ChuyenNganh(String maChuyenNganh, String tenChuyenNganh, String maKhoa) {
        this.maChuyenNganh = maChuyenNganh;
        this.tenChuyenNganh = tenChuyenNganh;
        this.maKhoa = maKhoa;
    }

    public ChuyenNganh() {

    }

    public String getMaChuyenNganh() {
        return maChuyenNganh;
    }

    public void setMaChuyenNganh(String maChuyenNganh) {
        this.maChuyenNganh = maChuyenNganh;
    }

    public String getTenChuyenNganh() {
        return tenChuyenNganh;
    }

    public void setTenChuyenNganh(String tenChuyenNganh) {
        this.tenChuyenNganh = tenChuyenNganh;
    }

    public String getMaKhoa() {
        return maKhoa;
    }

    public void setMaKhoa(String maKhoa) {
        this.maKhoa = maKhoa;
    }

    @Override
    public String toString() {
        return "ChuyenNganh: " + maChuyenNganh + ", " + tenChuyenNganh + ", " + maKhoa;
    }

}
