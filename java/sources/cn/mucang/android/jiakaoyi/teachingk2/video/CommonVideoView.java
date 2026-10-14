package cn.mucang.android.jiakaoyi.teachingk2.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutCommonVideoViewBinding;
import com.google.android.exoplayer2.ui.PlayerView;
import java.text.SimpleDateFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0015\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0019\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020!H\u0016J\u0006\u0010\"\u001a\u00020\u001dJ\u0012\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00138\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;", "Landroid/widget/FrameLayout;", "Landroid/view/View$OnClickListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "onSeekBarChangeListener", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "player", "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer;", "roundBackground", "", "simpleDateFormat", "Ljava/text/SimpleDateFormat;", "videoListener", "cn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$videoListener$1", "Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$videoListener$1;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;", "getPlayer", "getSeekBar", "Landroid/widget/SeekBar;", "init", "", "initPlayer", "onClick", "v", "Landroid/view/View;", "reset", "time", "", "millionSeconds", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CommonVideoView extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8715a;
    private LayoutCommonVideoViewBinding b;
    private VideoPlayer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SuppressLint({"SimpleDateFormat"})
    private final SimpleDateFormat f8716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f8717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SeekBar.OnSeekBarChangeListener f8718f;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$initPlayer$1$1", "Landroid/view/ViewOutlineProvider;", "getOutline", "", "view", "Landroid/view/View;", "outline", "Landroid/graphics/Outline;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            r.e(view, "view");
            r.e(outline, "outline");
            outline.setRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight()), CommonVideoView.this.getResources().getDimension(R.dimen.rpx_12));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CommonVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        r.e(context, "context");
    }

    private final void d() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBindingInflate = LayoutCommonVideoViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        r.d(layoutCommonVideoViewBindingInflate, "inflate(LayoutInflater.from(context), this, true)");
        this.b = layoutCommonVideoViewBindingInflate;
        e();
    }

    private final void e() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding.seekBar.setOnSeekBarChangeListener(this.f8718f);
        layoutCommonVideoViewBinding.buttonPlay.setEnabled(false);
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.b;
        if (layoutCommonVideoViewBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        layoutCommonVideoViewBinding2.ivOverlay.setEnabled(false);
        layoutCommonVideoViewBinding.buttonPlay.setOnClickListener(this);
        layoutCommonVideoViewBinding.buttonStop.setOnClickListener(this);
        layoutCommonVideoViewBinding.ivOverlay.setOnClickListener(this);
        PlayerView videoView = layoutCommonVideoViewBinding.videoView;
        r.d(videoView, "videoView");
        VideoPlayer videoPlayer = new VideoPlayer(videoView);
        this.c = videoPlayer;
        if (videoPlayer != null) {
            videoPlayer.f(this.f8717e);
        }
        if (this.f8715a) {
            layoutCommonVideoViewBinding.videoContainer.setBackground(androidx.core.a.a.f(getContext(), R.drawable.shape_round_frame_bg));
            layoutCommonVideoViewBinding.videoView.setOutlineProvider(new a());
            layoutCommonVideoViewBinding.videoView.setClipToOutline(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String f(long j) {
        return this.f8716d.format(Long.valueOf(j));
    }

    /* JADX INFO: renamed from: getPlayer, reason: from getter */
    public final VideoPlayer getC() {
        return this.c;
    }

    public final SeekBar getSeekBar() {
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        SeekBar seekBar = layoutCommonVideoViewBinding.seekBar;
        r.d(seekBar, "viewBinding.seekBar");
        return seekBar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        boolean zA;
        r.e(v, "v");
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding = this.b;
        if (layoutCommonVideoViewBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        if (r.a(v, layoutCommonVideoViewBinding.buttonPlay)) {
            zA = true;
        } else {
            LayoutCommonVideoViewBinding layoutCommonVideoViewBinding2 = this.b;
            if (layoutCommonVideoViewBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            zA = r.a(v, layoutCommonVideoViewBinding2.ivCenterIcon);
        }
        if (zA) {
            VideoPlayer videoPlayer = this.c;
            if (videoPlayer == null) {
                return;
            }
            videoPlayer.o();
            return;
        }
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding3 = this.b;
        if (layoutCommonVideoViewBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        if (r.a(v, layoutCommonVideoViewBinding3.buttonStop)) {
            VideoPlayer videoPlayer2 = this.c;
            if (videoPlayer2 == null) {
                return;
            }
            videoPlayer2.l();
            return;
        }
        LayoutCommonVideoViewBinding layoutCommonVideoViewBinding4 = this.b;
        if (layoutCommonVideoViewBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        if (r.a(v, layoutCommonVideoViewBinding4.ivOverlay)) {
            VideoPlayer videoPlayer3 = this.c;
            if (videoPlayer3 != null && videoPlayer3.h()) {
                VideoPlayer videoPlayer4 = this.c;
                if (videoPlayer4 == null) {
                    return;
                }
                videoPlayer4.l();
                return;
            }
            VideoPlayer videoPlayer5 = this.c;
            if (videoPlayer5 == null) {
                return;
            }
            videoPlayer5.o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        r.e(context, "context");
        this.f8716d = new SimpleDateFormat("mm:ss");
        this.f8717e = new c(this);
        this.f8718f = new b(this);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CommonVideoView);
            r.d(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…tyleable.CommonVideoView)");
            this.f8715a = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonVideoView_round_background, false);
            typedArrayObtainStyledAttributes.recycle();
        }
        d();
    }
}
