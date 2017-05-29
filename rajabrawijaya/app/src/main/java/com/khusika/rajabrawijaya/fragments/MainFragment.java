package com.khusika.rajabrawijaya.fragments;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.khusika.rajabrawijaya.MainActivity;
import com.khusika.rajabrawijaya.R;

/**
 * Created by khusika on 29/05/17.
 */

public class MainFragment extends Fragment {

    private MainActivity main;
    private Toolbar toolbar;

    public MainFragment() {
        // Required empty public constructor
    }

    @Override
    public void onAttach(Context activity) {
        super.onAttach(activity);
        main = (MainActivity)activity;
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_main, container, false);
        toolbar = (Toolbar)view.findViewById(R.id.fragment_main_toolbar);

        setupToolbar();

        return view;
    }

    @Override
    public  void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        main.setupNavigationDrawer(toolbar);
    }

    private  void setupToolbar(){
        toolbar.setTitle(getString(R.string.app_name));
        main.setSupportActionBar(toolbar);
    }

}