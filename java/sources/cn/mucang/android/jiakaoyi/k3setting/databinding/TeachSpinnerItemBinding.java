package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class TeachSpinnerItemBinding implements a {
    private final TextView rootView;
    public final TextView text1;

    private TeachSpinnerItemBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.text1 = textView2;
    }

    public static TeachSpinnerItemBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new TeachSpinnerItemBinding(textView, textView);
    }

    public static TeachSpinnerItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachSpinnerItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_spinner_item, viewGroup, false);
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
