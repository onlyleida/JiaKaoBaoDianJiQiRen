package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogSafeTriggerNewBinding implements a {
    public final TextView callTv;
    public final TextView descTv;
    public final RecyclerView recyclerView;
    public final TextView reportTv;
    private final ConstraintLayout rootView;
    public final ImageView settingIv;
    public final TextView titleTv;

    private DialogSafeTriggerNewBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, RecyclerView recyclerView, TextView textView3, ImageView imageView, TextView textView4) {
        this.rootView = constraintLayout;
        this.callTv = textView;
        this.descTv = textView2;
        this.recyclerView = recyclerView;
        this.reportTv = textView3;
        this.settingIv = imageView;
        this.titleTv = textView4;
    }

    public static DialogSafeTriggerNewBinding bind(View view) {
        int i = R.id.callTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.reportTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.settingIv;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                return new DialogSafeTriggerNewBinding((ConstraintLayout) view, textView, textView2, recyclerView, textView3, imageView, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogSafeTriggerNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSafeTriggerNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_safe_trigger_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
