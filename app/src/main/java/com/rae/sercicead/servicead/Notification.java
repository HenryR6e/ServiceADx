package com.rae.sercicead.servicead;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

/**
 * Created by MICHAEL on 11/17/2017.
 */

public class Notification extends AppCompatActivity {


    public void sendNotification() {

//Get an instance of NotificationManager//

        NotificationCompat.Builder mBuilder =
                new NotificationCompat.Builder(this)
                        .setSmallIcon(R.drawable.splash)
                        .setContentTitle("ServicAD")
                        .setContentText("Check out these hangouts and hotels!");




        NotificationManager mNotificationManager =(NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);

        //NotificationManager.notify().

                mNotificationManager.notify(0, mBuilder.build());
    }

}
