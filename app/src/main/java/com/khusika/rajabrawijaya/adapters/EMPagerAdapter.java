package com.khusika.rajabrawijaya.adapters;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

import com.khusika.rajabrawijaya.fragments.EMTabFragment1;

/**
 * Created by khusika on 10/07/17.
 */

public class EMPagerAdapter extends FragmentStatePagerAdapter {
    int mNumOfTabs;

    public EMPagerAdapter(FragmentManager fm, int NumOfTabs) {
        super(fm);
        this.mNumOfTabs = NumOfTabs;
    }

    @Override
    public Fragment getItem(int position) {

        switch (position) {
            case 0:
                EMTabFragment1 tab1 = new EMTabFragment1();
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