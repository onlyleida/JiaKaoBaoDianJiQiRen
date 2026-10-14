package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class B2ExoPlayerViewBinding implements a {
    public final FrameLayout exoAdOverlay;
    public final ImageView exoArtwork;
    public final ProgressBar exoBuffering;
    public final AspectRatioFrameLayout exoContentFrame;
    public final TextView exoErrorMessage;
    public final FrameLayout exoOverlay;
    public final View exoShutter;
    public final SubtitleView exoSubtitles;
    private final View rootView;

    private B2ExoPlayerViewBinding(View view, FrameLayout frameLayout, ImageView imageView, ProgressBar progressBar, AspectRatioFrameLayout aspectRatioFrameLayout, TextView textView, FrameLayout frameLayout2, View view2, SubtitleView subtitleView) {
        this.rootView = view;
        this.exoAdOverlay = frameLayout;
        this.exoArtwork = imageView;
        this.exoBuffering = progressBar;
        this.exoContentFrame = aspectRatioFrameLayout;
        this.exoErrorMessage = textView;
        this.exoOverlay = frameLayout2;
        this.exoShutter = view2;
        this.exoSubtitles = subtitleView;
    }

    public static B2ExoPlayerViewBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.exo_ad_overlay;
        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
        if (frameLayout != null) {
            i = R.id.exo_artwork;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.exo_buffering;
                ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                if (progressBar != null) {
                    i = R.id.exo_content_frame;
                    AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) view.findViewById(i);
                    if (aspectRatioFrameLayout != null) {
                        i = R.id.exo_error_message;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.exo_overlay;
                            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                            if (frameLayout2 != null && (viewFindViewById = view.findViewById((i = R.id.exo_shutter))) != null) {
                                i = R.id.exo_subtitles;
                                SubtitleView subtitleView = (SubtitleView) view.findViewById(i);
                                if (subtitleView != null) {
                                    return new B2ExoPlayerViewBinding(view, frameLayout, imageView, progressBar, aspectRatioFrameLayout, textView, frameLayout2, viewFindViewById, subtitleView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static B2ExoPlayerViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.b2_exo_player_view, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.a
    public View getRoot() {
        return this.rootView;
    }
}
