using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MyDataBase
/// </summary>
public class MyDataBase
{
    SqlConnection db;
    SqlCommand cmd;
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();
    SqlDataReader dr;
    string con = "";
    int no;
    public SqlConnection connectDataBase()
    {
        con = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anamadeya\Documents\EMS.mdf;Integrated Security=True;Connect Timeout=30";
        db = new SqlConnection(con);
        if (db.State == ConnectionState.Open)
        {
            db.Close();
        }
        db.ConnectionString = con;
        db.Open();
        return db;
    }

    public int saveRecord(string st)
    {
        cmd = new SqlCommand();
        cmd.Connection = db;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = st;
        no = cmd.ExecuteNonQuery();
        return no;
    }

    public int updateRecord(string st)
    {
        cmd = new SqlCommand(st, db);
        no = cmd.ExecuteNonQuery();
        return no;
    }

    public int deleteRecord(string st)
    {
        cmd = new SqlCommand(st, db);
        no = cmd.ExecuteNonQuery();
        return no;
    }

    public SqlDataReader showRecord(string st)
    {
        cmd = new SqlCommand(st, db);
        dr = cmd.ExecuteReader();
        return dr;
    }

    public DataSet showAll(string st, string tblName)
    {
        cmd = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cmd);
        sqlda.Fill(ds, tblName);
        return ds;
    }

}