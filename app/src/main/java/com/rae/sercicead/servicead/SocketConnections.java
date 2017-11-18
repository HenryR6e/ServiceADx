package com.rae.sercicead.servicead;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import java.io.*;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.ArrayList;




public class SocketConnections extends AsyncTask<Object, String, String> {
   public SharedPreferences prefs;
   private String domain_name;
   private String type_hotel;
   private int domain_port;
    private String response = "";

   // private TextView textResponse;


    //constructor
    SocketConnections(String addr, int port,String address) {
        domain_name = addr;
        domain_port = port;
        type_hotel = address;

    }

    @Override
    protected String doInBackground(Object... arg0) {
        Socket socket = null;
        try {
            socket = new Socket(domain_name,domain_port);
            ArrayList al =  new ArrayList();
            ArrayList ally =  new ArrayList();
            al.add(type_hotel);

            try
            {       //sending
                ObjectOutputStream objectOutput = new ObjectOutputStream(socket.getOutputStream());
                objectOutput.writeObject(al);

                //recieving
                objectOutput.flush();

                ObjectInputStream objectInput = new ObjectInputStream(socket.getInputStream());
                Object object = objectInput.readObject();
               // ally =(ArrayList) object;
                return response= ("data back");

            }

            catch (IOException e)
            {
                e.printStackTrace();
            }
        }catch (ClassNotFoundException | IOException ex ){

        }

        return  response;
    }


    @Override
    protected void onPostExecute(String result) {

        super.onPostExecute(result);
        Log.d("network ",response);
    //  prefs.edit().putString("response",response).apply();

    }


}
