package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewCustomToastBinding implements a {
    public final ImageView ivIcon;
    private final LinearLayout rootView;
    public final TextView txtMsg;

    private ViewCustomToastBinding(LinearLayout linearLayout, ImageView imageView, TextView textView) {
        this.rootView = linearLayout;
        this.ivIcon = imageView;
        this.txtMsg = textView;
    }

    public static ViewCustomToastBinding bind(View view) {
        int i = R.id.iv_icon;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.txt_msg;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new ViewCustomToastBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ViewCustomToastBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ViewCustomToastBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.view_custom_toast, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
