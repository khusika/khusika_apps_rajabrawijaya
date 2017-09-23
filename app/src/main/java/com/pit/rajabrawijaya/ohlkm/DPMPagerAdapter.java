package com.pit.rajabrawijaya.ohlkm;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

/**
 * Created by khusika on 11/07/17.
 */

public class DPMPagerAdapter extends FragmentStatePagerAdapter {
    int mNumOfTabs;

    public DPMPagerAdapter(FragmentManager fm, int NumOfTabs) {
        super(fm);
        this.mNumOfTabs = NumOfTabs;
    }

    @Override
    public Fragment getItem(int position) {

        switch (position) {
            case 0:
                DPMTabFragment1 tab1 = new DPMTabFragment1();
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