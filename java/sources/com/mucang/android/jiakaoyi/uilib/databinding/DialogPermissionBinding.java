package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogPermissionBinding implements a {
    public final TextView permissionAgree;
    public final TextView permissionDesc;
    public final TextView permissionDisagree;
    public final TextView permissionTag;
    private final ConstraintLayout rootView;

    private DialogPermissionBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.permissionAgree = textView;
        this.permissionDesc = textView2;
        this.permissionDisagree = textView3;
        this.permissionTag = textView4;
    }

    public static DialogPermissionBinding bind(View view) {
        int i = R.id.permission_agree;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.permission_desc;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.permission_disagree;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.permission_tag;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        return new DialogPermissionBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogPermissionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_permission, viewGroup, false);
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
