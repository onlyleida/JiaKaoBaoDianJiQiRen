package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FaceFailDialogBinding implements a {
    public final TextView btnLeft;
    public final TextView btnRight;
    public final LinearLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;

    private FaceFailDialogBinding(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, TextView textView3) {
        this.rootView = linearLayout;
        this.btnLeft = textView;
        this.btnRight = textView2;
        this.rootLayout = linearLayout2;
        this.titleTv = textView3;
    }

    public static FaceFailDialogBinding bind(View view) {
        int i = R.id.btnLeft;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.btnRight;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.rootLayout;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.titleTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new FaceFailDialogBinding((LinearLayout) view, textView, textView2, linearLayout, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static FaceFailDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FaceFailDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.face_fail_dialog, viewGroup, false);
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
