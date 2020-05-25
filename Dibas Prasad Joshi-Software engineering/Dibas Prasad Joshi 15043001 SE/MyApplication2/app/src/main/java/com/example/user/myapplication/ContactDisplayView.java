package com.example.user.myapplication;

import android.annotation.TargetApi;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ExpandableListView;
import android.support.v7.widget.SearchView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class ContactDisplayView extends AppCompatActivity implements android.support.v7.widget.SearchView.OnQueryTextListener, android.support.v7.widget.SearchView.OnCloseListener {
    ExpandableListView expandableListView;
    DatabaseInseter inseter;
    ContactDisplayAdapter ContactDisplayAdapter;
    android.support.v7.widget.SearchView searchView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        ExpandableListView expandableListView;
        DatabaseInseter Inseter;

        searchView=(android.support.v7.widget.SearchView)findViewById(R.id.search);
        searchView.setIconifiedByDefault(true);
        searchView.setOnQueryTextListener(this);
        searchView.setOnCloseListener(this);


        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_contact_display_view);
        expandableListView=(ExpandableListView)findViewById(R.id.expandableListView);
        try
        {
            String empId,empName,mobileNo,officeNo, homeNo,email;
            final List<String> Headings=new ArrayList<String>();
            final HashMap<String,List<String>> childList=new HashMap<String,List<String>>();
            List<String> L3;
            Inseter =new DatabaseInseter(ContactDisplayView.this);
            SQLiteDatabase db=Inseter.getWritableDatabase();
            Cursor res=Inseter.getAllData(db);
            int count =0;
            while(res.moveToNext())
            {
                L3=new ArrayList<String>();
                empName=res.getString(1);
                mobileNo=res.getString(2);
                homeNo=res.getString(3);
                officeNo=res.getString(4);
                email=res.getString(5);
                Headings.add(empName);
                L3.add("MobileNo:"+mobileNo);
                L3.add("HomeNo:"+homeNo);
                L3.add("OfficeNo:"+officeNo);
                L3.add("Email:"+email);
                childList.put(empName,L3);
                count++;
            }
             ContactDisplayAdapter= new ContactDisplayAdapter(this,Headings,childList);
            expandableListView.setAdapter(ContactDisplayAdapter);


        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    @Override
    public boolean onQueryTextChange(String s) {
        ContactDisplayAdapter.filterdata(s);
        return false;
    }
    @Override
    public boolean onQueryTextSubmit(String s) {
        ContactDisplayAdapter.filterdata(s);
        return false;
    }
    @Override
    public boolean onClose() {
        ContactDisplayAdapter.filterdata("");
        return false;
    }
}

