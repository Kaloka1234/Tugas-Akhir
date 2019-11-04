/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metode;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
/**
 *
 * @author Khafit-PC
 */
public class metode implements abstrak_metode{
    koneksi kon = new koneksi();
    String sql = "";
    private static String nim, pass, usernama, tgl, kode;
    private static int hari, pil1, pil2;
    ArrayList kelas = new ArrayList();
    ArrayList tData = new ArrayList();
    int[] jam = new int[4];
    
    public metode(){
        kon.config();
    }
    
    public int login(String nim, String pass){
        int i = 0;
        try {
            this.nim = nim;
            this.pass = pass;
            sql = "Select * from mhs where nim = '" + this.nim + "' and password = '" + this.pass + "'; " ;
            kon.rs = kon.stm.executeQuery(sql);
            if(kon.rs.next()){
                if(nim.equals(kon.rs.getString("nim"))&&pass.equals(kon.rs.getString("password"))){
                    i = 1;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(metode.class.getName()).log(Level.SEVERE, null, ex);
        }
        return i;
    }
    
    public String nama(){
        try {
            sql = "Select * from mhs where nim = '" + nim + "';" ;
            kon.rs = kon.stm.executeQuery(sql);
            if(kon.rs.next()){
                usernama = kon.rs.getString("nama");
            }
        } catch (SQLException ex) {
            Logger.getLogger(metode.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usernama;
    }
    
    public String nim(){
        return nim;
    }
    
    public void terima(int hari, String tgl, int pil1, int pil2){
        this.hari = hari;
        this.tgl = tgl;
        this.pil1 = pil1;
        this.pil2 = pil2;
    }
    
    public void cari(){
            try{
                sql = "Select * from jadwal where hari = '" + hari + "' and `" + pil1 + "` = '0' and `" + pil2 + "` = '0';";
                kon.rs = kon.stm.executeQuery(sql);
                int i = 0, j = 0, k = 0, x;
                while(kon.rs.next()){
                    j = pil1 + 2;
                    k = pil2 + 2;
                    x = 0;
                    while(j <= k){
                        String y = "0";
                        if(kon.rs.getString(j).compareTo(y) > 1){
                            x++;
                        }
                        j++;
                    }
                    if(x < 1){
                        kelas.add(kon.rs.getString("kode"));
                    }
                    i++;
                }

                sql = "Select * from detail where tgl = '" + tgl + "';";
                kon.rsp = kon.stmp.executeQuery(sql);
                while(kon.rsp.next()){
                    i = 0;
                    while(i < kelas.size()){
                        if(String.valueOf(kelas.get(i)).compareTo(kon.rsp.getString("kode")) == 0){
                            x = 0;
                            k = 5;
                            while(k <= 8){
                                if(kon.rsp.getString(k).compareTo(String.valueOf(pil1)) == 0 || 
                                        kon.rsp.getString(k).compareTo(String.valueOf(pil2)) == 0){
                                        x++;
                                }
                                k++;
                            }
                            if(x != 0){
                                kelas.remove(i);
                            }
                        }
                        i++;
                    } 
                }
            }catch(SQLException ex) {
                Logger.getLogger(metode.class.getName()).log(Level.SEVERE, null, ex);
            }
        
    }
    
    public String aKelas(int i){
        sql = String.valueOf(kelas.get(i));
        return sql;
    }
    
    public int sKelas(){
        return kelas.size();
    }
    
    public void pilih(String kode){
        try {
            int i;
            this.kode = kode;
            for(i = 0; i < 4; i++){
                jam[i] = 0;
            }
            i = 0;
            while(pil1 <= pil2){
                jam[i] = pil1;
                pil1++;
                i++;
            }
            sql = "insert into detail (`nim`, `kode`, `hari`, `tgl`, `1`, `2`, `3`, `4`) values "
                    + "('"+ nim +"', '"+ kode +"', '"+ hari +"', '"+ tgl +"', '"+ jam[0] +"', '"+ jam[1] +"', '"+ jam[2] +"', '"+ jam[3] +"')";        
            kon.stm.execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(metode.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void tampil(){
        while(!tData.isEmpty()){
            tData.remove(0);
        }
        tData.add(usernama);
        tData.add(nim);
        tData.add(kode);
        tData.add(tgl);
        tData.add(pil1);
        tData.add(pil2);
    }
        
    public void tampil(String nim){
        try {
            while(!tData.isEmpty()){
                tData.remove(0);
            }
            sql = "Select id from detail where nim = '" + nim + "';";
            kon.rs = kon.stm.executeQuery(sql);
            while(kon.rs.next()){
                tData.add(kon.rs.getString("id"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(metode.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void tampil(String kode, String tgl, String jamm, String jama){
        this.kode = kode;
        this.tgl = tgl;
        this.pil1 = Integer.parseInt(jamm);
        this.pil2 = Integer.parseInt(jama);
    }
    
    public String aData(int i){
        return String.valueOf(tData.get(i));
    }
    
    public int sData(){
        return tData.size();
    }
    
    public String pil2(){
        return String.valueOf(pil2);
    }
}

