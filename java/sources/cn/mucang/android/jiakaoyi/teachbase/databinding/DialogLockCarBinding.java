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
public final class DialogLockCarBinding implements a {
    public final TextView callTv;
    public final TextView descTv;
    public final ImageView engineIv;
    public final TextView engineTv;
    private final ConstraintLayout rootView;
    public final ImageView settingIv;
    public final TextView titleTv;

    private DialogLockCarBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, TextView textView3, ImageView imageView2, TextView textView4) {
        this.rootView = constraintLayout;
        this.callTv = textView;
        this.descTv = textView2;
        this.engineIv = imageView;
        this.engineTv = textView3;
        this.settingIv = imageView2;
        this.titleTv = textView4;
    }

    public static DialogLockCarBinding bind(View view) {
        int i = R.id.callTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.engineIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.engineTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.settingIv;
                        ImageView imageView2 = (ImageView) view.findViewById(i);
                        if (imageView2 != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                return new DialogLockCarBinding((ConstraintLayout) view, textView, textView2, imageView, textView3, imageView2, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogLockCarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogLockCarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_lock_car, viewGroup, false);
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
