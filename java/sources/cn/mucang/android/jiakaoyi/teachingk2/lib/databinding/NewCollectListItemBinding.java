package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectListItemBinding implements a {
    private final TextView rootView;

    private NewCollectListItemBinding(TextView textView) {
        this.rootView = textView;
    }

    public static NewCollectListItemBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new NewCollectListItemBinding((TextView) view);
    }

    public static NewCollectListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_list_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public TextView getRoot() {
        return this.rootView;
    }
}
