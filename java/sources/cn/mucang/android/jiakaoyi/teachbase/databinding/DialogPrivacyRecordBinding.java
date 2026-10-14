package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogPrivacyRecordBinding implements a {
    private final LinearLayout rootView;

    private DialogPrivacyRecordBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static DialogPrivacyRecordBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new DialogPrivacyRecordBinding((LinearLayout) view);
    }

    public static DialogPrivacyRecordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPrivacyRecordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_privacy_record, viewGroup, false);
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
