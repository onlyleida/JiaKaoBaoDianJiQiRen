package cn.mucang.android.jiakaoyi.teachingk2.safe;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.view.ScrollableView;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogRadarSignalBinding;
import cn.mucang.android.jiakaoyi.teachingk2.AppDataInLogin;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\fH\u0002J\u0006\u0010\u000f\u001a\u00020\fJ\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015J\b\u0010\u0016\u001a\u00020\fH\u0016J\b\u0010\u0017\u001a\u00020\fH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "maxDis", "", "outSize", "Landroid/graphics/Point;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogRadarSignalBinding;", "checkValidPos", "", "expand", "fold", "onBrake", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onRadarSignal", "it", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;", "show", "updateBallView", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RadarSignalDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogRadarSignalBinding f7900a;
    private final Point b;
    private int c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.y$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalDialog$onCreate$1", "Lcn/mucang/android/jiakaoyi/framework/base/view/ScrollableView$OnScrollListener;", "onScroll", "", "distanceX", "", "distanceY", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ScrollableView.a {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.base.view.ScrollableView.a
        public void a(int i, int i2) {
            Window window = RadarSignalDialog.this.getWindow();
            WindowManager.LayoutParams attributes = window == null ? null : window.getAttributes();
            if (attributes == null) {
                return;
            }
            attributes.x += i;
            attributes.y -= i2;
            RadarSignalDialog.this.b();
            RadarSignalDialog.this.onWindowAttributesChanged(attributes);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RadarSignalDialog(Context context) {
        super(context, R.style.out_side_click_dialog);
        kotlin.jvm.internal.r.e(context, "context");
        this.b = new Point();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        if (getWindow() == null) {
            return;
        }
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window == null ? null : window.getAttributes();
        if (attributes == null) {
            return;
        }
        if (attributes.x < 0) {
            attributes.x = 0;
        }
        int i = attributes.x;
        int i2 = this.b.x;
        Window window2 = getWindow();
        kotlin.jvm.internal.r.c(window2);
        if (i > i2 - window2.getDecorView().getWidth()) {
            int i3 = this.b.x;
            Window window3 = getWindow();
            kotlin.jvm.internal.r.c(window3);
            attributes.x = i3 - window3.getDecorView().getWidth();
        }
        if (attributes.y < 0) {
            attributes.y = 0;
        }
        int i4 = attributes.y;
        int i5 = this.b.y;
        Window window4 = getWindow();
        kotlin.jvm.internal.r.c(window4);
        if (i4 > i5 - window4.getDecorView().getHeight()) {
            int i6 = this.b.y;
            Window window5 = getWindow();
            kotlin.jvm.internal.r.c(window5);
            attributes.y = i6 - window5.getDecorView().getHeight();
        }
    }

    private final void c() {
        WindowManager.LayoutParams attributes;
        AppDataInLogin.f7224a.f(true);
        DialogRadarSignalBinding dialogRadarSignalBinding = this.f7900a;
        if (dialogRadarSignalBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding.radarContainer.getRoot().setVisibility(0);
        DialogRadarSignalBinding dialogRadarSignalBinding2 = this.f7900a;
        if (dialogRadarSignalBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding2.ivBall.setVisibility(8);
        DialogRadarSignalBinding dialogRadarSignalBinding3 = this.f7900a;
        if (dialogRadarSignalBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding3.ivArrow.setVisibility(0);
        DialogRadarSignalBinding dialogRadarSignalBinding4 = this.f7900a;
        if (dialogRadarSignalBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding4.bgView.setBackgroundColor(-1);
        Window window = getWindow();
        if (window != null && (attributes = window.getAttributes()) != null) {
            attributes.x -= getContext().getResources().getDimensionPixelSize(R.dimen.rpx_10);
            attributes.y -= getContext().getResources().getDimensionPixelSize(R.dimen.rpx_136);
        }
        b();
        Window window2 = getWindow();
        onWindowAttributesChanged(window2 != null ? window2.getAttributes() : null);
    }

    private final void d() {
        WindowManager.LayoutParams attributes;
        AppDataInLogin.f7224a.f(false);
        DialogRadarSignalBinding dialogRadarSignalBinding = this.f7900a;
        if (dialogRadarSignalBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding.radarContainer.getRoot().setVisibility(8);
        DialogRadarSignalBinding dialogRadarSignalBinding2 = this.f7900a;
        if (dialogRadarSignalBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding2.ivBall.setVisibility(0);
        DialogRadarSignalBinding dialogRadarSignalBinding3 = this.f7900a;
        if (dialogRadarSignalBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding3.ivArrow.setVisibility(8);
        DialogRadarSignalBinding dialogRadarSignalBinding4 = this.f7900a;
        if (dialogRadarSignalBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding4.bgView.setBackgroundColor(0);
        Window window = getWindow();
        if (window != null && (attributes = window.getAttributes()) != null) {
            attributes.x += getContext().getResources().getDimensionPixelSize(R.dimen.rpx_10);
            attributes.y += getContext().getResources().getDimensionPixelSize(R.dimen.rpx_136);
        }
        m();
        b();
        Window window2 = getWindow();
        onWindowAttributesChanged(window2 != null ? window2.getAttributes() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(RadarSignalDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(RadarSignalDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(RadarSignalDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    private final void m() {
        long j;
        DialogRadarSignalBinding dialogRadarSignalBinding = this.f7900a;
        if (dialogRadarSignalBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (dialogRadarSignalBinding.ivBall.getVisibility() == 0) {
            int i = this.c;
            float f2 = i / 100;
            DialogRadarSignalBinding dialogRadarSignalBinding2 = this.f7900a;
            if (dialogRadarSignalBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogRadarSignalBinding2.tvDistance.setText(String.valueOf(i));
            if (f2 > 1.0f) {
                j = 4280536749L;
            } else {
                j = ((double) f2) > 0.5d ? 4293901612L : 4294401120L;
            }
            DialogRadarSignalBinding dialogRadarSignalBinding3 = this.f7900a;
            if (dialogRadarSignalBinding3 != null) {
                dialogRadarSignalBinding3.ivBall.setBackgroundTintList(ColorStateList.valueOf((int) j));
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
    }

    public final void h() {
        if (AppDataInLogin.f7224a.b()) {
            return;
        }
        c();
    }

    public final void l(cn.mucang.android.jiakaoyi.signal.communicate.receive.z it) {
        kotlin.jvm.internal.r.e(it, "it");
        if (isShowing()) {
            int[] frontRadarDis = it.f5454a;
            int[] backRadarDis = it.b;
            DialogRadarSignalBinding dialogRadarSignalBinding = this.f7900a;
            if (dialogRadarSignalBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogRadarSignalBinding.radarContainer.frontRadar.b(frontRadarDis);
            DialogRadarSignalBinding dialogRadarSignalBinding2 = this.f7900a;
            if (dialogRadarSignalBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogRadarSignalBinding2.radarContainer.backRadar.b(backRadarDis);
            kotlin.jvm.internal.r.d(frontRadarDis, "frontRadarDis");
            Integer numR = ArraysKt___ArraysKt.R(frontRadarDis);
            int iIntValue = numR == null ? 0 : numR.intValue();
            kotlin.jvm.internal.r.d(backRadarDis, "backRadarDis");
            Integer numR2 = ArraysKt___ArraysKt.R(backRadarDis);
            this.c = Math.min(iIntValue, numR2 != null ? numR2.intValue() : 0);
            m();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        WindowManager windowManager;
        Display defaultDisplay;
        super.onCreate(savedInstanceState);
        DialogRadarSignalBinding dialogRadarSignalBindingInflate = DialogRadarSignalBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogRadarSignalBindingInflate, "inflate(layoutInflater)");
        this.f7900a = dialogRadarSignalBindingInflate;
        if (dialogRadarSignalBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogRadarSignalBindingInflate.getRoot());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        if (window != null) {
            window.setFlags(8, 8);
        }
        Window window2 = getWindow();
        View decorView = window2 == null ? null : window2.getDecorView();
        if (decorView != null) {
            decorView.setSystemUiVisibility(2566);
        }
        Window window3 = getWindow();
        WindowManager.LayoutParams attributes = window3 == null ? null : window3.getAttributes();
        if (attributes != null) {
            attributes.gravity = 83;
        }
        Window window4 = getWindow();
        if (window4 != null && (windowManager = window4.getWindowManager()) != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            defaultDisplay.getRealSize(this.b);
        }
        DialogRadarSignalBinding dialogRadarSignalBinding = this.f7900a;
        if (dialogRadarSignalBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding.scrollableView.setScrollListener(new a());
        DialogRadarSignalBinding dialogRadarSignalBinding2 = this.f7900a;
        if (dialogRadarSignalBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding2.ivArrow.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RadarSignalDialog.i(this.f7631a, view);
            }
        });
        DialogRadarSignalBinding dialogRadarSignalBinding3 = this.f7900a;
        if (dialogRadarSignalBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding3.ivBall.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RadarSignalDialog.j(this.f7626a, view);
            }
        });
        DialogRadarSignalBinding dialogRadarSignalBinding4 = this.f7900a;
        if (dialogRadarSignalBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding4.radarContainer.frontRadar.setConfig(cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a.b());
        DialogRadarSignalBinding dialogRadarSignalBinding5 = this.f7900a;
        if (dialogRadarSignalBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding5.radarContainer.backRadar.setConfig(cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a.a());
        DialogRadarSignalBinding dialogRadarSignalBinding6 = this.f7900a;
        if (dialogRadarSignalBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogRadarSignalBinding6.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RadarSignalDialog.k(this.f7697a, view);
            }
        });
        if (AppDataInLogin.f7224a.b()) {
            c();
        } else {
            d();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed()) {
            return;
        }
        super.show();
    }
}
