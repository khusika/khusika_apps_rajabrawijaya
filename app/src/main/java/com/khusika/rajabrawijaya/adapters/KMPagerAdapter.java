package com.khusika.rajabrawijaya.adapters;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

import com.khusika.rajabrawijaya.fragments.KMTabFragment1;

/**
 * Created by khusika on 10/07/17.
 */

public class KMPagerAdapter extends FragmentStatePagerAdapter {
    int mNumOfTabs;

    public KMPagerAdapter(FragmentManager fm, int NumOfTabs) {
        super(fm);
        this.mNumOfTabs = NumOfTabs;
    }

    @Override
    public Fragment getItem(int position) {

        switch (position) {
            case 0:
                KMTabFragment1 tab1 = new KMTabFragment1();
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