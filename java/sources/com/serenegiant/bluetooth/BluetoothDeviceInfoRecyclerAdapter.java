package com.serenegiant.bluetooth;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.serenegiant.common.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class BluetoothDeviceInfoRecyclerAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final boolean DEBUG = true;
    private static final String TAG = "BluetoothDeviceInfoRecyclerAdapter";
    private final int mLayoutId;
    private final OnItemClickListener mListener;
    private final List<BluetoothDeviceInfo> mValues;

    public interface OnItemClickListener {
        void onClick(int i, BluetoothDeviceInfo bluetoothDeviceInfo);
    }

    public class ViewHolder extends RecyclerView.c0 {
        public final TextView addressTv;
        public final ImageView icon;
        public BluetoothDeviceInfo mItem;
        public final View mView;
        public final TextView nameTv;
        public int position;

        public ViewHolder(View view) {
            super(view);
            this.mView = view;
            this.nameTv = (TextView) view.findViewById(R.id.name);
            this.addressTv = (TextView) view.findViewById(R.id.address);
            this.icon = (ImageView) view.findViewById(R.id.icon);
        }
    }

    public BluetoothDeviceInfoRecyclerAdapter(int i, OnItemClickListener onItemClickListener) {
        this(i, null, onItemClickListener);
    }

    public void add(BluetoothDeviceInfo bluetoothDeviceInfo) {
        this.mValues.add(bluetoothDeviceInfo);
        notifyDataSetChanged();
    }

    public void addAll(Collection<? extends BluetoothDeviceInfo> collection) {
        this.mValues.addAll(collection);
        notifyDataSetChanged();
    }

    public void clear() {
        this.mValues.clear();
        notifyDataSetChanged();
    }

    public BluetoothDeviceInfo getItem(int i) throws IndexOutOfBoundsException {
        return this.mValues.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mValues.size();
    }

    public void remove(BluetoothDeviceInfo bluetoothDeviceInfo) {
        this.mValues.remove(bluetoothDeviceInfo);
        notifyDataSetChanged();
    }

    public void removeAll(Collection<? extends BluetoothDeviceInfo> collection) {
        this.mValues.removeAll(collection);
        notifyDataSetChanged();
    }

    public void retainAll(Collection<? extends BluetoothDeviceInfo> collection) {
        this.mValues.retainAll(collection);
        notifyDataSetChanged();
    }

    public void sort(Comparator<? super BluetoothDeviceInfo> comparator) {
        Collections.sort(this.mValues, comparator);
        notifyDataSetChanged();
    }

    public BluetoothDeviceInfoRecyclerAdapter(int i, List<BluetoothDeviceInfo> list, OnItemClickListener onItemClickListener) {
        this.mLayoutId = i;
        this.mValues = list == null ? new ArrayList<>() : list;
        this.mListener = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @SuppressLint({"RecyclerView"})
    public void onBindViewHolder(final ViewHolder viewHolder, int i) {
        viewHolder.position = i;
        viewHolder.mItem = this.mValues.get(i);
        TextView textView = viewHolder.addressTv;
        if (textView != null) {
            textView.setText(this.mValues.get(i).address);
        }
        TextView textView2 = viewHolder.nameTv;
        if (textView2 != null) {
            textView2.setText(this.mValues.get(i).name);
        }
        viewHolder.mView.setOnClickListener(new View.OnClickListener() { // from class: com.serenegiant.bluetooth.BluetoothDeviceInfoRecyclerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BluetoothDeviceInfoRecyclerAdapter.this.mListener != null) {
                    OnItemClickListener onItemClickListener = BluetoothDeviceInfoRecyclerAdapter.this.mListener;
                    ViewHolder viewHolder2 = viewHolder;
                    onItemClickListener.onClick(viewHolder2.position, viewHolder2.mItem);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.mLayoutId, viewGroup, false));
    }

    public void add(int i, BluetoothDeviceInfo bluetoothDeviceInfo) {
        this.mValues.add(i, bluetoothDeviceInfo);
        notifyDataSetChanged();
    }

    public void remove(int i) {
        this.mValues.remove(i);
        notifyDataSetChanged();
    }
}
