package com.rae.sercicead.servicead;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
   public  final String hotel = "hotel";

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        startService(new Intent(getBaseContext(), MyService.class));


    }

    public void hotels(View v){
       // TextView see = (TextView) findViewById(R.id.txt);
        Intent myIntent = new Intent(MainActivity.this, SHow_data.class);
        // myIntent.putExtra("key", value); //Optional parameters
        MainActivity.this.startActivity(myIntent);
        Log.d("click operations"," you touched hotels");

    }

     public void clubs (View v){
         //TextView see = (TextView) findViewById(R.id.txt);
         Log.d("click operations"," you touched clubs");
         SocketConnections send = new SocketConnections("192.168.43.216",21000,"clubs");
         send.execute();

     }

    }









