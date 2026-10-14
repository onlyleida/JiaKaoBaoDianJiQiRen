package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class TtBlankDialogBinding implements a {
    private final FrameLayout rootView;

    private TtBlankDialogBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    public static TtBlankDialogBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new TtBlankDialogBinding((FrameLayout) view);
    }

    public static TtBlankDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtBlankDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__blank_dialog, viewGroup, false);
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
