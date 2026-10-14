package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class SettingTtsDebugBinding implements a {
    public final EditText editTv;
    public final TextView playTv;
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final CommonTitleBinding titleLayout;

    private SettingTtsDebugBinding(LinearLayout linearLayout, EditText editText, TextView textView, RecyclerView recyclerView, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayout;
        this.editTv = editText;
        this.playTv = textView;
        this.recyclerView = recyclerView;
        this.titleLayout = commonTitleBinding;
    }

    public static SettingTtsDebugBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.editTv;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.playTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.recyclerView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                    return new SettingTtsDebugBinding((LinearLayout) view, editText, textView, recyclerView, CommonTitleBinding.bind(viewFindViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SettingTtsDebugBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingTtsDebugBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_tts_debug, viewGroup, false);
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
