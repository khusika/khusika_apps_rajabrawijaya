package com.pit.rajabrawijaya;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

import java.util.List;

/**
 * Created by Ravi Tamada on 18/05/16.
 */
public class GridCardViewAdapter extends RecyclerView.Adapter<GridCardViewAdapter.MyViewHolder> {

    private Context mContext;
    private List<GridCardView> gridCardViewList;

    public class MyViewHolder extends RecyclerView.ViewHolder {
        public TextView title;
        public ImageView thumbnail;

        public MyViewHolder(View view) {
            super(view);
            title = (TextView) view.findViewById(R.id.title);
            thumbnail = (ImageView) view.findViewById(R.id.thumbnail);
        }
    }


    public GridCardViewAdapter(Context mContext, List<GridCardView> gridCardViewList) {
        this.mContext = mContext;
        this.gridCardViewList = gridCardViewList;
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.layout_gridcardview, parent, false);

        return new MyViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(final MyViewHolder holder, int position) {
        GridCardView gridCardView = gridCardViewList.get(position);
        holder.title.setText(gridCardView.getName());
        Glide.with(mContext).load(gridCardView.getThumbnail()).into(holder.thumbnail);

    }

    @Override
    public int getItemCount() {
        return gridCardViewList.size();
    }
}
