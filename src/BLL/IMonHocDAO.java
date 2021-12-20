/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.MonHoc;
import java.util.ArrayList;

public interface IMonHocDAO {

    public ArrayList<MonHoc> getAll();

    public ArrayList<MonHoc> findIDMaMH(String maMH);

    public ArrayList<MonHoc> findMonHocByMaChuyenNganh(String maCN);

    public MonHoc addNew(MonHoc mh);

    public MonHoc updateByID(MonHoc mh);

    public ArrayList<MonHoc> CheckID(String mamh);
}
