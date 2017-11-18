package com.rae.sercicead.servicead;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

/**
 * Created by MICHAEL on 11/17/2017.
 */

public class hoteldata extends AppCompatActivity {


         protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.hotel_data);

             TextView v = (TextView) findViewById(R.id.textView4);
             v.setText("Lake view");
             TextView v1 = (TextView) findViewById(R.id.textView1);
             v1.setText("Mbarara");
             TextView v2 = (TextView) findViewById(R.id.textView2);
             v2.setText("Ruharo");
             TextView v3 = (TextView) findViewById(R.id.textView3);
             v3.setText("Sauna, massage,breakfast, accomodation");

    }
}
