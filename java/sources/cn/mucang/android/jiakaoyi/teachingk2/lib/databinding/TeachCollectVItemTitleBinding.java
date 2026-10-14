package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class TeachCollectVItemTitleBinding implements a {
    public final TextView name;
    private final FrameLayout rootView;
    public final CheckBox select;

    private TeachCollectVItemTitleBinding(FrameLayout frameLayout, TextView textView, CheckBox checkBox) {
        this.rootView = frameLayout;
        this.name = textView;
        this.select = checkBox;
    }

    public static TeachCollectVItemTitleBinding bind(View view) {
        int i = R.id.name;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.select;
            CheckBox checkBox = (CheckBox) view.findViewById(i);
            if (checkBox != null) {
                return new TeachCollectVItemTitleBinding((FrameLayout) view, textView, checkBox);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachCollectVItemTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachCollectVItemTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_collect_v_item_title, viewGroup, false);
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
