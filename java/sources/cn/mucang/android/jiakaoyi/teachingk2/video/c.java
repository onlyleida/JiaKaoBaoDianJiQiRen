package cn.mucang.android.jiakaoyi.teachingk2.video;

import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutCommonVideoViewBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$videoListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$OnVideoListener;", "onComplete", "", "onError", "onPause", "onPlaying", "onPrepared", "onSeek", "position", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class c implements VideoPlayer.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CommonVideoView f8722a;

    c(CommonVideoView commonVideoView) {
        this.f8722a = commonVideoView;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
    public void a(long j) {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.f8722a.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        if (layoutCommonVideoViewBinding.seekBar.isSelected()) {
            return;
        }
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.f8722a.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding2.seekBar.setProgress((int) j);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding3 = this.f8722a.b;
        if (layoutCommonVideoViewBinding3 != null) {
            layoutCommonVideoViewBinding3.textViewCurrentPosition.setText(this.f8722a.f(j));
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
    public void b() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.f8722a.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding.buttonPlay.setVisibility(8);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.f8722a.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding2.ivCenterIcon.setVisibility(8);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding3 = this.f8722a.b;
        if (layoutCommonVideoViewBinding3 != null) {
            layoutCommonVideoViewBinding3.buttonStop.setVisibility(0);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
    public void onComplete() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.f8722a.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = layoutCommonVideoViewBinding.textViewCurrentPosition;
        CommonVideoView commonVideoView = this.f8722a;
        VideoPlayer videoPlayer = commonVideoView.c;
        textView.setText(commonVideoView.f(videoPlayer == null ? 0L : videoPlayer.g()));
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.f8722a.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding2.buttonPlay.setVisibility(0);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding3 = this.f8722a.b;
        if (layoutCommonVideoViewBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding3.buttonStop.setVisibility(8);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding4 = this.f8722a.b;
        if (layoutCommonVideoViewBinding4 != null) {
            layoutCommonVideoViewBinding4.ivCenterIcon.setVisibility(0);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
    public void onError() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.f8722a.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        ConstraintLayout constraintLayout = layoutCommonVideoViewBinding.videoComp;
        r.d(constraintLayout, "viewBinding.videoComp");
        constraintLayout.setVisibility(8);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.f8722a.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = layoutCommonVideoViewBinding2.tvVideoStatus;
        r.d(textView, "viewBinding.tvVideoStatus");
        textView.setVisibility(0);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
    public void onPause() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.f8722a.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding.buttonPlay.setVisibility(0);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.f8722a.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding2.ivCenterIcon.setVisibility(0);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding3 = this.f8722a.b;
        if (layoutCommonVideoViewBinding3 != null) {
            layoutCommonVideoViewBinding3.buttonStop.setVisibility(8);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
    public void onPrepared() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.f8722a.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        ConstraintLayout constraintLayout = layoutCommonVideoViewBinding.videoComp;
        r.d(constraintLayout, "viewBinding.videoComp");
        constraintLayout.setVisibility(0);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.f8722a.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = layoutCommonVideoViewBinding2.tvVideoStatus;
        r.d(textView, "viewBinding.tvVideoStatus");
        textView.setVisibility(8);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding3 = this.f8722a.b;
        if (layoutCommonVideoViewBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView2 = layoutCommonVideoViewBinding3.textViewTime;
        CommonVideoView commonVideoView = this.f8722a;
        VideoPlayer videoPlayer = commonVideoView.c;
        textView2.setText(commonVideoView.f(videoPlayer == null ? 0L : videoPlayer.g()));
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding4 = this.f8722a.b;
        if (layoutCommonVideoViewBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding4.buttonPlay.setEnabled(true);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding5 = this.f8722a.b;
        if (layoutCommonVideoViewBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding5.ivOverlay.setEnabled(true);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding6 = this.f8722a.b;
        if (layoutCommonVideoViewBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        SeekBar seekBar = layoutCommonVideoViewBinding6.seekBar;
        VideoPlayer videoPlayer2 = this.f8722a.c;
        seekBar.setMax(videoPlayer2 != null ? (int) videoPlayer2.g() : 0);
    }
}
