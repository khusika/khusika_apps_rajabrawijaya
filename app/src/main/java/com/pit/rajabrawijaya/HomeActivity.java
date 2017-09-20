package com.pit.rajabrawijaya;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;

import java.util.ArrayList;

import me.relex.circleindicator.CircleIndicator;

public class HomeActivity extends BaseActivity {

    private static ViewPager mPager;
    private static int currentPage = 0;
    private static final Integer[] XMEN= {R.drawable.colorbackground,R.color.colorPrimary, R.color.card_header };
    private ArrayList<Integer> XMENArray = new ArrayList<Integer>();
    private ImageView imageView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        init();

        imageView = (ImageView) findViewById(R.id.rajabrawijaya);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), PK2MUActivity.class);
                startActivity(intent);
            }
        });
        imageView = (ImageView) findViewById(R.id.PK2MU);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), PK2MUActivity.class);
                startActivity(intent);
            }
        });
        imageView = (ImageView) findViewById(R.id.PBPK);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), PBPKActivity.class);
                startActivity(intent);
            }
        });
        imageView = (ImageView) findViewById(R.id.OH_LKM);
        imageView.setOnClickListener(new  View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), OHLKMActivity.class);
                startActivity(intent);
            }
        });
    }

    @Override
    int getContentViewId() {
        return R.layout.activity_home;
    }

    @Override
    int getNavigationMenuItemId() {
        return R.id.navigation_home;
    }

    private void init() {
        for(int i=0;i<XMEN.length;i++)
            XMENArray.add(XMEN[i]);

        mPager = (ViewPager) findViewById(R.id.pager);
        mPager.setAdapter(new SlideShowAdapter(HomeActivity.this,XMENArray));
        CircleIndicator indicator = (CircleIndicator) findViewById(R.id.indicator);
        indicator.setViewPager(mPager);

        final Handler handler = new Handler();
        final Runnable Update = new Runnable() {
            public void run() {
                if (currentPage == XMEN.length) {
                    currentPage = 0;
                }
                mPager.setCurrentItem(currentPage++, true);
            }
        };
/*        Timer swipeTimer = new Timer();
        swipeTimer.schedule(new TimerTask() {
            @Override
            public void run() {
                handler.post(Update);
            }
        }, 3000, 3000);*/
    }

}
