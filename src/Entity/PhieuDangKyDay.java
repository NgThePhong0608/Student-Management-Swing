/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author 20002 Dec 16, 2021 12:37:07 PM
 */
public class PhieuDangKyDay {

    private String maLHP;
    private String maGV;
    private String hocKy;
    private String namHoc;
    private String ngayDangKy;

    public String getMaLHP() {
        return maLHP;
    }

    public void setMaLHP(String maLHP) {
        this.maLHP = maLHP;
    }

    public String getMaGV() {
        return maGV;
    }

    public void setMaGV(String maGV) {
        this.maGV = maGV;
    }

    public String getHocKy() {
        return hocKy;
    }

    public void setHocKy(String hocKy) {
        this.hocKy = hocKy;
    }

    public String getNamHoc() {
        return namHoc;
    }

    public void setNamHoc(String namHoc) {
        this.namHoc = namHoc;
    }

    public String getNgayDangKy() {
        return ngayDangKy;
    }

    public void setNgayDangKy(String ngayDangKy) {
        this.ngayDangKy = ngayDangKy;
    }

    @Override
    public String toString() {
        return "PhieuDangKyDay: " + maLHP + ", " + maGV + ", " + hocKy + ", " + namHoc + ", " + ngayDangKy;
    }

    public PhieuDangKyDay(String maLHP, String maGV, String hocKy, String namHoc, String ngayDangKy) {
        this.maLHP = maLHP;
        this.maGV = maGV;
        this.hocKy = hocKy;
        this.namHoc = namHoc;
        this.ngayDangKy = ngayDangKy;
    }

    public PhieuDangKyDay() {
    }
}
