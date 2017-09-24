package com.pit.rajabrawijaya.ohlkm;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;

import com.pit.rajabrawijaya.OHLKMActivity;
import com.pit.rajabrawijaya.R;

public class KesejahteraanActivity extends AppCompatActivity {

    private Toolbar toolbar;
    private Intent i;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kesejahteraan);
        toolbar = (Toolbar) findViewById(R.id.kesejahteraan_toolbar);
        setupToolbar();
    }
    private void setupToolbar(){
        toolbar.setTitle(getString(R.string.kesejahteraan_title));
        setSupportActionBar(toolbar);
        if (getSupportActionBar() !=null){
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setDisplayShowHomeEnabled(true);
        }
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                i = new Intent(KesejahteraanActivity.this, OHLKMActivity.class);
                i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(i);
            }
        });
    }
}