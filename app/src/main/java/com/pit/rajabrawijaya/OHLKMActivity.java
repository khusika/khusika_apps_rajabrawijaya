package com.pit.rajabrawijaya;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.ImageView;

import com.pit.rajabrawijaya.ohlkm.DPMActivity;
import com.pit.rajabrawijaya.ohlkm.EMActivity;
import com.pit.rajabrawijaya.ohlkm.KongresActivity;

/**
 * Created by khusika on 09/07/17.
 */

public class OHLKMActivity extends AppCompatActivity {

    private Toolbar toolbar;
    private Intent i;
    private ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ohlkm);

        toolbar = (Toolbar) findViewById(R.id.ohlkm_toolbar);
        setupToolbar();
        AppBarLayout mAppBarLayout = (AppBarLayout) findViewById(R.id.ohlkm_appbar);

        imageView = (ImageView) findViewById(R.id.em_thumbnail);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), EMActivity.class);
                startActivity(intent);
            }
        });
        imageView = (ImageView) findViewById(R.id.dpm_thumbnail);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), DPMActivity.class);
                startActivity(intent);
            }
        });
        imageView = (ImageView) findViewById(R.id.kongres_thumbnail);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), KongresActivity.class);
                startActivity(intent);
            }
        });
    }

    private void setupToolbar(){
        toolbar.setTitle(getString(R.string.ohlkm_title));
        setSupportActionBar(toolbar);
        if (getSupportActionBar() !=null){
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled(true);
        }
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                i = new Intent(OHLKMActivity.this, HomeActivity.class);
                i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(i);
            }
        });
    }

}