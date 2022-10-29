/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class GroupDAO extends DBContext {

    public ArrayList getAllCampus() {
        ArrayList camp = new ArrayList();
        try {
            String sql = " select  distinct Campus from [Group] ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                camp.add(rs.getString(1));
            }
        } catch (Exception e) {
        }
        return camp;

    }


    public ArrayList getAllSubject(String term, String dept) {
        ArrayList Subject = new ArrayList();
        if (term == null) {
            term = "";
        }
        if (dept == null) {
            dept = "";
        }
        try {
            String sql = "    select  distinct g.SubID, s.* from [Group] g, [Subject] s\n"
                    + " where g.SubID = s.SubID and g.Department like ? and  Term like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + dept + "%");
            stm.setString(2, "%" + term + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subject.add(rs.getString(4) );
            }
        } catch (Exception e) {
        }
        return Subject;
    }

    public ArrayList getAllGroup(String term, String dept, String subjectid) {
        if (term == null) {
            term = "";
        }
        if (dept == null) {
            dept = "";
        }
        if (subjectid == null) {
            subjectid = "";
        }
        ArrayList group = new ArrayList();
        try {
            String sql = "  select * from [Group] g, [Subject] s where  g.SubID = s.SubID and  g.Term like ?  and  g.Department like ? and s.SubName like ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + term + "%");
            stm.setString(2, "%" + dept + "%");
            stm.setString(3, "%" + subjectid + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                group.add(rs.getString(2));
            }
        } catch (Exception e) {
        }
        return group;
    }

}
