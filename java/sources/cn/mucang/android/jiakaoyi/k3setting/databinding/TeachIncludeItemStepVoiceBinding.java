package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class TeachIncludeItemStepVoiceBinding implements a {
    public final EditText etTeachVoice;
    private final FrameLayout rootView;

    private TeachIncludeItemStepVoiceBinding(FrameLayout frameLayout, EditText editText) {
        this.rootView = frameLayout;
        this.etTeachVoice = editText;
    }

    public static TeachIncludeItemStepVoiceBinding bind(View view) {
        int i = R.id.et_teach_voice;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            return new TeachIncludeItemStepVoiceBinding((FrameLayout) view, editText);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static TeachIncludeItemStepVoiceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TeachIncludeItemStepVoiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.teach_include_item_step_voice, viewGroup, false);
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
