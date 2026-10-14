package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class TeachSettingItemTextBinding implements a {
    public final TeachIncludeItemStepVoiceBinding includeStepVoice;
    public final TeachIncludeItemTitleBinding includeTitle;
    private final LinearLayout rootView;

    private TeachSettingItemTextBinding(LinearLayout linearLayout, TeachIncludeItemStepVoiceBinding teachIncludeItemStepVoiceBinding, TeachIncludeItemTitleBinding teachIncludeItemTitleBinding) {
        this.rootView = linearLayout;
        this.includeStepVoice = teachIncludeItemStepVoiceBinding;
        this.includeTitle = teachIncludeItemTitleBinding;
    }

    public static TeachSettingItemTextBinding bind(View view) {
        int i = R.id.include_step_voice;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            TeachIncludeItemStepVoiceBinding teachIncludeItemStepVoiceBindingBind = TeachIncludeItemStepVoiceBinding.bind(viewFindViewById);
            int i2 = R.id.include_title;
            View viewFindViewById2 = view.findViewById(i2);
            if (viewFindViewById2 != null) {
                return new TeachSettingItemTextBinding((LinearLayout) view, teachIncludeItemStepVoiceBindingBind, TeachIncludeItemTitleBinding.bind(viewFindViewById2));
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachSettingItemTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachSettingItemTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_setting_item_text, viewGroup, false);
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
