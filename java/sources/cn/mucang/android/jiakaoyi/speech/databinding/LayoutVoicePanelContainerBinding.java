package cn.mucang.android.jiakaoyi.speech.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.speech.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LayoutVoicePanelContainerBinding implements a {
    public final LayoutVoiceNewPanelBinding panel;
    private final FrameLayout rootView;

    private LayoutVoicePanelContainerBinding(FrameLayout frameLayout, LayoutVoiceNewPanelBinding layoutVoiceNewPanelBinding) {
        this.rootView = frameLayout;
        this.panel = layoutVoiceNewPanelBinding;
    }

    public static LayoutVoicePanelContainerBinding bind(View view) {
        int i = R.id.panel;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        return new LayoutVoicePanelContainerBinding((FrameLayout) view, LayoutVoiceNewPanelBinding.bind(viewFindViewById));
    }

    public static LayoutVoicePanelContainerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutVoicePanelContainerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_voice_panel_container, viewGroup, false);
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
