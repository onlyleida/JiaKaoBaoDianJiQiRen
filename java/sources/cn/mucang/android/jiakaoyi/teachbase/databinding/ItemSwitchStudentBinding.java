package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangCircleImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemSwitchStudentBinding implements a {
    public final MucangCircleImageView avatarIv;
    public final TextView funcTv;
    public final TextView nameTv;
    private final ConstraintLayout rootView;
    public final TextView tipsTv;

    private ItemSwitchStudentBinding(ConstraintLayout constraintLayout, MucangCircleImageView mucangCircleImageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.avatarIv = mucangCircleImageView;
        this.funcTv = textView;
        this.nameTv = textView2;
        this.tipsTv = textView3;
    }

    public static ItemSwitchStudentBinding bind(View view) {
        int i = R.id.avatarIv;
        MucangCircleImageView mucangCircleImageView = (MucangCircleImageView) view.findViewById(i);
        if (mucangCircleImageView != null) {
            i = R.id.funcTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.nameTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.tipsTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new ItemSwitchStudentBinding((ConstraintLayout) view, mucangCircleImageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ItemSwitchStudentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSwitchStudentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_switch_student, viewGroup, false);
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
