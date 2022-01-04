/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author 20002 Dec 16, 2021 12:36:32 PM
 */
public class HocPhan {

    private String maHP;
    private String tenHP;
    private String maMH;
    private String tenKhoa;
    private String hocPhanYeuCau;

    public HocPhan() {

    }

    public HocPhan(String maHP, String tenHP, String maMH, String tenKhoa, String hocPhanYeuCau) {
        this.maHP = maHP;
        this.tenHP = tenHP;
        this.maMH = maMH;
        this.tenKhoa = tenKhoa;
        this.hocPhanYeuCau = hocPhanYeuCau;
    }

    public String getMaHP() {
        return maHP;
    }

    public void setMaHP(String maHP) {
        this.maHP = maHP;
    }

    public String getTenHP() {
        return tenHP;
    }

    public void setTenHP(String tenHP) {
        this.tenHP = tenHP;
    }

    public String getTenKhoa() {
        return tenKhoa;
    }

    public void setTenKhoa(String tenKhoa) {
        this.tenKhoa = tenKhoa;
    }

    public String getMaMH() {
        return maMH;
    }

    public void setMaMH(String maMH) {
        this.maMH = maMH;
    }

    public String getHocPhanYeuCau() {
        return hocPhanYeuCau;
    }

    public void setHocPhanYeuCau(String hocPhanYeuCau) {
        this.hocPhanYeuCau = hocPhanYeuCau;
    }

    @Override
    public String toString() {
        return "Hoc phan: " +
                " " + getMaHP() + "'" +
                ", " + getTenHP() + "'" +
                ", " + getMaMH() + "'" +
                ", " + getTenKhoa() + "'" +
                ", " + getHocPhanYeuCau() + "'";
    }

}
