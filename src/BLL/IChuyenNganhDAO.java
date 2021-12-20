/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;
import Entity.ChuyenNganh;
import java.util.ArrayList;
/**
 *
 * @author 20002 Dec 16, 2021 12:44:10 PM
 */
public interface IChuyenNganhDAO {

    public ArrayList<ChuyenNganh> getAll();

    public ChuyenNganh addNew(ChuyenNganh chuyennganh);

    public ChuyenNganh updateByID(ChuyenNganh chuyenNganh);

    public ArrayList<ChuyenNganh> checkID(String machuyennganh);
}
