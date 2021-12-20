/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import Entity.Khoa;
import java.util.ArrayList;

/**
 *
 * @author 20002 Dec 16, 2021 12:44:45 PM
 */
public interface IKhoaDAO {

    public ArrayList<Khoa> getAll();

    public Khoa addNew(Khoa khoa);

    public Khoa updateByID(Khoa khoa);

    public ArrayList<Khoa> checkID(String makhoa);
}
