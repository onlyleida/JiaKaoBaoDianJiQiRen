package cn.mucang.android.framework.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes.dex */
public final class CoreApiVerifyActivityErrorDialogBinding implements a {
    public final TextView cancel;
    public final View divider;
    public final TextView message;
    public final TextView ok;
    private final FrameLayout rootView;
    public final TextView title;

    private CoreApiVerifyActivityErrorDialogBinding(FrameLayout frameLayout, TextView textView, View view, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = frameLayout;
        this.cancel = textView;
        this.divider = view;
        this.message = textView2;
        this.ok = textView3;
        this.title = textView4;
    }

    public static CoreApiVerifyActivityErrorDialogBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cancel;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
            i = R.id.message;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.ok;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.title;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new CoreApiVerifyActivityErrorDialogBinding((FrameLayout) view, textView, viewFindViewById, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CoreApiVerifyActivityErrorDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CoreApiVerifyActivityErrorDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.core__api_verify_activity_error_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
