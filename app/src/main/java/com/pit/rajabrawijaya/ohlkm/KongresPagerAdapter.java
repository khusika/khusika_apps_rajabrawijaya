package com.pit.rajabrawijaya.ohlkm;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

/**
 * Created by khusika on 10/07/17.
 */

public class KongresPagerAdapter extends FragmentStatePagerAdapter {
    int mNumOfTabs;

    public KongresPagerAdapter(FragmentManager fm, int NumOfTabs) {
        super(fm);
        this.mNumOfTabs = NumOfTabs;
    }

    @Override
    public Fragment getItem(int position) {

        switch (position) {
            case 0:
                KongresTabFragment1 tab1 = new KongresTabFragment1();
                return tab1;
            default:
                return null;
        }
    }

    @Override
    public int getCount() {
        return mNumOfTabs;
    }
}