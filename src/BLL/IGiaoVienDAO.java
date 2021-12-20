/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.GiaoVien;
import java.util.ArrayList;

public interface IGiaoVienDAO {

    public ArrayList<GiaoVien> getAll();

    public ArrayList<GiaoVien> findByMaChuyenNganh(String maChuyenNganh);

    public ArrayList<GiaoVien> findByMaGV(String maGV);

    public GiaoVien addNew(GiaoVien gv);

    public GiaoVien updateByMaGV(GiaoVien gv);

    public ArrayList<GiaoVien> CheckMaGV(String maGV);

}
