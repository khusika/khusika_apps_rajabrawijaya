package com.pit.rajabrawijaya;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;

/**
 * Created by khusika on 08/06/17.
 */

public class RajaActivity extends AppCompatActivity {

    private Toolbar toolbar;
    private Intent i;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_raja);

        toolbar = (Toolbar) findViewById(R.id.raja_toolbar);
        setupToolbar();


        AppBarLayout mAppBarLayout = (AppBarLayout) findViewById(R.id.raja_appbar);
    }

    private void setupToolbar(){
        toolbar.setTitle("Raja Brawijaya");
        setSupportActionBar(toolbar);
        if (getSupportActionBar() !=null){
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled(true);
        }
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                i = new Intent(RajaActivity.this, HomeActivity.class);
                i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(i);
            }
        });
    }
}