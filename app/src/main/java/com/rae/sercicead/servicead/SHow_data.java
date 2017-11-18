package com.rae.sercicead.servicead;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

/**
 * Created by MICHAEL on 11/16/2017.
 */

public class SHow_data extends AppCompatActivity {

public SharedPreferences two;



    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.dara);

        TextView n =(TextView) findViewById(R.id.txt);
        n.setText("Lake View");

        TextView n1 =(TextView) findViewById(R.id.txt1);
        n1.setText("Rwekishokye");

        TextView n2 =(TextView) findViewById(R.id.txt3);
        n2.setText("Igongo");
        //setSupportActionBar(toolbar);

   //

    }
    public void lake_view (View v){

       // SocketConnections send = new SocketConnections("192.168.43.216",21000,"1");
       // send.execute();
        Intent myIntent = new Intent(SHow_data.this, hoteldata.class);
        // myIntent.putExtra("key", value); //Optional parameters
        SHow_data.this.startActivity(myIntent);

    }

    public void Rwekishokye (View v){

        SocketConnections send = new SocketConnections("192.168.43.216",21000,"2");
        send.execute();


    }

    public void igongo (View v){

        SocketConnections send = new SocketConnections("192.168.43.216",21000,"3");
        send.execute();

    }
    public void serene (View v){

        SocketConnections send = new SocketConnections("192.168.43.216",21000,"4");
        send.execute();

    }


}
