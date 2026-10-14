package com.serenegiant.bluetooth;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.serenegiant.common.R;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class BluetoothDeviceInfoAdapter extends ArrayAdapter<BluetoothDeviceInfo> {
    private static final String TAG = BluetoothDeviceInfoAdapter.class.getSimpleName();
    private final LayoutInflater mInflater;
    private final int mLayoutId;

    private static class ViewHolder {
        TextView addressTv;
        ImageView icon;
        TextView nameTv;

        private ViewHolder() {
        }
    }

    public BluetoothDeviceInfoAdapter(Context context, int i) {
        super(context, i);
        this.mInflater = LayoutInflater.from(context);
        this.mLayoutId = i;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(this.mLayoutId, viewGroup, false);
            ViewHolder viewHolder = new ViewHolder();
            viewHolder.nameTv = (TextView) view.findViewById(R.id.name);
            viewHolder.addressTv = (TextView) view.findViewById(R.id.address);
            viewHolder.icon = (ImageView) view.findViewById(R.id.icon);
            view.setTag(viewHolder);
        }
        ViewHolder viewHolder2 = (ViewHolder) view.getTag();
        try {
            BluetoothDeviceInfo item = getItem(i);
            if (item != null) {
                TextView textView = viewHolder2.nameTv;
                if (textView != null) {
                    textView.setText(item.name);
                }
                TextView textView2 = viewHolder2.addressTv;
                if (textView2 != null) {
                    textView2.setText(item.address);
                }
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        return view;
    }

    public BluetoothDeviceInfoAdapter(Context context, int i, List<BluetoothDeviceInfo> list) {
        super(context, i, list);
        this.mInflater = LayoutInflater.from(context);
        this.mLayoutId = i;
    }

    public BluetoothDeviceInfoAdapter(Context context, int i, BluetoothDeviceInfo[] bluetoothDeviceInfoArr) {
        super(context, i, bluetoothDeviceInfoArr);
        this.mInflater = LayoutInflater.from(context);
        this.mLayoutId = i;
    }
}
