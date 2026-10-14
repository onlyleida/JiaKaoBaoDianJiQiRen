package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogPrivacyNonPerceiveBinding implements a {
    private final LinearLayout rootView;

    private DialogPrivacyNonPerceiveBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static DialogPrivacyNonPerceiveBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new DialogPrivacyNonPerceiveBinding((LinearLayout) view);
    }

    public static DialogPrivacyNonPerceiveBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPrivacyNonPerceiveBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_privacy_non_perceive, viewGroup, false);
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
