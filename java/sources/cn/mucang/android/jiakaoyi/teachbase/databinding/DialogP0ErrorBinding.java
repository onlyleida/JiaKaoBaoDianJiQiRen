package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogP0ErrorBinding implements a {
    public final TextView callTv;
    public final TextView descTv;
    public final View head;
    private final ConstraintLayout rootView;
    public final ImageView settingIv;
    public final View space;
    public final TextView titleTv;

    private DialogP0ErrorBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, View view, ImageView imageView, View view2, TextView textView3) {
        this.rootView = constraintLayout;
        this.callTv = textView;
        this.descTv = textView2;
        this.head = view;
        this.settingIv = imageView;
        this.space = view2;
        this.titleTv = textView3;
    }

    public static DialogP0ErrorBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.callTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.head))) != null) {
                i = R.id.settingIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null && (viewFindViewById2 = view.findViewById((i = R.id.space))) != null) {
                    i = R.id.titleTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new DialogP0ErrorBinding((ConstraintLayout) view, textView, textView2, viewFindViewById, imageView, viewFindViewById2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogP0ErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogP0ErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_p0_error, viewGroup, false);
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
