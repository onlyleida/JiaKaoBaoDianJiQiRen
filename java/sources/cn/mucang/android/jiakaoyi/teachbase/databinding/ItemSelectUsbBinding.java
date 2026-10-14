package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemSelectUsbBinding implements a {
    private final TextView rootView;
    public final TextView usbTv;

    private ItemSelectUsbBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.usbTv = textView2;
    }

    public static ItemSelectUsbBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new ItemSelectUsbBinding(textView, textView);
    }

    public static ItemSelectUsbBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSelectUsbBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_select_usb, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public TextView getRoot() {
        return this.rootView;
    }
}
