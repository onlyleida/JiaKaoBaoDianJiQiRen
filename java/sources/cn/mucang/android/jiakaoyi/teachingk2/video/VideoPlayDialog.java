package cn.mucang.android.jiakaoyi.teachingk2.video;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogVideoPlayBinding;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0015R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "title", "", SocialConstants.PARAM_APP_DESC, "videoUrl", "closeText", "enableClose", "", "playEndDismiss", "enableSeek", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogVideoPlayBinding;", "dismiss", "", "initView", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoPlayDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8725a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f8726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f8727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f8728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f8729g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DialogVideoPlayBinding f8730h;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.e$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayDialog$onCreate$2", "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$OnVideoListener;", "onComplete", "", "onError", "onPause", "onPlaying", "onPrepared", "onSeek", "position", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements VideoPlayer.c {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
        public void a(long j) {
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
        public void b() {
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
        public void onComplete() {
            if (VideoPlayDialog.this.f8728f) {
                DialogExtensionKt.b(VideoPlayDialog.this);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
        public void onError() {
            DialogExtensionKt.b(VideoPlayDialog.this);
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
        public void onPause() {
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.video.VideoPlayer.c
        public void onPrepared() {
        }
    }

    public /* synthetic */ VideoPlayDialog(Context context, String str, String str2, String str3, String str4, boolean z, boolean z2, boolean z3, int i, o oVar) {
        this(context, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? true : z, (i & 64) != 0 ? true : z2, (i & 128) != 0 ? true : z3);
    }

    private final void b() {
        if (TextUtils.isEmpty(this.f8725a)) {
            DialogVideoPlayBinding dialogVideoPlayBinding = this.f8730h;
            if (dialogVideoPlayBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogVideoPlayBinding.titleTv.setVisibility(8);
        } else {
            DialogVideoPlayBinding dialogVideoPlayBinding2 = this.f8730h;
            if (dialogVideoPlayBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogVideoPlayBinding2.titleTv.setVisibility(0);
            DialogVideoPlayBinding dialogVideoPlayBinding3 = this.f8730h;
            if (dialogVideoPlayBinding3 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogVideoPlayBinding3.titleTv.setText(this.f8725a);
        }
        if (TextUtils.isEmpty(this.b)) {
            DialogVideoPlayBinding dialogVideoPlayBinding4 = this.f8730h;
            if (dialogVideoPlayBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogVideoPlayBinding4.tvDesc.setVisibility(8);
        } else {
            DialogVideoPlayBinding dialogVideoPlayBinding5 = this.f8730h;
            if (dialogVideoPlayBinding5 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogVideoPlayBinding5.tvDesc.setVisibility(0);
            DialogVideoPlayBinding dialogVideoPlayBinding6 = this.f8730h;
            if (dialogVideoPlayBinding6 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogVideoPlayBinding6.tvDesc.setText(this.b);
        }
        if (!this.f8727e) {
            DialogVideoPlayBinding dialogVideoPlayBinding7 = this.f8730h;
            if (dialogVideoPlayBinding7 != null) {
                dialogVideoPlayBinding7.closeTv.setVisibility(8);
                return;
            } else {
                r.u("viewBinding");
                throw null;
            }
        }
        DialogVideoPlayBinding dialogVideoPlayBinding8 = this.f8730h;
        if (dialogVideoPlayBinding8 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogVideoPlayBinding8.closeTv.setVisibility(0);
        if (TextUtils.isEmpty(this.f8726d)) {
            return;
        }
        DialogVideoPlayBinding dialogVideoPlayBinding9 = this.f8730h;
        if (dialogVideoPlayBinding9 != null) {
            dialogVideoPlayBinding9.closeTv.setText(this.f8726d);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(VideoPlayDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        DialogVideoPlayBinding dialogVideoPlayBinding = this.f8730h;
        if (dialogVideoPlayBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        VideoPlayer c = dialogVideoPlayBinding.commonVideo.getC();
        if (c != null) {
            c.n();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        DialogVideoPlayBinding dialogVideoPlayBindingInflate = DialogVideoPlayBinding.inflate(getLayoutInflater());
        r.d(dialogVideoPlayBindingInflate, "inflate(layoutInflater)");
        this.f8730h = dialogVideoPlayBindingInflate;
        if (dialogVideoPlayBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogVideoPlayBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout(-1, -1);
        }
        DialogVideoPlayBinding dialogVideoPlayBinding = this.f8730h;
        if (dialogVideoPlayBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogVideoPlayBinding.closeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.video.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayDialog.d(this.f8720a, view);
            }
        });
        b();
        DialogVideoPlayBinding dialogVideoPlayBinding2 = this.f8730h;
        if (dialogVideoPlayBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        VideoPlayer c = dialogVideoPlayBinding2.commonVideo.getC();
        if (c != null) {
            c.f(new a());
        }
        DialogVideoPlayBinding dialogVideoPlayBinding3 = this.f8730h;
        if (dialogVideoPlayBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogVideoPlayBinding3.commonVideo.getSeekBar().setEnabled(this.f8729g);
        DialogVideoPlayBinding dialogVideoPlayBinding4 = this.f8730h;
        if (dialogVideoPlayBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        VideoPlayer c2 = dialogVideoPlayBinding4.commonVideo.getC();
        if (c2 == null) {
            return;
        }
        c2.m(this.c);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoPlayDialog(Context context, String str, String str2, String videoUrl, String str3, boolean z, boolean z2, boolean z3) {
        super(context, R.style.jiakaoyi__full_dialog_video);
        r.e(context, "context");
        r.e(videoUrl, "videoUrl");
        this.f8725a = str;
        this.b = str2;
        this.c = videoUrl;
        this.f8726d = str3;
        this.f8727e = z;
        this.f8728f = z2;
        this.f8729g = z3;
    }
}
