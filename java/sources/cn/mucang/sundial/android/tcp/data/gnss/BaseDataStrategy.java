package cn.mucang.sundial.android.tcp.data.gnss;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseDataStrategy implements DataStrategy {
    protected static final String TAG = "DataStrategy";
    private Context context;
    protected DataCallBack dataCallBack;

    public void setDataCallBack(DataCallBack dataCallBack) {
        this.dataCallBack = dataCallBack;
    }
}
