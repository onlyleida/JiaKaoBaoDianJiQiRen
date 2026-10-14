package cn.mucang.android.jiakaoyi.speech.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.speech.R;
import cn.mucang.android.jiakaoyi.speech.ui.AudioWaveView;

/* JADX INFO: loaded from: classes3.dex */
public final class LayoutVoiceNewPanelBinding implements a {
    public final ImageView closeIv;
    public final ImageView ivQt;
    public final RecyclerView recycleView;
    private final ConstraintLayout rootView;
    public final AudioWaveView waveView;

    private LayoutVoiceNewPanelBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, AudioWaveView audioWaveView) {
        this.rootView = constraintLayout;
        this.closeIv = imageView;
        this.ivQt = imageView2;
        this.recycleView = recyclerView;
        this.waveView = audioWaveView;
    }

    public static LayoutVoiceNewPanelBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.ivQt;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.recycleView;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.waveView;
                    AudioWaveView audioWaveView = (AudioWaveView) view.findViewById(i);
                    if (audioWaveView != null) {
                        return new LayoutVoiceNewPanelBinding((ConstraintLayout) view, imageView, imageView2, recyclerView, audioWaveView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutVoiceNewPanelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutVoiceNewPanelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_voice_new_panel, viewGroup, false);
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
