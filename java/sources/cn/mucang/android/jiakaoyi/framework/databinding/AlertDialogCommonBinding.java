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
public final class AlertDialogCommonBinding implements a {
    public final TextView btnTv;
    public final ImageView closeIv;
    public final TextView descTv;
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private AlertDialogCommonBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, TextView textView2, LinearLayout linearLayout2, TextView textView3) {
        this.rootView = linearLayout;
        this.btnTv = textView;
        this.closeIv = imageView;
        this.descTv = textView2;
        this.rootLayout = linearLayout2;
        this.titleTv = textView3;
    }

    public static AlertDialogCommonBinding bind(View view) {
        int i = R.id.btnTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.descTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.rootLayout;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.titleTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            return new AlertDialogCommonBinding((LinearLayout) view, textView, imageView, textView2, linearLayout, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AlertDialogCommonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AlertDialogCommonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.alert_dialog_common, viewGroup, false);
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
