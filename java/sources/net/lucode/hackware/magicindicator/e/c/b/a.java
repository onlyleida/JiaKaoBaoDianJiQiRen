package net.lucode.hackware.magicindicator.e.c.b;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    private final DataSetObservable mDataSetObservable = new DataSetObservable();

    public abstract int getCount();

    public abstract c getIndicator(Context context);

    public abstract d getTitleView(Context context, int i);

    public float getTitleWeight(Context context, int i) {
        return 1.0f;
    }

    public final void notifyDataSetChanged() {
        this.mDataSetObservable.notifyChanged();
    }

    public final void notifyDataSetInvalidated() {
        this.mDataSetObservable.notifyInvalidated();
    }

    public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObservable.registerObserver(dataSetObserver);
    }

    public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObservable.unregisterObserver(dataSetObserver);
    }
}
