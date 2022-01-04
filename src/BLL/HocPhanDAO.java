/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BLL;

import DataAccess.DBConnect;
import Entity.HocPhan;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 20002 Dec 16, 2021 12:43:56 PM
 */
public class HocPhanDAO implements IHocPhanDAO {

    @Override
    public ArrayList<HocPhan> getAll() {
        ArrayList<HocPhan> list = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (DBConnect.open()) {
            try {
                ps = DBConnect.cnn.prepareStatement("select *from tblHocPhan");
                rs = ps.executeQuery();
                list = new ArrayList<>();
                while (rs.next()) {
                    HocPhan hocPhan = new HocPhan();
                    hocPhan.setMaHP(rs.getString(1));
                    hocPhan.setTenHP(rs.getString(2));
                    hocPhan.setMaMH(rs.getString(3));
                    hocPhan.setTenKhoa(rs.getString(4));
                    hocPhan.setHocPhanYeuCau(rs.getString(5));

                    list.add(hocPhan);
                    try {
                        FileWriter writer = new FileWriter("hocPhan.csv", true);
                        for (HocPhan hocPhan1 : list) {
                            writer.write(hocPhan1.toString() + "\n");
                        }
                        writer.close();
                    } catch (IOException e) {
                        System.out.println("An error occured");
                        e.printStackTrace();
                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnect.close(ps, rs);
            }
        }
        return list;

    }

    @Override
    public ArrayList<HocPhan> findTenKhoa(String tenKhoa) {
        ArrayList<HocPhan> list = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (DBConnect.open()) {
            try {
                ps = DBConnect.cnn.prepareStatement("select *from tblHocPhan where fldTenKhoa =?");
                ps.setString(1, tenKhoa);
                rs = ps.executeQuery();
                list = new ArrayList<>();
                while (rs.next()) {
                    HocPhan HocPhan = new HocPhan();
                    HocPhan.setMaHP(rs.getString(1));
                    HocPhan.setTenHP(rs.getString(2));
                    HocPhan.setMaMH(rs.getString(3));
                    HocPhan.setTenKhoa(rs.getString(4));
                    HocPhan.setHocPhanYeuCau(rs.getString(5));

                    list.add(HocPhan);
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnect.close(ps, rs);
            }
        }
        return list;
    }

    @Override
    public HocPhan addNew(HocPhan HocPhan) {
        PreparedStatement ps = null;
        if (DBConnect.open()) {
            try {
                ps = DBConnect.cnn.prepareStatement("INSERT INTO tblHocPhan values (?,?,?,?,?)");
                ps.setString(1, HocPhan.getMaHP());
                ps.setString(2, HocPhan.getTenHP());
                ps.setString(3, HocPhan.getMaMH());
                ps.setString(4, HocPhan.getTenKhoa());
                ps.setString(5, HocPhan.getHocPhanYeuCau());
                int row = ps.executeUpdate();
                if (row < 1) {
                    HocPhan = null;
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
                HocPhan = null;
            } finally {
                DBConnect.close(ps);
            }
        }
        return HocPhan;
    }

    @Override
    public HocPhan updateByMaHP(HocPhan hp) {
        PreparedStatement ps = null;
        if (DBConnect.open()) {
            try {
                ps = DBConnect.cnn.prepareStatement(
                        "update tblHocPhan set fldTenHP = ?,fldMaMH= ?,fldTenKhoa=?,fldHocPhanYeuCau=?  where fldMaHP = ?");

                ps.setString(1, hp.getTenHP());
                ps.setString(2, hp.getMaMH());
                ps.setString(3, hp.getTenKhoa());
                ps.setString(4, hp.getHocPhanYeuCau());
                ps.setString(5, hp.getMaHP());

                int row = ps.executeUpdate();
                if (row < 1) {
                    hp = null;
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
                hp = null;
            } finally {
                DBConnect.close();
            }
        }
        return hp;
    }

    public void delHocPhan(String HocPhanID) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        if (DBConnect.open()) {
            ps = DBConnect.cnn.prepareStatement("delete from tblHocPhan where fldMaHP= ?");
            ps.setString(1, HocPhanID);
            ps.executeUpdate();
            DBConnect.close();
        }
    }

    @Override
    public ArrayList<HocPhan> CheckMaHP(String maHP) {

        ArrayList<HocPhan> list = null;
        PreparedStatement psCheck = null;
        ResultSet rs = null;
        if (DBConnect.open()) {
            try {
                psCheck = DBConnect.cnn.prepareStatement("select *from tblHocPhan where fldMaHP=?");
                psCheck.setString(1, maHP);
                rs = psCheck.executeQuery();
                list = new ArrayList<HocPhan>();
                while (rs.next()) {
                    HocPhan hocPhan = new HocPhan();
                    hocPhan.setMaHP(rs.getString(1));
                    list.add(hocPhan);
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnect.close(psCheck, rs);
            }
        }
        return list;
    }

    @Override
    public ArrayList<HocPhan> CheckMaMH(String maMH) {

        ArrayList<HocPhan> list = null;
        PreparedStatement psCheckMH = null;
        ResultSet rs = null;
        if (DBConnect.open()) {
            try {
                psCheckMH = DBConnect.cnn.prepareStatement("select *from tblMonHoc where fldMaMH=?");
                psCheckMH.setString(1, maMH);
                rs = psCheckMH.executeQuery();
                list = new ArrayList<HocPhan>();
                while (rs.next()) {
                    HocPhan hocPhan = new HocPhan();
                    hocPhan.setMaHP(rs.getString(1));
                    list.add(hocPhan);
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnect.close(psCheckMH, rs);
            }
        }
        return list;
    }

    public ArrayList<HocPhan> findByMaHP(String maHP) {
        ArrayList<HocPhan> list = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (DBConnect.open()) {
            try {
                ps = DBConnect.cnn.prepareStatement("select *from tblHocPhan where fldMaHP =?");
                ps.setString(1, maHP);
                rs = ps.executeQuery();
                list = new ArrayList<>();
                while (rs.next()) {
                    HocPhan HocPhan = new HocPhan();
                    HocPhan.setMaHP(rs.getString(1));
                    HocPhan.setTenHP(rs.getString(2));
                    HocPhan.setMaMH(rs.getString(3));
                    HocPhan.setTenKhoa(rs.getString(4));
                    HocPhan.setHocPhanYeuCau(rs.getString(5));

                    list.add(HocPhan);
                }
            } catch (SQLException ex) {
                Logger.getLogger(HocPhanDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnect.close(ps, rs);
            }
        }
        return list;
    }
}
