package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityFaceRegisterBinding implements a {
    public final TextView btnRegister;
    public final LayoutLoginFaceBinding faceLayout;
    private final ConstraintLayout rootView;
    public final TextView tvName;

    private ActivityFaceRegisterBinding(ConstraintLayout constraintLayout, TextView textView, LayoutLoginFaceBinding layoutLoginFaceBinding, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnRegister = textView;
        this.faceLayout = layoutLoginFaceBinding;
        this.tvName = textView2;
    }

    public static ActivityFaceRegisterBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.btnRegister;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null && (viewFindViewById = view.findViewById((i = R.id.faceLayout))) != null) {
            LayoutLoginFaceBinding layoutLoginFaceBindingBind = LayoutLoginFaceBinding.bind(viewFindViewById);
            int i2 = R.id.tvName;
            TextView textView2 = (TextView) view.findViewById(i2);
            if (textView2 != null) {
                return new ActivityFaceRegisterBinding((ConstraintLayout) view, textView, layoutLoginFaceBindingBind, textView2);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityFaceRegisterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityFaceRegisterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_face_register, viewGroup, false);
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
