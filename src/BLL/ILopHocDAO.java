/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.LopHoc;
import java.util.ArrayList;

/**
 *
 * @author 20002 Dec 16, 2021 12:44:54 PM
 */
public interface ILopHocDAO {

    public ArrayList<LopHoc> getAll();

    public ArrayList<LopHoc> findByIDChuyenNganh(String maChuyenNganh);

    public LopHoc addNew(LopHoc lh);

    public LopHoc updateByID(LopHoc lh);

    public ArrayList<LopHoc> checkID(String malop);
}
