/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.Diem;
import java.util.ArrayList;

/**
 *
 * @author Anonymous
 */
public interface IDiemDAO {

    public ArrayList<Diem> getAll();

    public ArrayList<Diem> findByMaMonHoc(String maMH);

    public Diem addNew(Diem diem);

    public Diem upDate(Diem diem);

    public boolean CheckThongTin(String maSV, String maMH);

    public ArrayList<Diem> findByMaMH(String maSV);

    public ArrayList<Diem> findByMaSV(String maSV);

    public ArrayList<Diem> BangDiem(String maSV);

}
