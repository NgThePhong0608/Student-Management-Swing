/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author 20002 Dec 16, 2021 12:36:19 PM
 */
public class Diem {

    private String maLop;
    private String maSV;
    private String maMH;
    private String diemTK;
    private String diemGK;
    private String diemCK;
    private float diemTB;
    private String xepLoai;

    public Diem() {
    }

    public Diem(String maLop, String maSV, String maMH, String diemTK, String diemGK, String diemCK, float diemTB,
            String xepLoai) {
        this.maLop = maLop;
        this.maSV = maSV;
        this.maMH = maMH;
        this.diemTK = diemTK;
        this.diemGK = diemGK;
        this.diemCK = diemCK;
        this.diemTB = diemTB;
        this.xepLoai = xepLoai;
    }

    public String getMaLop() {
        return maLop;
    }

    public void setMaLop(String maLop) {
        this.maLop = maLop;
    }

    public String getMaSV() {
        return maSV;
    }

    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }

    public String getMaMH() {
        return maMH;
    }

    public void setMaMH(String maMH) {
        this.maMH = maMH;
    }

    public String getDiemTK() {
        return diemTK;
    }

    public void setDiemTK(String diemTK) {
        this.diemTK = diemTK;
    }

    public String getDiemGK() {
        return diemGK;
    }

    public void setDiemGK(String diemGK) {
        this.diemGK = diemGK;
    }

    public String getDiemCK() {
        return diemCK;
    }

    public void setDiemCK(String diemCK) {
        this.diemCK = diemCK;
    }

    public float getDiemTB() {
        return diemTB;
    }

    public void setDiemTB(float diemTB) {
        this.diemTB = diemTB;
    }

    public String getXepLoai() {
        return xepLoai;
    }

    public void setXepLoai(String xepLoai) {
        this.xepLoai = xepLoai;
    }

    @Override
    public String toString() {
        return "Diem: " + "Ma lop: " + maLop + ", " + maSV + ", " + maMH + ", diemTK=" + diemTK + ", diemGK=" + diemGK
                + ", diemCK="
                + diemCK + ", diemTB=" + diemTB + ", xepLoai=" + xepLoai;
    }

}
