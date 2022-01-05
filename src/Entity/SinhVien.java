/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Dinh Kha Vy
 */
public class SinhVien {

    private String maSV;
    private String tenSV;
    private String malop;
    private String heDaoTao;
    private String ngaySinh;
    private boolean gioiTinh;
    private String diaChi;
    private String sdt;

    public SinhVien() {
    }

    public SinhVien(String maSV, String tenSV, String malop, String heDaoTao, String ngaySinh, boolean gioiTinh,
            String diaChi, String sdt) {
        this.maSV = maSV;
        this.tenSV = tenSV;
        this.malop = malop;
        this.heDaoTao = heDaoTao;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.sdt = sdt;
    }

    public String getMaSV() {
        return maSV;
    }

    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }

    public String getTenSV() {
        return tenSV;
    }

    public void setTenSV(String tenSV) {
        this.tenSV = tenSV;
    }

    public String getMalop() {
        return malop;
    }

    public void setMalop(String malop) {
        this.malop = malop;
    }

    public String getHeDaoTao() {
        return heDaoTao;
    }

    public void setHeDaoTao(String heDaoTao) {
        this.heDaoTao = heDaoTao;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public boolean isGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    @Override
    public String toString() {
        return "Sinh Vien: " + this.getMaSV() + ", " + this.getTenSV() + ", " + this.getNgaySinh() + ", "
                + this.getHeDaoTao() + "," + this.getMalop() + ", " + this.getSdt() + ", " + this.getDiaChi();
    }
}
