package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.google.android.exoplayer2.ui.PlayerView;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutCommonVideoViewBinding implements a {
    public final ImageView buttonPlay;
    public final ImageView buttonStop;
    public final LinearLayout controlView;
    public final ImageView ivCenterIcon;
    public final FrameLayout ivOverlay;
    private final FrameLayout rootView;
    public final SeekBar seekBar;
    public final TextView textViewCurrentPosition;
    public final TextView textViewTime;
    public final TextView tvVideoStatus;
    public final ConstraintLayout videoComp;
    public final FrameLayout videoContainer;
    public final PlayerView videoView;

    private LayoutCommonVideoViewBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, ImageView imageView3, FrameLayout frameLayout2, SeekBar seekBar, TextView textView, TextView textView2, TextView textView3, ConstraintLayout constraintLayout, FrameLayout frameLayout3, PlayerView playerView) {
        this.rootView = frameLayout;
        this.buttonPlay = imageView;
        this.buttonStop = imageView2;
        this.controlView = linearLayout;
        this.ivCenterIcon = imageView3;
        this.ivOverlay = frameLayout2;
        this.seekBar = seekBar;
        this.textViewCurrentPosition = textView;
        this.textViewTime = textView2;
        this.tvVideoStatus = textView3;
        this.videoComp = constraintLayout;
        this.videoContainer = frameLayout3;
        this.videoView = playerView;
    }

    public static LayoutCommonVideoViewBinding bind(View view) {
        int i = R.id.buttonPlay;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.buttonStop;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.controlView;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.iv_center_icon;
                    ImageView imageView3 = (ImageView) view.findViewById(i);
                    if (imageView3 != null) {
                        i = R.id.iv_overlay;
                        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                        if (frameLayout != null) {
                            i = R.id.seekBar;
                            SeekBar seekBar = (SeekBar) view.findViewById(i);
                            if (seekBar != null) {
                                i = R.id.textViewCurrentPosition;
                                TextView textView = (TextView) view.findViewById(i);
                                if (textView != null) {
                                    i = R.id.textViewTime;
                                    TextView textView2 = (TextView) view.findViewById(i);
                                    if (textView2 != null) {
                                        i = R.id.tvVideoStatus;
                                        TextView textView3 = (TextView) view.findViewById(i);
                                        if (textView3 != null) {
                                            i = R.id.videoComp;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                                            if (constraintLayout != null) {
                                                FrameLayout frameLayout2 = (FrameLayout) view;
                                                i = R.id.videoView;
                                                PlayerView playerView = (PlayerView) view.findViewById(i);
                                                if (playerView != null) {
                                                    return new LayoutCommonVideoViewBinding(frameLayout2, imageView, imageView2, linearLayout, imageView3, frameLayout, seekBar, textView, textView2, textView3, constraintLayout, frameLayout2, playerView);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutCommonVideoViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutCommonVideoViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_common_video_view, viewGroup, false);
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
