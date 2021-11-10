package javaCode;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class itemDAO {

    public static List<itemVO> selItemList()
    {
        List<itemVO> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "Select nitem, grade, ctnt , producer, rdt from t_item";

        try{
            con = DbUtils.getCon();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next())
            {
                itemVO vo = new itemVO();
                vo.setNitem(rs.getInt("nitem"));
                vo.setGrade(rs.getString("grade"));
                vo.setCtnt(rs.getString("ctnt"));
                vo.setProducer(rs.getString("producer"));
                vo.setRdt(rs.getString(rs.getString("rdt")));
                list.add(vo);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            DbUtils.close(con,ps,rs);
        }

        return list;
    }
}
