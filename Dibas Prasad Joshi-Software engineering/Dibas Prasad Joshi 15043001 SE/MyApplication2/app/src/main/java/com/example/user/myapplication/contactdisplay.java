package com.example.user.myapplication;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class contactdisplay extends AppCompatActivity {
    String service_url;
    JSONObject jsonObject;
    JSONArray jsonArray;
    String json_str;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_contactdisplay);
        BackgroundTask obj = new BackgroundTask(); //object of class
        obj.execute(); // calls methods in sequence onPreExecute(), doInBackground(), onPostExecute()
    }
    class BackgroundTask extends AsyncTask<Void,Void,String>
    {
        SQLiteDatabase db;
        String result ;
        DatabaseInseter inserter;
        @Override
        protected String doInBackground(Void... params) {
            String json_string;


            try {
                StringBuilder stringBuilder = new StringBuilder();
                URL url = new URL(service_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(7000);
                httpURLConnection.setReadTimeout(7000);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    InputStream inputStream= httpURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    while ((json_string = bufferedReader.readLine()) != null) {

                        stringBuilder.append(json_string + "\n");

                    }

                    bufferedReader.close();
                    inputStream.close();
                    httpURLConnection.disconnect();

                    result = stringBuilder.toString().trim();

                    Log.i("Contacts are", result);

                }
                else
                {
                    result = null;
                    Log.i("ContactDisplay", "Data Cannot Be Fetched");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return result;
        }

        @Override
        protected void onPreExecute() {
            service_url="http://10.0.2.2/dibasjoshi/dataservice.php" ;
        }

        @Override
        protected void onPostExecute(String result)
        {
            json_str = result;
            Thread thd = new Thread()
            {
                @Override
                public void run()
                {
                    try
                    {

                        if(json_str != null)
                        {

                            int c = 0;
                            String empId, empName, mobileNo, officeNo,homeNo,email;
                            jsonObject = new JSONObject(json_str);
                            jsonArray = jsonObject.getJSONArray("server_response");
                            inserter = new DatabaseInseter(contactdisplay.this);
                            db= inserter.getWritableDatabase();
                            db.execSQL("Delete from emp_contact");
                            db.beginTransaction();

                            while(c<jsonArray.length())
                            {
                                JSONObject row = jsonArray.getJSONObject(c);
                                empId = row.getString("empId");
                                empName = row.getString("empName");
                                mobileNo = row.getString("mobileNo");
                                homeNo = row.getString("homeNo");
                                officeNo = row.getString("officeNo");
                                email = row.getString("email");
                                DatabaseInseter.insertData(db,empId,empName,mobileNo,officeNo,homeNo,email);
                                c++;
                            }
                            db.setTransactionSuccessful();
                            Log.i("Status:","Inserted Sucessfully");

                        }
                    }

                    catch (Exception e)
                    {
                        e.printStackTrace();
                    }
                    finally {
                        {
                            db.endTransaction();
                            db.close();
                        }
                    }
                }


            };
            thd.start();

            Intent intent=new Intent(getApplicationContext(),ContactDisplayView.class);
            startActivity(intent);

        }
    }
}
