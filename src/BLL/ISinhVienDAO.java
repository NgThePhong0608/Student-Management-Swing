/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.SinhVien;
import java.util.ArrayList;

public interface ISinhVienDAO {

    public ArrayList<SinhVien> getAll();

    public ArrayList<SinhVien> findByMaLopHoc(String maLop);

    public ArrayList<SinhVien> findByMaSV(String maSV);

    public SinhVien addNew(SinhVien sv);

    public SinhVien updateByMaSV(SinhVien sv);

    public ArrayList<SinhVien> CheckMaSV(String maSV);

}
