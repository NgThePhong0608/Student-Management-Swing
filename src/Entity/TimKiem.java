/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author 20002 Dec 16, 2021 12:37:25 PM
 */
public class TimKiem {

    private String malop;
    private String masv;

    public TimKiem() {
    }

    public TimKiem(String malop, String masv) {
        this.malop = malop;
        this.masv = masv;
    }

    public void setMasv(String masv) {
        this.masv = masv;
    }

    public String getMasv() {
        return masv;
    }

    public TimKiem(String malop) {
        this.malop = malop;
    }

    public String getMalop() {
        return malop;
    }

    public void setMalop(String malop) {
        this.malop = malop;
    }
}
