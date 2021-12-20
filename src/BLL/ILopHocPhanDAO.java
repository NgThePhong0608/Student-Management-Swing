/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.LopHocPhan;
import java.util.ArrayList;

public interface ILopHocPhanDAO {

    public ArrayList<LopHocPhan> getAll();

    public ArrayList<LopHocPhan> findByIDKhoa(String maKhoa);

    public ArrayList<LopHocPhan> findByMaLHP(String maLHP);

    public LopHocPhan addNew(LopHocPhan lhp);

    public LopHocPhan updateByID(LopHocPhan lhp);

    public ArrayList<LopHocPhan> checkMaLHP(String maLHP);
}
