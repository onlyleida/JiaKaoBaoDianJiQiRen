package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.b0;
import androidx.appcompat.widget.q0;
import androidx.appcompat.widget.v0;
import androidx.appcompat.widget.w0;
import androidx.appcompat.widget.x;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Lifecycle;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.opencv.ml.DTrees;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl extends androidx.appcompat.app.f implements androidx.appcompat.view.menu.g.a, LayoutInflater.Factory2 {
    private static final androidx.collection.g<String, Integer> h0 = new androidx.collection.g<>();
    private static final boolean i0;
    private static final int[] j0;
    private static final boolean k0;
    private static final boolean l0;
    private static boolean m0;
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    private boolean F;
    private PanelFeatureState[] G;
    private PanelFeatureState H;
    private boolean I;
    private boolean K;
    private boolean M;
    private boolean N;
    boolean Q;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private q X;
    private q Y;
    boolean Z;
    int a0;
    private final Runnable b0;
    private boolean c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f87d;
    private Rect d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Context f88e;
    private Rect e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Window f89f;
    private androidx.appcompat.app.i f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o f90g;
    private androidx.appcompat.app.j g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final androidx.appcompat.app.e f91h;
    androidx.appcompat.app.a i;
    MenuInflater j;
    private CharSequence k;
    private x l;
    private i m;
    private u n;
    androidx.appcompat.d.b o;
    ActionBarContextView p;
    PopupWindow q;
    Runnable r;
    ViewPropertyAnimatorCompat s;
    private boolean t;
    private boolean u;
    ViewGroup v;
    private TextView w;
    private View x;
    private boolean y;
    private boolean z;

    protected static final class PanelFeatureState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f92a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f93d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f94e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f95f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ViewGroup f96g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f97h;
        View i;
        androidx.appcompat.view.menu.g j;
        androidx.appcompat.view.menu.e k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f98a;
            boolean b;
            Bundle c;

            class a implements Parcelable.ClassLoaderCreator<SavedState> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f98a = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                savedState.b = z;
                if (z) {
                    savedState.c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f98a);
                parcel.writeInt(this.b ? 1 : 0);
                if (this.b) {
                    parcel.writeBundle(this.c);
                }
            }
        }

        PanelFeatureState(int i) {
            this.f92a = i;
        }

        androidx.appcompat.view.menu.n a(androidx.appcompat.view.menu.m.a aVar) {
            if (this.j == null) {
                return null;
            }
            if (this.k == null) {
                androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(this.l, R.layout.abc_list_menu_item_layout);
                this.k = eVar;
                eVar.setCallback(aVar);
                this.j.addMenuPresenter(this.k);
            }
            return this.k.b(this.f96g);
        }

        public boolean b() {
            if (this.f97h == null) {
                return false;
            }
            return this.i != null || this.k.a().getCount() > 0;
        }

        void c(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.view.menu.g gVar2 = this.j;
            if (gVar == gVar2) {
                return;
            }
            if (gVar2 != null) {
                gVar2.removeMenuPresenter(this.k);
            }
            this.j = gVar;
            if (gVar == null || (eVar = this.k) == null) {
                return;
            }
            gVar.addMenuPresenter(eVar);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                themeNewTheme.applyStyle(i, true);
            }
            themeNewTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                themeNewTheme.applyStyle(i2, true);
            } else {
                themeNewTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.d.d dVar = new androidx.appcompat.d.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(R.styleable.AppCompatTheme);
            this.b = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
            this.f95f = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f99a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f99a = uncaughtExceptionHandler;
        }

        private boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (!a(th)) {
                this.f99a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f99a.uncaughtException(thread, notFoundException);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.a0 & 1) != 0) {
                appCompatDelegateImpl.V(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.a0 & 4096) != 0) {
                appCompatDelegateImpl2.V(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.Z = false;
            appCompatDelegateImpl3.a0 = 0;
        }
    }

    class c implements OnApplyWindowInsetsListener {
        c() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int iL0 = AppCompatDelegateImpl.this.L0(windowInsetsCompat, null);
            if (systemWindowInsetTop != iL0) {
                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), iL0, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            }
            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        }
    }

    class d implements b0.a {
        d() {
        }

        @Override // androidx.appcompat.widget.b0.a
        public void a(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.L0(null, rect);
        }
    }

    class e implements ContentFrameLayout.a {
        e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.T();
        }
    }

    class f implements Runnable {

        class a extends ViewPropertyAnimatorListenerAdapter {
            a() {
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.p.setAlpha(1.0f);
                AppCompatDelegateImpl.this.s.setListener(null);
                AppCompatDelegateImpl.this.s = null;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                AppCompatDelegateImpl.this.p.setVisibility(0);
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.q.showAtLocation(appCompatDelegateImpl.p, 55, 0, 0);
            AppCompatDelegateImpl.this.W();
            if (!AppCompatDelegateImpl.this.E0()) {
                AppCompatDelegateImpl.this.p.setAlpha(1.0f);
                AppCompatDelegateImpl.this.p.setVisibility(0);
            } else {
                AppCompatDelegateImpl.this.p.setAlpha(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.s = ViewCompat.animate(appCompatDelegateImpl2.p).alpha(1.0f);
                AppCompatDelegateImpl.this.s.setListener(new a());
            }
        }
    }

    class g extends ViewPropertyAnimatorListenerAdapter {
        g() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            AppCompatDelegateImpl.this.p.setAlpha(1.0f);
            AppCompatDelegateImpl.this.s.setListener(null);
            AppCompatDelegateImpl.this.s = null;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AppCompatDelegateImpl.this.p.setVisibility(0);
            AppCompatDelegateImpl.this.p.sendAccessibilityEvent(32);
            if (AppCompatDelegateImpl.this.p.getParent() instanceof View) {
                ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.p.getParent());
            }
        }
    }

    private class h implements androidx.appcompat.app.b {
        h(AppCompatDelegateImpl appCompatDelegateImpl) {
        }
    }

    private final class i implements androidx.appcompat.view.menu.m.a {
        i() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callbackG0 = AppCompatDelegateImpl.this.g0();
            if (callbackG0 == null) {
                return true;
            }
            callbackG0.onMenuOpened(108, gVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void onCloseMenu(androidx.appcompat.view.menu.g gVar, boolean z) {
            AppCompatDelegateImpl.this.N(gVar);
        }
    }

    class j implements androidx.appcompat.d.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.appcompat.d.b.a f108a;

        class a extends ViewPropertyAnimatorListenerAdapter {
            a() {
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.p.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.q;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.p.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.p.getParent());
                }
                AppCompatDelegateImpl.this.p.k();
                AppCompatDelegateImpl.this.s.setListener(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.s = null;
                ViewCompat.requestApplyInsets(appCompatDelegateImpl2.v);
            }
        }

        public j(androidx.appcompat.d.b.a aVar) {
            this.f108a = aVar;
        }

        @Override // androidx.appcompat.d.b.a
        public void a(androidx.appcompat.d.b bVar) {
            this.f108a.a(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.q != null) {
                appCompatDelegateImpl.f89f.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.r);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.p != null) {
                appCompatDelegateImpl2.W();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.s = ViewCompat.animate(appCompatDelegateImpl3.p).alpha(BitmapDescriptorFactory.HUE_RED);
                AppCompatDelegateImpl.this.s.setListener(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            androidx.appcompat.app.e eVar = appCompatDelegateImpl4.f91h;
            if (eVar != null) {
                eVar.onSupportActionModeFinished(appCompatDelegateImpl4.o);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.o = null;
            ViewCompat.requestApplyInsets(appCompatDelegateImpl5.v);
        }

        @Override // androidx.appcompat.d.b.a
        public boolean b(androidx.appcompat.d.b bVar, Menu menu) {
            return this.f108a.b(bVar, menu);
        }

        @Override // androidx.appcompat.d.b.a
        public boolean c(androidx.appcompat.d.b bVar, MenuItem menuItem) {
            return this.f108a.c(bVar, menuItem);
        }

        @Override // androidx.appcompat.d.b.a
        public boolean d(androidx.appcompat.d.b bVar, Menu menu) {
            ViewCompat.requestApplyInsets(AppCompatDelegateImpl.this.v);
            return this.f108a.d(bVar, menu);
        }
    }

    static class k {
        static Context a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        static void b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.densityDpi;
            int i2 = configuration2.densityDpi;
            if (i != i2) {
                configuration3.densityDpi = i2;
            }
        }
    }

    static class l {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    static class m {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    static class n {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i = configuration.colorMode & 3;
            int i2 = configuration2.colorMode;
            if (i != (i2 & 3)) {
                configuration3.colorMode |= i2 & 3;
            }
            int i3 = configuration.colorMode & 12;
            int i4 = configuration2.colorMode;
            if (i3 != (i4 & 12)) {
                configuration3.colorMode |= i4 & 12;
            }
        }
    }

    private class p extends q {
        private final PowerManager c;

        p(Context context) {
            super();
            this.c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.q
        IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.q
        public int c() {
            return (Build.VERSION.SDK_INT < 21 || !l.a(this.c)) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.q
        public void d() {
            AppCompatDelegateImpl.this.H();
        }
    }

    abstract class q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private BroadcastReceiver f111a;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                q.this.d();
            }
        }

        q() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f111a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f88e.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f111a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f111a == null) {
                this.f111a = new a();
            }
            AppCompatDelegateImpl.this.f88e.registerReceiver(this.f111a, intentFilterB);
        }
    }

    private class r extends q {
        private final androidx.appcompat.app.n c;

        r(androidx.appcompat.app.n nVar) {
            super();
            this.c = nVar;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.q
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.q
        public int c() {
            return this.c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.q
        public void d() {
            AppCompatDelegateImpl.this.H();
        }
    }

    private static class s {
        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    private class t extends ContentFrameLayout {
        public t(Context context) {
            super(context);
        }

        private boolean c(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.U(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.P(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(androidx.appcompat.a.a.a.d(getContext(), i));
        }
    }

    private final class u implements androidx.appcompat.view.menu.m.a {
        u() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callbackG0;
            if (gVar != gVar.getRootMenu()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.A || (callbackG0 = appCompatDelegateImpl.g0()) == null || AppCompatDelegateImpl.this.Q) {
                return true;
            }
            callbackG0.onMenuOpened(108, gVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void onCloseMenu(androidx.appcompat.view.menu.g gVar, boolean z) {
            androidx.appcompat.view.menu.g rootMenu = gVar.getRootMenu();
            boolean z2 = rootMenu != gVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                gVar = rootMenu;
            }
            PanelFeatureState panelFeatureStateZ = appCompatDelegateImpl.Z(gVar);
            if (panelFeatureStateZ != null) {
                if (!z2) {
                    AppCompatDelegateImpl.this.Q(panelFeatureStateZ, z);
                } else {
                    AppCompatDelegateImpl.this.M(panelFeatureStateZ.f92a, panelFeatureStateZ, rootMenu);
                    AppCompatDelegateImpl.this.Q(panelFeatureStateZ, true);
                }
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        boolean z = i2 < 21;
        i0 = z;
        j0 = new int[]{android.R.attr.windowBackground};
        k0 = !"robolectric".equals(Build.FINGERPRINT);
        l0 = i2 >= 17;
        if (!z || m0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        m0 = true;
    }

    AppCompatDelegateImpl(Activity activity, androidx.appcompat.app.e eVar) {
        this(activity, null, eVar, activity);
    }

    private boolean A0(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        androidx.appcompat.view.menu.g gVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.m || B0(panelFeatureState, keyEvent)) && (gVar = panelFeatureState.j) != null) {
            zPerformShortcut = gVar.performShortcut(i2, keyEvent, i3);
        }
        if (zPerformShortcut && (i3 & 1) == 0 && this.l == null) {
            Q(panelFeatureState, true);
        }
        return zPerformShortcut;
    }

    private boolean B0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        x xVar;
        x xVar2;
        x xVar3;
        x xVar4;
        if (this.Q) {
            return false;
        }
        if (panelFeatureState.m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.H;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            Q(panelFeatureState2, false);
        }
        Window.Callback callbackG0 = g0();
        if (callbackG0 != null) {
            panelFeatureState.i = callbackG0.onCreatePanelView(panelFeatureState.f92a);
        }
        int i2 = panelFeatureState.f92a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (xVar4 = this.l) != null) {
            xVar4.f();
        }
        if (panelFeatureState.i == null && (!z || !(z0() instanceof androidx.appcompat.app.l))) {
            androidx.appcompat.view.menu.g gVar = panelFeatureState.j;
            if (gVar == null || panelFeatureState.r) {
                if (gVar == null && (!k0(panelFeatureState) || panelFeatureState.j == null)) {
                    return false;
                }
                if (z && (xVar2 = this.l) != null) {
                    if (this.m == null) {
                        this.m = new i();
                    }
                    xVar2.d(panelFeatureState.j, this.m);
                }
                panelFeatureState.j.stopDispatchingItemsChanged();
                if (!callbackG0.onCreatePanelMenu(panelFeatureState.f92a, panelFeatureState.j)) {
                    panelFeatureState.c(null);
                    if (z && (xVar = this.l) != null) {
                        xVar.d(null, this.m);
                    }
                    return false;
                }
                panelFeatureState.r = false;
            }
            panelFeatureState.j.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.s;
            if (bundle != null) {
                panelFeatureState.j.restoreActionViewStates(bundle);
                panelFeatureState.s = null;
            }
            if (!callbackG0.onPreparePanel(0, panelFeatureState.i, panelFeatureState.j)) {
                if (z && (xVar3 = this.l) != null) {
                    xVar3.d(null, this.m);
                }
                panelFeatureState.j.startDispatchingItemsChanged();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.p = z2;
            panelFeatureState.j.setQwertyMode(z2);
            panelFeatureState.j.startDispatchingItemsChanged();
        }
        panelFeatureState.m = true;
        panelFeatureState.n = false;
        this.H = panelFeatureState;
        return true;
    }

    private void C0(boolean z) {
        x xVar = this.l;
        if (xVar == null || !xVar.a() || (ViewConfiguration.get(this.f88e).hasPermanentMenuKey() && !this.l.g())) {
            PanelFeatureState panelFeatureStateE0 = e0(0, true);
            panelFeatureStateE0.q = true;
            Q(panelFeatureStateE0, false);
            y0(panelFeatureStateE0, null);
            return;
        }
        Window.Callback callbackG0 = g0();
        if (this.l.e() && z) {
            this.l.b();
            if (this.Q) {
                return;
            }
            callbackG0.onPanelClosed(108, e0(0, true).j);
            return;
        }
        if (callbackG0 == null || this.Q) {
            return;
        }
        if (this.Z && (this.a0 & 1) != 0) {
            this.f89f.getDecorView().removeCallbacks(this.b0);
            this.b0.run();
        }
        PanelFeatureState panelFeatureStateE1 = e0(0, true);
        androidx.appcompat.view.menu.g gVar = panelFeatureStateE1.j;
        if (gVar == null || panelFeatureStateE1.r || !callbackG0.onPreparePanel(0, panelFeatureStateE1.i, gVar)) {
            return;
        }
        callbackG0.onMenuOpened(108, panelFeatureStateE1.j);
        this.l.c();
    }

    private int D0(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i2 != 9) {
            return i2;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    private boolean F0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f89f.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.isAttachedToWindow((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private void H0() {
        if (this.u) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private boolean I(boolean z) {
        if (this.Q) {
            return false;
        }
        int iL = L();
        boolean zJ0 = J0(o0(this.f88e, iL), z);
        if (iL == 0) {
            d0(this.f88e).e();
        } else {
            q qVar = this.X;
            if (qVar != null) {
                qVar.a();
            }
        }
        if (iL == 3) {
            c0(this.f88e).e();
        } else {
            q qVar2 = this.Y;
            if (qVar2 != null) {
                qVar2.a();
            }
        }
        return zJ0;
    }

    private androidx.appcompat.app.d I0() {
        for (Context baseContext = this.f88e; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof androidx.appcompat.app.d) {
                return (androidx.appcompat.app.d) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void J() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.v.findViewById(android.R.id.content);
        View decorView = this.f89f.getDecorView();
        contentFrameLayout.b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f88e.obtainStyledAttributes(R.styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        int i2 = R.styleable.AppCompatTheme_windowFixedWidthMajor;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            typedArrayObtainStyledAttributes.getValue(i2, contentFrameLayout.getFixedWidthMajor());
        }
        int i3 = R.styleable.AppCompatTheme_windowFixedWidthMinor;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            typedArrayObtainStyledAttributes.getValue(i3, contentFrameLayout.getFixedWidthMinor());
        }
        int i4 = R.styleable.AppCompatTheme_windowFixedHeightMajor;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            typedArrayObtainStyledAttributes.getValue(i4, contentFrameLayout.getFixedHeightMajor());
        }
        int i5 = R.styleable.AppCompatTheme_windowFixedHeightMinor;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            typedArrayObtainStyledAttributes.getValue(i5, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    private boolean J0(int i2, boolean z) {
        boolean z2;
        Configuration configurationR = R(this.f88e, i2, null);
        boolean zM0 = m0();
        int i3 = this.f88e.getResources().getConfiguration().uiMode & 48;
        int i4 = configurationR.uiMode & 48;
        boolean z3 = true;
        if (i3 != i4 && z && !zM0 && this.K && (k0 || this.M)) {
            Object obj = this.f87d;
            if (!(obj instanceof Activity) || ((Activity) obj).isChild()) {
                z2 = false;
            } else {
                androidx.core.app.a.p((Activity) this.f87d);
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (z2 || i3 == i4) {
            z3 = z2;
        } else {
            K0(i4, zM0, null);
        }
        if (z3) {
            Object obj2 = this.f87d;
            if (obj2 instanceof androidx.appcompat.app.d) {
                ((androidx.appcompat.app.d) obj2).onNightModeChanged(i2);
            }
        }
        return z3;
    }

    private void K(Window window) {
        if (this.f89f != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof o) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        o oVar = new o(callback);
        this.f90g = oVar;
        window.setCallback(oVar);
        q0 q0VarU = q0.u(this.f88e, null, j0);
        Drawable drawableH = q0VarU.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        q0VarU.w();
        this.f89f = window;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void K0(int i2, boolean z, Configuration configuration) {
        Resources resources = this.f88e.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 26) {
            androidx.appcompat.app.k.a(resources);
        }
        int i4 = this.U;
        if (i4 != 0) {
            this.f88e.setTheme(i4);
            if (i3 >= 23) {
                this.f88e.getTheme().applyStyle(this.U, true);
            }
        }
        if (z) {
            Object obj = this.f87d;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof androidx.lifecycle.r) {
                    if (((androidx.lifecycle.r) activity).getLifecycle().b().isAtLeast(Lifecycle.State.STARTED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else if (this.N) {
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    private int L() {
        int i2 = this.T;
        return i2 != -100 ? i2 : androidx.appcompat.app.f.i();
    }

    private void M0(View view) {
        view.setBackgroundColor((ViewCompat.getWindowSystemUiVisibility(view) & 8192) != 0 ? androidx.core.a.a.c(this.f88e, R.color.abc_decor_view_status_guard_light) : androidx.core.a.a.c(this.f88e, R.color.abc_decor_view_status_guard));
    }

    private void O() {
        q qVar = this.X;
        if (qVar != null) {
            qVar.a();
        }
        q qVar2 = this.Y;
        if (qVar2 != null) {
            qVar2.a();
        }
    }

    private Configuration R(Context context, int i2, Configuration configuration) {
        int i3;
        if (i2 != 1) {
            i3 = i2 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32;
        } else {
            i3 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = BitmapDescriptorFactory.HUE_RED;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    private ViewGroup S() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.f88e.obtainStyledAttributes(R.styleable.AppCompatTheme);
        int i2 = R.styleable.AppCompatTheme_windowActionBar;
        if (!typedArrayObtainStyledAttributes.hasValue(i2)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
            z(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i2, false)) {
            z(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            z(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            z(10);
        }
        this.D = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        Y();
        this.f89f.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f88e);
        if (this.E) {
            viewGroup = this.C ? (ViewGroup) layoutInflaterFrom.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.D) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.B = false;
            this.A = false;
        } else if (this.A) {
            TypedValue typedValue = new TypedValue();
            this.f88e.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.d.d(this.f88e, typedValue.resourceId) : this.f88e).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
            x xVar = (x) viewGroup.findViewById(R.id.decor_content_parent);
            this.l = xVar;
            xVar.setWindowCallback(g0());
            if (this.B) {
                this.l.h(109);
            }
            if (this.y) {
                this.l.h(2);
            }
            if (this.z) {
                this.l.h(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.A + ", windowActionBarOverlay: " + this.B + ", android:windowIsFloating: " + this.D + ", windowActionModeOverlay: " + this.C + ", windowNoTitle: " + this.E + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new c());
        } else if (viewGroup instanceof b0) {
            ((b0) viewGroup).setOnFitSystemWindowsListener(new d());
        }
        if (this.l == null) {
            this.w = (TextView) viewGroup.findViewById(R.id.title);
        }
        w0.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f89f.findViewById(android.R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(android.R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f89f.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new e());
        return viewGroup;
    }

    private void X() {
        if (this.u) {
            return;
        }
        this.v = S();
        CharSequence charSequenceF0 = f0();
        if (!TextUtils.isEmpty(charSequenceF0)) {
            x xVar = this.l;
            if (xVar != null) {
                xVar.setWindowTitle(charSequenceF0);
            } else if (z0() != null) {
                z0().t(charSequenceF0);
            } else {
                TextView textView = this.w;
                if (textView != null) {
                    textView.setText(charSequenceF0);
                }
            }
        }
        J();
        x0(this.v);
        this.u = true;
        PanelFeatureState panelFeatureStateE0 = e0(0, false);
        if (this.Q) {
            return;
        }
        if (panelFeatureStateE0 == null || panelFeatureStateE0.j == null) {
            l0(108);
        }
    }

    private void Y() {
        if (this.f89f == null) {
            Object obj = this.f87d;
            if (obj instanceof Activity) {
                K(((Activity) obj).getWindow());
            }
        }
        if (this.f89f == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private static Configuration a0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = BitmapDescriptorFactory.HUE_RED;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f2 = configuration.fontScale;
            float f3 = configuration2.fontScale;
            if (f2 != f3) {
                configuration3.fontScale = f3;
            }
            int i2 = configuration.mcc;
            int i3 = configuration2.mcc;
            if (i2 != i3) {
                configuration3.mcc = i3;
            }
            int i4 = configuration.mnc;
            int i5 = configuration2.mnc;
            if (i4 != i5) {
                configuration3.mnc = i5;
            }
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 24) {
                m.a(configuration, configuration2, configuration3);
            } else if (!androidx.core.util.c.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i7 = configuration.touchscreen;
            int i8 = configuration2.touchscreen;
            if (i7 != i8) {
                configuration3.touchscreen = i8;
            }
            int i9 = configuration.keyboard;
            int i10 = configuration2.keyboard;
            if (i9 != i10) {
                configuration3.keyboard = i10;
            }
            int i11 = configuration.keyboardHidden;
            int i12 = configuration2.keyboardHidden;
            if (i11 != i12) {
                configuration3.keyboardHidden = i12;
            }
            int i13 = configuration.navigation;
            int i14 = configuration2.navigation;
            if (i13 != i14) {
                configuration3.navigation = i14;
            }
            int i15 = configuration.navigationHidden;
            int i16 = configuration2.navigationHidden;
            if (i15 != i16) {
                configuration3.navigationHidden = i16;
            }
            int i17 = configuration.orientation;
            int i18 = configuration2.orientation;
            if (i17 != i18) {
                configuration3.orientation = i18;
            }
            int i19 = configuration.screenLayout & 15;
            int i20 = configuration2.screenLayout;
            if (i19 != (i20 & 15)) {
                configuration3.screenLayout |= i20 & 15;
            }
            int i21 = configuration.screenLayout & 192;
            int i22 = configuration2.screenLayout;
            if (i21 != (i22 & 192)) {
                configuration3.screenLayout |= i22 & 192;
            }
            int i23 = configuration.screenLayout & 48;
            int i24 = configuration2.screenLayout;
            if (i23 != (i24 & 48)) {
                configuration3.screenLayout |= i24 & 48;
            }
            int i25 = configuration.screenLayout & DTrees.PREDICT_MASK;
            int i26 = configuration2.screenLayout;
            if (i25 != (i26 & DTrees.PREDICT_MASK)) {
                configuration3.screenLayout |= i26 & DTrees.PREDICT_MASK;
            }
            if (i6 >= 26) {
                n.a(configuration, configuration2, configuration3);
            }
            int i27 = configuration.uiMode & 15;
            int i28 = configuration2.uiMode;
            if (i27 != (i28 & 15)) {
                configuration3.uiMode |= i28 & 15;
            }
            int i29 = configuration.uiMode & 48;
            int i30 = configuration2.uiMode;
            if (i29 != (i30 & 48)) {
                configuration3.uiMode |= i30 & 48;
            }
            int i31 = configuration.screenWidthDp;
            int i32 = configuration2.screenWidthDp;
            if (i31 != i32) {
                configuration3.screenWidthDp = i32;
            }
            int i33 = configuration.screenHeightDp;
            int i34 = configuration2.screenHeightDp;
            if (i33 != i34) {
                configuration3.screenHeightDp = i34;
            }
            int i35 = configuration.smallestScreenWidthDp;
            int i36 = configuration2.smallestScreenWidthDp;
            if (i35 != i36) {
                configuration3.smallestScreenWidthDp = i36;
            }
            if (i6 >= 17) {
                k.b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    private q c0(Context context) {
        if (this.Y == null) {
            this.Y = new p(context);
        }
        return this.Y;
    }

    private q d0(Context context) {
        if (this.X == null) {
            this.X = new r(androidx.appcompat.app.n.a(context));
        }
        return this.X;
    }

    private void h0() {
        X();
        if (this.A && this.i == null) {
            Object obj = this.f87d;
            if (obj instanceof Activity) {
                this.i = new androidx.appcompat.app.o((Activity) this.f87d, this.B);
            } else if (obj instanceof Dialog) {
                this.i = new androidx.appcompat.app.o((Dialog) this.f87d);
            }
            androidx.appcompat.app.a aVar = this.i;
            if (aVar != null) {
                aVar.r(this.c0);
            }
        }
    }

    private boolean i0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.i;
        if (view != null) {
            panelFeatureState.f97h = view;
            return true;
        }
        if (panelFeatureState.j == null) {
            return false;
        }
        if (this.n == null) {
            this.n = new u();
        }
        View view2 = (View) panelFeatureState.a(this.n);
        panelFeatureState.f97h = view2;
        return view2 != null;
    }

    private boolean j0(PanelFeatureState panelFeatureState) {
        panelFeatureState.d(b0());
        panelFeatureState.f96g = new t(panelFeatureState.l);
        panelFeatureState.c = 81;
        return true;
    }

    private boolean k0(PanelFeatureState panelFeatureState) {
        Context context = this.f88e;
        int i2 = panelFeatureState.f92a;
        if ((i2 == 0 || i2 == 108) && this.l != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                androidx.appcompat.d.d dVar = new androidx.appcompat.d.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
        gVar.setCallback(this);
        panelFeatureState.c(gVar);
        return true;
    }

    private void l0(int i2) {
        this.a0 = (1 << i2) | this.a0;
        if (this.Z) {
            return;
        }
        ViewCompat.postOnAnimation(this.f89f.getDecorView(), this.b0);
        this.Z = true;
    }

    private boolean m0() {
        int i2;
        if (!this.W && (this.f87d instanceof Activity)) {
            PackageManager packageManager = this.f88e.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 29) {
                    i2 = 269221888;
                } else {
                    i2 = i3 >= 24 ? 786432 : 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f88e, this.f87d.getClass()), i2);
                this.V = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                this.V = false;
            }
        }
        this.W = true;
        return this.V;
    }

    private boolean r0(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState panelFeatureStateE0 = e0(i2, true);
        if (panelFeatureStateE0.o) {
            return false;
        }
        return B0(panelFeatureStateE0, keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    private boolean u0(int i2, KeyEvent keyEvent) {
        boolean zB0;
        x xVar;
        if (this.o != null) {
            return false;
        }
        boolean zB = true;
        PanelFeatureState panelFeatureStateE0 = e0(i2, true);
        if (i2 != 0 || (xVar = this.l) == null || !xVar.a() || ViewConfiguration.get(this.f88e).hasPermanentMenuKey()) {
            boolean z = panelFeatureStateE0.o;
            if (z || panelFeatureStateE0.n) {
                Q(panelFeatureStateE0, true);
                zB = z;
            } else if (panelFeatureStateE0.m) {
                if (panelFeatureStateE0.r) {
                    panelFeatureStateE0.m = false;
                    zB0 = B0(panelFeatureStateE0, keyEvent);
                } else {
                    zB0 = true;
                }
                if (zB0) {
                    y0(panelFeatureStateE0, keyEvent);
                } else {
                    zB = false;
                }
            } else {
                zB = false;
            }
        } else if (this.l.e()) {
            zB = this.l.b();
        } else if (this.Q || !B0(panelFeatureStateE0, keyEvent)) {
            zB = false;
        } else {
            zB = this.l.c();
        }
        if (zB) {
            AudioManager audioManager = (AudioManager) this.f88e.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return zB;
    }

    private void y0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.o || this.Q) {
            return;
        }
        if (panelFeatureState.f92a == 0) {
            if ((this.f88e.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackG0 = g0();
        if (callbackG0 != null && !callbackG0.onMenuOpened(panelFeatureState.f92a, panelFeatureState.j)) {
            Q(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f88e.getSystemService("window");
        if (windowManager != null && B0(panelFeatureState, keyEvent)) {
            ViewGroup viewGroup = panelFeatureState.f96g;
            if (viewGroup != null && !panelFeatureState.q) {
                View view = panelFeatureState.i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                }
                panelFeatureState.n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f93d, panelFeatureState.f94e, 1002, 8519680, -3);
                layoutParams2.gravity = panelFeatureState.c;
                layoutParams2.windowAnimations = panelFeatureState.f95f;
                windowManager.addView(panelFeatureState.f96g, layoutParams2);
                panelFeatureState.o = true;
            }
            if (viewGroup == null) {
                if (!j0(panelFeatureState) || panelFeatureState.f96g == null) {
                    return;
                }
            } else if (panelFeatureState.q && viewGroup.getChildCount() > 0) {
                panelFeatureState.f96g.removeAllViews();
            }
            if (!i0(panelFeatureState) || !panelFeatureState.b()) {
                panelFeatureState.q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f97h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.f96g.setBackgroundResource(panelFeatureState.b);
            ViewParent parent = panelFeatureState.f97h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(panelFeatureState.f97h);
            }
            panelFeatureState.f96g.addView(panelFeatureState.f97h, layoutParams3);
            if (!panelFeatureState.f97h.hasFocus()) {
                panelFeatureState.f97h.requestFocus();
            }
            i2 = -2;
            panelFeatureState.n = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.f93d, panelFeatureState.f94e, 1002, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.c;
            layoutParams4.windowAnimations = panelFeatureState.f95f;
            windowManager.addView(panelFeatureState.f96g, layoutParams4);
            panelFeatureState.o = true;
        }
    }

    @Override // androidx.appcompat.app.f
    public void A(int i2) {
        X();
        ViewGroup viewGroup = (ViewGroup) this.v.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f88e).inflate(i2, viewGroup);
        this.f90g.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void B(View view) {
        X();
        ViewGroup viewGroup = (ViewGroup) this.v.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f90g.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void C(View view, ViewGroup.LayoutParams layoutParams) {
        X();
        ViewGroup viewGroup = (ViewGroup) this.v.findViewById(android.R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f90g.a().onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void D(Toolbar toolbar) {
        if (this.f87d instanceof Activity) {
            androidx.appcompat.app.a aVarM = m();
            if (aVarM instanceof androidx.appcompat.app.o) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.j = null;
            if (aVarM != null) {
                aVarM.n();
            }
            if (toolbar != null) {
                androidx.appcompat.app.l lVar = new androidx.appcompat.app.l(toolbar, f0(), this.f90g);
                this.i = lVar;
                this.f89f.setCallback(lVar.w());
            } else {
                this.i = null;
                this.f89f.setCallback(this.f90g);
            }
            o();
        }
    }

    @Override // androidx.appcompat.app.f
    public void E(int i2) {
        this.U = i2;
    }

    final boolean E0() {
        ViewGroup viewGroup;
        return this.u && (viewGroup = this.v) != null && ViewCompat.isLaidOut(viewGroup);
    }

    @Override // androidx.appcompat.app.f
    public final void F(CharSequence charSequence) {
        this.k = charSequence;
        x xVar = this.l;
        if (xVar != null) {
            xVar.setWindowTitle(charSequence);
            return;
        }
        if (z0() != null) {
            z0().t(charSequence);
            return;
        }
        TextView textView = this.w;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.d.b G(androidx.appcompat.d.b.a aVar) {
        androidx.appcompat.app.e eVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.d.b bVar = this.o;
        if (bVar != null) {
            bVar.a();
        }
        j jVar = new j(aVar);
        androidx.appcompat.app.a aVarM = m();
        if (aVarM != null) {
            androidx.appcompat.d.b bVarU = aVarM.u(jVar);
            this.o = bVarU;
            if (bVarU != null && (eVar = this.f91h) != null) {
                eVar.onSupportActionModeStarted(bVarU);
            }
        }
        if (this.o == null) {
            this.o = G0(jVar);
        }
        return this.o;
    }

    androidx.appcompat.d.b G0(androidx.appcompat.d.b.a aVar) {
        androidx.appcompat.d.b bVarOnWindowStartingSupportActionMode;
        Context dVar;
        androidx.appcompat.app.e eVar;
        W();
        androidx.appcompat.d.b bVar = this.o;
        if (bVar != null) {
            bVar.a();
        }
        if (!(aVar instanceof j)) {
            aVar = new j(aVar);
        }
        androidx.appcompat.app.e eVar2 = this.f91h;
        if (eVar2 == null || this.Q) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = eVar2.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.o = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.p == null) {
                if (this.D) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f88e.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f88e.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new androidx.appcompat.d.d(this.f88e, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f88e;
                    }
                    this.p = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    this.q = popupWindow;
                    androidx.core.widget.h.b(popupWindow, 2);
                    this.q.setContentView(this.p);
                    this.q.setWidth(-1);
                    dVar.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    this.p.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.q.setHeight(-2);
                    this.r = new f();
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.v.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(b0()));
                        this.p = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.p != null) {
                W();
                this.p.k();
                androidx.appcompat.d.e eVar3 = new androidx.appcompat.d.e(this.p.getContext(), this.p, aVar, this.q == null);
                if (aVar.b(eVar3, eVar3.c())) {
                    eVar3.i();
                    this.p.h(eVar3);
                    this.o = eVar3;
                    if (E0()) {
                        this.p.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this.p).alpha(1.0f);
                        this.s = viewPropertyAnimatorCompatAlpha;
                        viewPropertyAnimatorCompatAlpha.setListener(new g());
                    } else {
                        this.p.setAlpha(1.0f);
                        this.p.setVisibility(0);
                        this.p.sendAccessibilityEvent(32);
                        if (this.p.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.p.getParent());
                        }
                    }
                    if (this.q != null) {
                        this.f89f.getDecorView().post(this.r);
                    }
                } else {
                    this.o = null;
                }
            }
        }
        androidx.appcompat.d.b bVar2 = this.o;
        if (bVar2 != null && (eVar = this.f91h) != null) {
            eVar.onSupportActionModeStarted(bVar2);
        }
        return this.o;
    }

    public boolean H() {
        return I(true);
    }

    final int L0(WindowInsetsCompat windowInsetsCompat, Rect rect) {
        int systemWindowInsetTop;
        boolean z;
        boolean z2;
        if (windowInsetsCompat != null) {
            systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        } else {
            systemWindowInsetTop = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.p;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.p.getLayoutParams();
            boolean z3 = true;
            if (this.p.isShown()) {
                if (this.d0 == null) {
                    this.d0 = new Rect();
                    this.e0 = new Rect();
                }
                Rect rect2 = this.d0;
                Rect rect3 = this.e0;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                }
                w0.a(this.v, rect2, rect3);
                int i2 = rect2.top;
                int i3 = rect2.left;
                int i4 = rect2.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.v);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i2;
                    marginLayoutParams.leftMargin = i3;
                    marginLayoutParams.rightMargin = i4;
                    z2 = true;
                }
                if (i2 <= 0 || this.x != null) {
                    View view = this.x;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            this.x.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f88e);
                    this.x = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    this.v.addView(this.x, -1, layoutParams);
                }
                View view3 = this.x;
                z3 = view3 != null;
                if (z3 && view3.getVisibility() != 0) {
                    M0(this.x);
                }
                if (!this.C && z3) {
                    systemWindowInsetTop = 0;
                }
                z = z3;
                z3 = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                z3 = false;
            }
            if (z3) {
                this.p.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.x;
        if (view4 != null) {
            view4.setVisibility(z ? 0 : 8);
        }
        return systemWindowInsetTop;
    }

    void M(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.G;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.o) && !this.Q) {
            this.f90g.a().onPanelClosed(i2, menu);
        }
    }

    void N(androidx.appcompat.view.menu.g gVar) {
        if (this.F) {
            return;
        }
        this.F = true;
        this.l.i();
        Window.Callback callbackG0 = g0();
        if (callbackG0 != null && !this.Q) {
            callbackG0.onPanelClosed(108, gVar);
        }
        this.F = false;
    }

    void P(int i2) {
        Q(e0(i2, true), true);
    }

    void Q(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        x xVar;
        if (z && panelFeatureState.f92a == 0 && (xVar = this.l) != null && xVar.e()) {
            N(panelFeatureState.j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f88e.getSystemService("window");
        if (windowManager != null && panelFeatureState.o && (viewGroup = panelFeatureState.f96g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                M(panelFeatureState.f92a, panelFeatureState, null);
            }
        }
        panelFeatureState.m = false;
        panelFeatureState.n = false;
        panelFeatureState.o = false;
        panelFeatureState.f97h = null;
        panelFeatureState.q = true;
        if (this.H == panelFeatureState) {
            this.H = null;
        }
    }

    void T() {
        androidx.appcompat.view.menu.g gVar;
        x xVar = this.l;
        if (xVar != null) {
            xVar.i();
        }
        if (this.q != null) {
            this.f89f.getDecorView().removeCallbacks(this.r);
            if (this.q.isShowing()) {
                try {
                    this.q.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.q = null;
        }
        W();
        PanelFeatureState panelFeatureStateE0 = e0(0, false);
        if (panelFeatureStateE0 == null || (gVar = panelFeatureStateE0.j) == null) {
            return;
        }
        gVar.close();
    }

    boolean U(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f87d;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof androidx.appcompat.app.g)) && (decorView = this.f89f.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f90g.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? q0(keyCode, keyEvent) : t0(keyCode, keyEvent);
    }

    void V(int i2) {
        PanelFeatureState panelFeatureStateE0;
        PanelFeatureState panelFeatureStateE1 = e0(i2, true);
        if (panelFeatureStateE1.j != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateE1.j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateE1.s = bundle;
            }
            panelFeatureStateE1.j.stopDispatchingItemsChanged();
            panelFeatureStateE1.j.clear();
        }
        panelFeatureStateE1.r = true;
        panelFeatureStateE1.q = true;
        if ((i2 != 108 && i2 != 0) || this.l == null || (panelFeatureStateE0 = e0(0, false)) == null) {
            return;
        }
        panelFeatureStateE0.m = false;
        B0(panelFeatureStateE0, null);
    }

    void W() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.s;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    PanelFeatureState Z(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.G;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.f
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        X();
        ((ViewGroup) this.v.findViewById(android.R.id.content)).addView(view, layoutParams);
        this.f90g.a().onContentChanged();
    }

    final Context b0() {
        androidx.appcompat.app.a aVarM = m();
        Context contextK = aVarM != null ? aVarM.k() : null;
        return contextK == null ? this.f88e : contextK;
    }

    @Override // androidx.appcompat.app.f
    public Context d(Context context) {
        this.K = true;
        int iO0 = o0(context, L());
        Configuration configurationA0 = null;
        if (l0 && (context instanceof ContextThemeWrapper)) {
            try {
                s.a((ContextThemeWrapper) context, R(context, iO0, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.d.d) {
            try {
                ((androidx.appcompat.d.d) context).a(R(context, iO0, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!k0) {
            super.d(context);
            return context;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration = new Configuration();
            configuration.uiMode = -1;
            configuration.fontScale = BitmapDescriptorFactory.HUE_RED;
            Configuration configuration2 = k.a(context, configuration).getResources().getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            configuration2.uiMode = configuration3.uiMode;
            if (!configuration2.equals(configuration3)) {
                configurationA0 = a0(configuration2, configuration3);
            }
        }
        Configuration configurationR = R(context, iO0, configurationA0);
        androidx.appcompat.d.d dVar = new androidx.appcompat.d.d(context, R.style.Theme_AppCompat_Empty);
        dVar.a(configurationR);
        boolean z = false;
        try {
            z = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z) {
            androidx.core.a.f.f.d.a(dVar.getTheme());
        }
        super.d(dVar);
        return dVar;
    }

    protected PanelFeatureState e0(int i2, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.G;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.G = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    final CharSequence f0() {
        Object obj = this.f87d;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.app.f
    public View g(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        boolean zF0 = false;
        if (this.f0 == null) {
            String string = this.f88e.obtainStyledAttributes(R.styleable.AppCompatTheme).getString(R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f0 = new androidx.appcompat.app.i();
            } else {
                try {
                    this.f0 = (androidx.appcompat.app.i) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f0 = new androidx.appcompat.app.i();
                }
            }
        }
        boolean z2 = i0;
        if (z2) {
            if (this.g0 == null) {
                this.g0 = new androidx.appcompat.app.j();
            }
            if (this.g0.a(attributeSet)) {
                z = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zF0 = F0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zF0 = true;
                }
                z = zF0;
            }
        } else {
            z = false;
        }
        return this.f0.createView(view, str, context, attributeSet, z, z2, true, v0.b());
    }

    final Window.Callback g0() {
        return this.f89f.getCallback();
    }

    @Override // androidx.appcompat.app.f
    public <T extends View> T h(int i2) {
        X();
        return (T) this.f89f.findViewById(i2);
    }

    @Override // androidx.appcompat.app.f
    public final androidx.appcompat.app.b j() {
        return new h(this);
    }

    @Override // androidx.appcompat.app.f
    public int k() {
        return this.T;
    }

    @Override // androidx.appcompat.app.f
    public MenuInflater l() {
        if (this.j == null) {
            h0();
            androidx.appcompat.app.a aVar = this.i;
            this.j = new androidx.appcompat.d.g(aVar != null ? aVar.k() : this.f88e);
        }
        return this.j;
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.app.a m() {
        h0();
        return this.i;
    }

    @Override // androidx.appcompat.app.f
    public void n() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f88e);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    public boolean n0() {
        return this.t;
    }

    @Override // androidx.appcompat.app.f
    public void o() {
        androidx.appcompat.app.a aVarM = m();
        if (aVarM == null || !aVarM.l()) {
            l0(0);
        }
    }

    int o0(Context context, int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != -1) {
            if (i2 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return d0(context).c();
                }
                return -1;
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3) {
                    return c0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i2;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return g(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateZ;
        Window.Callback callbackG0 = g0();
        if (callbackG0 == null || this.Q || (panelFeatureStateZ = Z(gVar.getRootMenu())) == null) {
            return false;
        }
        return callbackG0.onMenuItemSelected(panelFeatureStateZ.f92a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void onMenuModeChange(androidx.appcompat.view.menu.g gVar) {
        C0(true);
    }

    @Override // androidx.appcompat.app.f
    public void p(Configuration configuration) {
        androidx.appcompat.app.a aVarM;
        if (this.A && this.u && (aVarM = m()) != null) {
            aVarM.m(configuration);
        }
        androidx.appcompat.widget.h.b().g(this.f88e);
        I(false);
    }

    boolean p0() {
        androidx.appcompat.d.b bVar = this.o;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        androidx.appcompat.app.a aVarM = m();
        return aVarM != null && aVarM.h();
    }

    @Override // androidx.appcompat.app.f
    public void q(Bundle bundle) {
        this.K = true;
        I(false);
        Y();
        Object obj = this.f87d;
        if (obj instanceof Activity) {
            String strC = null;
            try {
                strC = androidx.core.app.g.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (strC != null) {
                androidx.appcompat.app.a aVarZ0 = z0();
                if (aVarZ0 == null) {
                    this.c0 = true;
                } else {
                    aVarZ0.r(true);
                }
            }
            androidx.appcompat.app.f.a(this);
        }
        this.M = true;
    }

    boolean q0(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.I = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            r0(0, keyEvent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0048  */
    @Override // androidx.appcompat.app.f
    public void r() {
        if (this.f87d instanceof Activity) {
            androidx.appcompat.app.f.x(this);
        }
        if (this.Z) {
            this.f89f.getDecorView().removeCallbacks(this.b0);
        }
        this.N = false;
        this.Q = true;
        if (this.T != -100) {
            Object obj = this.f87d;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                h0.put(this.f87d.getClass().getName(), Integer.valueOf(this.T));
            } else {
                h0.remove(this.f87d.getClass().getName());
            }
        } else {
            h0.remove(this.f87d.getClass().getName());
        }
        androidx.appcompat.app.a aVar = this.i;
        if (aVar != null) {
            aVar.n();
        }
        O();
    }

    @Override // androidx.appcompat.app.f
    public void s(Bundle bundle) {
        X();
    }

    boolean s0(int i2, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarM = m();
        if (aVarM != null && aVarM.o(i2, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.H;
        if (panelFeatureState != null && A0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.H;
            if (panelFeatureState2 != null) {
                panelFeatureState2.n = true;
            }
            return true;
        }
        if (this.H == null) {
            PanelFeatureState panelFeatureStateE0 = e0(0, true);
            B0(panelFeatureStateE0, keyEvent);
            boolean zA0 = A0(panelFeatureStateE0, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateE0.m = false;
            if (zA0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void t() {
        androidx.appcompat.app.a aVarM = m();
        if (aVarM != null) {
            aVarM.s(true);
        }
    }

    boolean t0(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.I;
            this.I = false;
            PanelFeatureState panelFeatureStateE0 = e0(0, false);
            if (panelFeatureStateE0 != null && panelFeatureStateE0.o) {
                if (!z) {
                    Q(panelFeatureStateE0, true);
                }
                return true;
            }
            if (p0()) {
                return true;
            }
        } else if (i2 == 82) {
            u0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void u(Bundle bundle) {
    }

    @Override // androidx.appcompat.app.f
    public void v() {
        this.N = true;
        H();
    }

    void v0(int i2) {
        androidx.appcompat.app.a aVarM;
        if (i2 != 108 || (aVarM = m()) == null) {
            return;
        }
        aVarM.i(true);
    }

    @Override // androidx.appcompat.app.f
    public void w() {
        this.N = false;
        androidx.appcompat.app.a aVarM = m();
        if (aVarM != null) {
            aVarM.s(false);
        }
    }

    void w0(int i2) {
        if (i2 == 108) {
            androidx.appcompat.app.a aVarM = m();
            if (aVarM != null) {
                aVarM.i(false);
                return;
            }
            return;
        }
        if (i2 == 0) {
            PanelFeatureState panelFeatureStateE0 = e0(i2, true);
            if (panelFeatureStateE0.o) {
                Q(panelFeatureStateE0, false);
            }
        }
    }

    void x0(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.f
    public boolean z(int i2) {
        int iD0 = D0(i2);
        if (this.E && iD0 == 108) {
            return false;
        }
        if (this.A && iD0 == 1) {
            this.A = false;
        }
        if (iD0 == 1) {
            H0();
            this.E = true;
            return true;
        }
        if (iD0 == 2) {
            H0();
            this.y = true;
            return true;
        }
        if (iD0 == 5) {
            H0();
            this.z = true;
            return true;
        }
        if (iD0 == 10) {
            H0();
            this.C = true;
            return true;
        }
        if (iD0 == 108) {
            H0();
            this.A = true;
            return true;
        }
        if (iD0 != 109) {
            return this.f89f.requestFeature(iD0);
        }
        H0();
        this.B = true;
        return true;
    }

    final androidx.appcompat.app.a z0() {
        return this.i;
    }

    AppCompatDelegateImpl(Dialog dialog, androidx.appcompat.app.e eVar) {
        this(dialog.getContext(), dialog.getWindow(), eVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.e eVar, Object obj) {
        androidx.collection.g<String, Integer> gVar;
        Integer num;
        androidx.appcompat.app.d dVarI0;
        this.s = null;
        this.t = true;
        this.T = -100;
        this.b0 = new b();
        this.f88e = context;
        this.f91h = eVar;
        this.f87d = obj;
        if ((obj instanceof Dialog) && (dVarI0 = I0()) != null) {
            this.T = dVarI0.getDelegate().k();
        }
        if (this.T == -100 && (num = (gVar = h0).get(obj.getClass().getName())) != null) {
            this.T = num.intValue();
            gVar.remove(obj.getClass().getName());
        }
        if (window != null) {
            K(window);
        }
        androidx.appcompat.widget.h.h();
    }

    class o extends androidx.appcompat.d.i {
        o(Window.Callback callback) {
            super(callback);
        }

        final ActionMode b(ActionMode.Callback callback) {
            androidx.appcompat.d.f.a aVar = new androidx.appcompat.d.f.a(AppCompatDelegateImpl.this.f88e, callback);
            androidx.appcompat.d.b bVarG = AppCompatDelegateImpl.this.G(aVar);
            if (bVarG != null) {
                return aVar.e(bVarG);
            }
            return null;
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.U(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.s0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.v0(i);
            return true;
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl.this.w0(i);
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.setOverrideVisibleItems(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (gVar != null) {
                gVar.setOverrideVisibleItems(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            androidx.appcompat.view.menu.g gVar;
            PanelFeatureState panelFeatureStateE0 = AppCompatDelegateImpl.this.e0(0, true);
            if (panelFeatureStateE0 == null || (gVar = panelFeatureStateE0.j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, gVar, i);
            }
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return AppCompatDelegateImpl.this.n0() ? b(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.d.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (AppCompatDelegateImpl.this.n0() && i == 0) {
                return b(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }
}
