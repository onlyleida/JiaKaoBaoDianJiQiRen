package cn.mucang.jiakaoyi.sundial.client;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.jiakaoyi.sundial.client.view.DraggableView;
import cn.mucang.jiakaoyi.sundial.databinding.LayoutMiniSundialWindowBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.material.badge.BadgeDrawable;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u0011\u001a\u00020\u0010H\u0003J\u0006\u0010\u0012\u001a\u00020\u0010J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;", "", "()V", "job", "Lkotlinx/coroutines/Job;", "slop", "", "viewbinding", "Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;", "windowManager", "Landroid/view/WindowManager;", "windowParams", "Landroid/view/WindowManager$LayoutParams;", "windowX", "windowY", "hide", "", "setupView", "show", "time2str", "", "value", "", "updateXY", "newX", "newY", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SundialMiniWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LayoutMiniSundialWindowBinding f9128a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WindowManager.LayoutParams f9130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WindowManager f9131f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t1 f9132g;

    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003H\u0016¨\u0006\t"}, d2 = {"cn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$3", "Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView$OnDragListener;", "getCurrentX", "", "getCurrentY", "onDrag", "", "x", "y", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements DraggableView.a {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.view.DraggableView.a
        public void a(int i, int i2) {
            SundialMiniWindow.this.n(i, i2);
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.view.DraggableView.a
        public int b() {
            return SundialMiniWindow.this.f9129d;
        }

        @Override // cn.mucang.jiakaoyi.sundial.client.view.DraggableView.a
        public int c() {
            return SundialMiniWindow.this.c;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/view/ViewKt$doOnNextLayout$1", "Landroid/view/View$OnLayoutChangeListener;", "onLayoutChange", "", "view", "Landroid/view/View;", TtmlNode.LEFT, "", "top", TtmlNode.RIGHT, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "core-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements View.OnLayoutChangeListener {
        public b() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            r.e(view, "view");
            view.removeOnLayoutChangeListener(this);
            SundialMiniWindow.this.n(view.getContext().getResources().getDisplayMetrics().widthPixels - view.getWidth(), (int) (view.getContext().getResources().getDisplayMetrics().heightPixels * 0.7f));
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void i() {
        DraggableView draggableView;
        t1 t1Var;
        t1 t1Var2 = this.f9132g;
        boolean z = false;
        if (t1Var2 != null && t1Var2.isActive()) {
            z = true;
        }
        if (z && (t1Var = this.f9132g) != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.f9132g = kotlinx.coroutines.g.b(j0.a(w0.c()), null, null, new SundialMiniWindow$setupView$1(this, null), 3, null);
        LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding = this.f9128a;
        if (layoutMiniSundialWindowBinding != null) {
            layoutMiniSundialWindowBinding.llDetail.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.sundial.client.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SundialMiniWindow.j(view);
                }
            });
            layoutMiniSundialWindowBinding.tvLogout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.sundial.client.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SundialMiniWindow.k(view);
                }
            });
            DraggableView root = layoutMiniSundialWindowBinding.getRoot();
            r.d(root, "root");
            root.addOnLayoutChangeListener(new b());
        }
        LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding2 = this.f9128a;
        if (layoutMiniSundialWindowBinding2 == null || (draggableView = layoutMiniSundialWindowBinding2.dragView) == null) {
            return;
        }
        draggableView.setDragListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View view) {
        SundialClient.f9111a.G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(View view) {
        SundialClient sundialClient = SundialClient.f9111a;
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        sundialClient.z(activityI, new Function0<v>() { // from class: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$2$2$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }
        }, new Function0<v>() { // from class: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$2$2$2
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String m(long j) {
        long j2 = j / ((long) 1000);
        long j3 = 3600;
        long j4 = j2 / j3;
        String strM = j4 < 10 ? r.m("0", Long.valueOf(j4)) : String.valueOf(j4);
        long j5 = j2 % j3;
        long j6 = 60;
        long j7 = j5 % j6;
        String strM2 = j7 < 10 ? r.m("0", Long.valueOf(j7)) : String.valueOf(j7);
        long j8 = j5 / j6;
        String strM3 = j8 < 10 ? r.m("0", Long.valueOf(j8)) : String.valueOf(j8);
        if (r.a(strM, "00")) {
            return strM3 + ':' + strM2;
        }
        return strM + ':' + strM3 + ':' + strM2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(int i, int i2) {
        this.c = i;
        this.f9129d = i2;
        WindowManager.LayoutParams layoutParams = this.f9130e;
        if (layoutParams != null) {
            layoutParams.x = i;
        }
        if (layoutParams != null) {
            layoutParams.y = i2;
        }
        LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding = this.f9128a;
        DraggableView root = layoutMiniSundialWindowBinding == null ? null : layoutMiniSundialWindowBinding.getRoot();
        WindowManager windowManager = this.f9131f;
        if (windowManager == null) {
            return;
        }
        windowManager.updateViewLayout(root, this.f9130e);
    }

    public final void f() {
        DraggableView root;
        WindowManager windowManager;
        t1 t1Var;
        t1 t1Var2 = this.f9132g;
        boolean z = false;
        if (t1Var2 != null && t1Var2.isActive()) {
            z = true;
        }
        if (z && (t1Var = this.f9132g) != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding = this.f9128a;
        if (layoutMiniSundialWindowBinding == null || (root = layoutMiniSundialWindowBinding.getRoot()) == null || !root.isAttachedToWindow() || (windowManager = this.f9131f) == null) {
            return;
        }
        windowManager.removeView(root);
    }

    public final void l() {
        DraggableView root;
        v vVar = null;
        if (this.f9128a == null) {
            this.b = ViewConfiguration.get(MucangConfig.getContext()).getScaledTouchSlop();
            Object systemService = MucangConfig.getContext().getSystemService("window");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            this.f9131f = (WindowManager) systemService;
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.f9130e = layoutParams;
            if (layoutParams != null) {
                layoutParams.format = -2;
            }
            if (layoutParams != null) {
                layoutParams.flags = 40;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                if (layoutParams != null) {
                    layoutParams.type = 2038;
                }
            } else if (layoutParams != null) {
                layoutParams.type = 2003;
            }
            if (layoutParams != null) {
                layoutParams.gravity = BadgeDrawable.TOP_START;
            }
            if (layoutParams != null) {
                layoutParams.width = -2;
            }
            if (layoutParams != null) {
                layoutParams.height = -2;
            }
            LayoutMiniSundialWindowBinding layoutMiniSundialWindowBindingInflate = LayoutMiniSundialWindowBinding.inflate(LayoutInflater.from(MucangConfig.getContext()));
            this.f9128a = layoutMiniSundialWindowBindingInflate;
            DraggableView root2 = layoutMiniSundialWindowBindingInflate == null ? null : layoutMiniSundialWindowBindingInflate.getRoot();
            if (root2 != null) {
                root2.setSystemUiVisibility(2566);
            }
        }
        LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding = this.f9128a;
        if (layoutMiniSundialWindowBinding != null && (root = layoutMiniSundialWindowBinding.getRoot()) != null && !root.isAttachedToWindow()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                WindowManager windowManager = this.f9131f;
                if (windowManager != null) {
                    windowManager.addView(root, this.f9130e);
                    vVar = v.f15822a;
                }
                Result.m139constructorimpl(vVar);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
        }
        i();
    }
}
