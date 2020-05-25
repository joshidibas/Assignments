package com.example.user.myapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by Amrit Shrestha on 11/24/2016.
 */
public class DatabaseInseter extends SQLiteOpenHelper
{
    public static final String DATABASE_NAME="employee.database";
    public static final String TABLE_NAME="emp_contact";
    public static final String create_query="create table " + TABLE_NAME + "(empId TEXT, empName TEXT, mobileNo TEXT, officeNo TEXT, homeNo TEXT, email TEXT)";
    public DatabaseInseter(Context context)
    {
        super(context,DATABASE_NAME,null,1); //constructor will create database
    }

    @Override
    public void onCreate(SQLiteDatabase db)
    {
        db.execSQL(create_query); //table is created
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
    {
        db.execSQL("DROP TABLE IF EXISTS" + TABLE_NAME); //deletes table if table exists
    }
    public static boolean insertData(SQLiteDatabase db, String empId, String empName, String mobileNo, String officeNo, String homeNo, String email)
    {
       ContentValues contentValues=new ContentValues();
        contentValues.put("empId",empId);
        contentValues.put("empName",empName);
        contentValues.put("mobileNo",mobileNo);
        contentValues.put("officeNo",officeNo);
        contentValues.put("homeNo",homeNo);
        contentValues.put("email",email);
        long result =db.insert(TABLE_NAME,null,contentValues);
                if(result==-1)
                {
                    return false;
                }
        else
                {
                    return true;
                }
    }

    public Cursor getAllData(SQLiteDatabase db)
    {
     db=this.getWritableDatabase();
       Cursor res=db.rawQuery("Select * from emp_contact",null);
        return res;
    }
}
