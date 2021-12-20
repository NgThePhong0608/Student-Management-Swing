/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.HocPhan;
import java.util.ArrayList;

/**
 *
 * @author 20002 Dec 16, 2021 12:44:36 PM
 */
public interface IHocPhanDAO {

    public ArrayList<HocPhan> getAll();

    public ArrayList<HocPhan> findTenKhoa(String tenKhoa);

    public HocPhan addNew(HocPhan hp);

    public HocPhan updateByMaHP(HocPhan hp);

    public ArrayList<HocPhan> CheckMaHP(String maHP);

    public ArrayList<HocPhan> CheckMaMH(String maMH);
}
