package cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.l;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCommandManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import kotlin.jvm.functions.Function0;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
public class FloatSafeAlterViewService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindowManager f7699a;
    private WindowManager.LayoutParams b;
    private View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f7700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f7701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7703g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7704h = 0;

    @SuppressLint({"SetTextI18n"})
    private final a0<SafeCountDown> i = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            this.f7709a.j((SafeCountDown) obj);
        }
    };
    private final Application.ActivityLifecycleCallbacks j = new a();

    class a extends l {
        a() {
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            FloatSafeAlterViewService.b(FloatSafeAlterViewService.this);
            cn.mucang.android.jiakaoyi.framework.log.f.o("FloatWindowManager, onActivityStarted:" + activity + "当前计数:" + FloatSafeAlterViewService.this.f7704h);
            if (FloatSafeAlterViewService.this.c != null) {
                FloatSafeAlterViewService.this.c.setVisibility(0);
            }
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            super.onActivityStopped(activity);
            FloatSafeAlterViewService.c(FloatSafeAlterViewService.this);
            cn.mucang.android.jiakaoyi.framework.log.f.o("FloatWindowManager, onActivityStopped:" + activity + "当前计数:" + FloatSafeAlterViewService.this.f7704h);
            if (FloatSafeAlterViewService.this.f7704h >= 0 || FloatSafeAlterViewService.this.c == null) {
                return;
            }
            FloatSafeAlterViewService.this.c.setVisibility(8);
        }
    }

    private class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f7706a;
        private int b;

        private b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f7706a = (int) motionEvent.getRawX();
                this.b = (int) motionEvent.getRawY();
            } else if (action == 2) {
                int rawX = (int) motionEvent.getRawX();
                int rawY = (int) motionEvent.getRawY();
                int i = rawX - this.f7706a;
                int i2 = rawY - this.b;
                this.f7706a = rawX;
                this.b = rawY;
                FloatSafeAlterViewService.this.b.x += i;
                FloatSafeAlterViewService.this.b.y += i2;
                if (FloatSafeAlterViewService.this.b.x < 0) {
                    FloatSafeAlterViewService.this.b.x = 0;
                } else if (FloatSafeAlterViewService.this.b.x > FloatSafeAlterViewService.this.f7702f - view.getMeasuredWidth()) {
                    FloatSafeAlterViewService.this.b.x = FloatSafeAlterViewService.this.f7702f - view.getMeasuredWidth();
                }
                if (FloatSafeAlterViewService.this.b.y < 0) {
                    FloatSafeAlterViewService.this.b.y = 0;
                } else if (FloatSafeAlterViewService.this.b.y > FloatSafeAlterViewService.this.f7703g - view.getMeasuredHeight()) {
                    FloatSafeAlterViewService.this.b.y = FloatSafeAlterViewService.this.f7703g - view.getMeasuredHeight();
                }
                t.h("debugXY", FloatSafeAlterViewService.this.b.x + "," + FloatSafeAlterViewService.this.b.y);
                FloatSafeAlterViewService.this.f7699a.updateViewLayout(view, FloatSafeAlterViewService.this.b);
            }
            return false;
        }

        /* synthetic */ b(FloatSafeAlterViewService floatSafeAlterViewService, a aVar) {
            this();
        }
    }

    static /* synthetic */ int b(FloatSafeAlterViewService floatSafeAlterViewService) {
        int i = floatSafeAlterViewService.f7704h;
        floatSafeAlterViewService.f7704h = i + 1;
        return i;
    }

    static /* synthetic */ int c(FloatSafeAlterViewService floatSafeAlterViewService) {
        int i = floatSafeAlterViewService.f7704h;
        floatSafeAlterViewService.f7704h = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(SafeCountDown safeCountDown) {
        TextView textView = this.f7701e;
        if (textView != null) {
            textView.setVisibility(safeCountDown.getB() ? 0 : 4);
        }
        if (this.f7700d != null) {
            if (safeCountDown.getF7713a() > 0) {
                this.f7700d.setText(String.format(k0.a(R.string.teachbase_security_system_off), Integer.valueOf(safeCountDown.getF7713a())));
            } else {
                this.f7700d.setText(k0.a(R.string.teachbase_close_safe_system_hint));
            }
        }
    }

    static /* synthetic */ v k() {
        SafeLocalParamManager.b(true);
        RainModeMgr.f();
        cn.mucang.android.jiakaoyi.framework.base.l.a.d(k0.a(R.string.teachbase_anable_safe), R.drawable.ic_safe_ok);
        FloatWindowManager.f();
        LiveBus.d(SafeSwitchChanged.class).l(new SafeSwitchChanged());
        return v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n() {
        t.h("debugXY", "view宽高" + this.c.getMeasuredWidth() + ", " + this.c.getMeasuredHeight());
    }

    @SuppressLint({"ClickableViewAccessibility", "RestrictedApi"})
    private void o() {
        if (this.c == null) {
            View viewInflate = LayoutInflater.from(getApplicationContext()).inflate(R.layout.dialog_msg, (ViewGroup) null);
            this.c = viewInflate;
            TextView textView = (TextView) viewInflate.findViewById(R.id.txt_msg);
            this.f7700d = textView;
            textView.setText(k0.a(R.string.teachbase_close_safe_system_hint));
            TextView textView2 = (TextView) this.c.findViewById(R.id.tv_btn);
            this.f7701e = textView2;
            textView2.setText(k0.a(R.string.teachbase_open_now));
            ((ImageView) this.c.findViewById(R.id.iv_icon)).setImageResource(R.drawable.ic_safe_cancel);
            this.f7701e.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SafeCommandManager.f(true, true, new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.a
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return FloatSafeAlterViewService.k();
                        }
                    });
                }
            });
            this.c.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            t.h("debugXY", "view宽高" + this.c.getMeasuredWidth() + ", " + this.c.getMeasuredHeight());
            this.c.setOnTouchListener(new b(this, null));
            this.b.x = this.f7702f - this.c.getMeasuredWidth();
            WindowManager.LayoutParams layoutParams = this.b;
            layoutParams.y = 50;
            this.f7699a.addView(this.c, layoutParams);
            this.c.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7710a.n();
                }
            });
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    @SuppressLint({"RestrictedApi"})
    public void onCreate() {
        super.onCreate();
        WindowManager windowManager = (WindowManager) getSystemService("window");
        this.f7699a = windowManager;
        this.f7702f = o0.q(windowManager);
        this.f7703g = o0.p(this.f7699a);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.b = layoutParams;
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2002;
        }
        layoutParams.format = 1;
        layoutParams.gravity = 51;
        layoutParams.flags = 40;
        layoutParams.width = -2;
        layoutParams.height = -2;
        getApplication().registerActivityLifecycleCallbacks(this.j);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        View view = this.c;
        if (view != null) {
            this.f7699a.removeView(view);
            this.c = null;
        }
        getApplication().unregisterActivityLifecycleCallbacks(this.j);
        LiveBus.d(SafeCountDown.class).m(this.i);
        t.h("FloatWindowManager", "停止悬浮窗");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        o();
        LiveBus.d(SafeCountDown.class).i(this.i);
        return super.onStartCommand(intent, i, i2);
    }
}
