package cn.mucang.android.ui.widget.pulltorefresh;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import cn.mucang.android.framework.core.R;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* JADX INFO: loaded from: classes4.dex */
public abstract class PullToRefreshBase<T extends View> extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f9030a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f9031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f9032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private State f9034g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Mode f9035h;
    private Mode i;
    T j;
    private FrameLayout k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private Interpolator q;
    private AnimationStyle r;
    private cn.mucang.android.ui.widget.pulltorefresh.e s;
    private cn.mucang.android.ui.widget.pulltorefresh.e t;
    private h<T> u;
    private g<T> v;
    private f<T> w;
    private d x;
    private PullToRefreshBase<T>.j y;

    public enum AnimationStyle {
        ROTATE,
        FLIP;

        static AnimationStyle getDefault() {
            return ROTATE;
        }

        static AnimationStyle mapIntToValue(int i) {
            return i != 1 ? ROTATE : FLIP;
        }

        cn.mucang.android.ui.widget.pulltorefresh.e createLoadingLayout(Context context, Mode mode, Orientation orientation, TypedArray typedArray) {
            return c.f9039d[ordinal()] != 2 ? new cn.mucang.android.ui.widget.pulltorefresh.i(context, mode, orientation, typedArray) : new cn.mucang.android.ui.widget.pulltorefresh.b(context, mode, orientation, typedArray);
        }
    }

    public enum Mode {
        DISABLED(0),
        PULL_FROM_START(1),
        PULL_FROM_END(2),
        BOTH(3),
        MANUAL_REFRESH_ONLY(4);

        public static Mode PULL_DOWN_TO_REFRESH;
        public static Mode PULL_UP_TO_REFRESH;
        private int mIntValue;

        static {
            Mode mode = PULL_FROM_START;
            Mode mode2 = PULL_FROM_END;
            PULL_DOWN_TO_REFRESH = mode;
            PULL_UP_TO_REFRESH = mode2;
        }

        Mode(int i) {
            this.mIntValue = i;
        }

        static Mode getDefault() {
            return PULL_FROM_START;
        }

        static Mode mapIntToValue(int i) {
            for (Mode mode : values()) {
                if (i == mode.getIntValue()) {
                    return mode;
                }
            }
            return getDefault();
        }

        int getIntValue() {
            return this.mIntValue;
        }

        boolean permitsPullToRefresh() {
            return (this == DISABLED || this == MANUAL_REFRESH_ONLY) ? false : true;
        }

        public boolean showFooterLoadingLayout() {
            return this == PULL_FROM_END || this == BOTH || this == MANUAL_REFRESH_ONLY;
        }

        public boolean showHeaderLoadingLayout() {
            return this == PULL_FROM_START || this == BOTH;
        }
    }

    public enum Orientation {
        VERTICAL,
        HORIZONTAL
    }

    public enum State {
        RESET(0),
        PULL_TO_REFRESH(1),
        RELEASE_TO_REFRESH(2),
        REFRESHING(8),
        MANUAL_REFRESHING(9),
        OVERSCROLLING(16);

        private int mIntValue;

        State(int i) {
            this.mIntValue = i;
        }

        static State mapIntToValue(int i) {
            for (State state : values()) {
                if (i == state.getIntValue()) {
                    return state;
                }
            }
            return RESET;
        }

        int getIntValue() {
            return this.mIntValue;
        }
    }

    class a implements i {
        a() {
        }

        @Override // cn.mucang.android.ui.widget.pulltorefresh.PullToRefreshBase.i
        public void a() {
            PullToRefreshBase.this.f();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PullToRefreshBase.this.requestLayout();
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9038a;
        static final /* synthetic */ int[] b;
        static final /* synthetic */ int[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final /* synthetic */ int[] f9039d;

        static {
            int[] iArr = new int[AnimationStyle.values().length];
            f9039d = iArr;
            try {
                iArr[AnimationStyle.ROTATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9039d[AnimationStyle.FLIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            c = iArr2;
            try {
                iArr2[Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                c[Mode.MANUAL_REFRESH_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                c[Mode.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[State.values().length];
            b = iArr3;
            try {
                iArr3[State.RESET.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[State.PULL_TO_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[State.RELEASE_TO_REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[State.REFRESHING.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[State.MANUAL_REFRESHING.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[State.OVERSCROLLING.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[Orientation.values().length];
            f9038a = iArr4;
            try {
                iArr4[Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f9038a[Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public interface d {
        void a(int i, int i2);
    }

    public interface e {
        void a();
    }

    public interface f<V extends View> {
        void a(PullToRefreshBase<V> pullToRefreshBase, State state, Mode mode);
    }

    public interface g<V extends View> {
        void a(PullToRefreshBase<V> pullToRefreshBase);

        void b(PullToRefreshBase<V> pullToRefreshBase);
    }

    public interface h<V extends View> {
        void a(PullToRefreshBase<V> pullToRefreshBase);
    }

    interface i {
        void a();
    }

    final class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Interpolator f9040a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f9041d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private i f9042e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f9043f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f9044g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f9045h = -1;

        public j(int i, int i2, long j, i iVar) {
            this.c = i;
            this.b = i2;
            this.f9040a = PullToRefreshBase.this.q;
            this.f9041d = j;
            this.f9042e = iVar;
        }

        public void a() {
            this.f9043f = false;
            PullToRefreshBase.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9044g == -1) {
                this.f9044g = System.currentTimeMillis();
            } else {
                int iRound = this.c - Math.round((this.c - this.b) * this.f9040a.getInterpolation(Math.max(Math.min(((System.currentTimeMillis() - this.f9044g) * 1000) / this.f9041d, 1000L), 0L) / 1000.0f));
                this.f9045h = iRound;
                PullToRefreshBase.this.setHeaderScroll(iRound);
            }
            if (this.f9043f && this.b != this.f9045h) {
                k.a(PullToRefreshBase.this, this);
                return;
            }
            i iVar = this.f9042e;
            if (iVar != null) {
                iVar.a();
            }
        }
    }

    public PullToRefreshBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9033f = false;
        this.f9034g = State.RESET;
        this.f9035h = Mode.getDefault();
        this.l = true;
        this.m = false;
        this.n = true;
        this.o = true;
        this.p = true;
        this.r = AnimationStyle.getDefault();
        m(context, attributeSet, 0);
    }

    private final void F(int i2, long j2) {
        G(i2, j2, 0L, null);
    }

    private final void G(int i2, long j2, long j3, i iVar) {
        PullToRefreshBase<T>.j jVar = this.y;
        if (jVar != null) {
            jVar.a();
        }
        int scrollY = c.f9038a[getPullToRefreshScrollDirection().ordinal()] != 1 ? getScrollY() : getScrollX();
        if (scrollY != i2) {
            if (this.q == null) {
                this.q = new DecelerateInterpolator();
            }
            PullToRefreshBase<T>.j jVar2 = new j(scrollY, i2, j2, iVar);
            this.y = jVar2;
            if (j3 > 0) {
                postDelayed(jVar2, j3);
            } else {
                post(jVar2);
            }
        }
    }

    private void c(Context context, T t) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.k = frameLayout;
        frameLayout.addView(t, -1, -1);
        e(this.k, new LinearLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        h<T> hVar = this.u;
        if (hVar != null) {
            hVar.a(this);
            return;
        }
        g<T> gVar = this.v;
        if (gVar != null) {
            Mode mode = this.i;
            if (mode == Mode.PULL_FROM_START) {
                gVar.a(this);
            } else if (mode == Mode.PULL_FROM_END) {
                gVar.b(this);
            }
        }
    }

    private LinearLayout.LayoutParams getLoadingLayoutLayoutParams() {
        return c.f9038a[getPullToRefreshScrollDirection().ordinal()] != 1 ? new LinearLayout.LayoutParams(-1, -2) : new LinearLayout.LayoutParams(-2, -1);
    }

    private int getMaximumPullScroll() {
        return c.f9038a[getPullToRefreshScrollDirection().ordinal()] != 1 ? Math.round(getHeight() / 2.0f) : Math.round(getWidth() / 2.0f);
    }

    private void m(Context context, AttributeSet attributeSet, int i2) {
        if (c.f9038a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            setOrientation(1);
        } else {
            setOrientation(0);
        }
        setGravity(17);
        this.f9030a = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PullToRefresh, 0, i2);
        int i3 = R.styleable.PullToRefresh_ptrMode;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            this.f9035h = Mode.mapIntToValue(typedArrayObtainStyledAttributes.getInteger(i3, 0));
        }
        int i4 = R.styleable.PullToRefresh_ptrAnimationStyle;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            this.r = AnimationStyle.mapIntToValue(typedArrayObtainStyledAttributes.getInteger(i4, 0));
        }
        T t = (T) i(context, attributeSet);
        this.j = t;
        c(context, t);
        this.s = g(context, Mode.PULL_FROM_START, typedArrayObtainStyledAttributes);
        this.t = g(context, Mode.PULL_FROM_END, typedArrayObtainStyledAttributes);
        int i5 = R.styleable.PullToRefresh_ptrRefreshableViewBackground;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(i5);
            if (drawable != null) {
                this.j.setBackgroundDrawable(drawable);
            }
        } else {
            int i6 = R.styleable.PullToRefresh_ptrAdapterViewBackground;
            if (typedArrayObtainStyledAttributes.hasValue(i6)) {
                cn.mucang.android.ui.widget.pulltorefresh.j.a("ptrAdapterViewBackground", "ptrRefreshableViewBackground");
                Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(i6);
                if (drawable2 != null) {
                    this.j.setBackgroundDrawable(drawable2);
                }
            }
        }
        int i7 = R.styleable.PullToRefresh_ptrOverScroll;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            this.o = typedArrayObtainStyledAttributes.getBoolean(i7, true);
        }
        int i8 = R.styleable.PullToRefresh_ptrScrollingWhileRefreshingEnabled;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            this.m = typedArrayObtainStyledAttributes.getBoolean(i8, false);
        }
        l(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        I();
    }

    private boolean p() {
        int i2 = c.c[this.f9035h.ordinal()];
        if (i2 == 1) {
            return q();
        }
        if (i2 != 2) {
            if (i2 != 4) {
                return false;
            }
            return q() || r();
        }
        boolean zR = r();
        if (this.s.b()) {
            this.s.o();
        }
        return zR;
    }

    private void z() {
        float f2;
        float f3;
        int iRound;
        int footerSize;
        if (c.f9038a[getPullToRefreshScrollDirection().ordinal()] != 1) {
            f2 = this.f9032e;
            f3 = this.c;
        } else {
            f2 = this.f9031d;
            f3 = this.b;
        }
        int[] iArr = c.c;
        if (iArr[this.i.ordinal()] != 1) {
            iRound = Math.round(Math.min(f2 - f3, BitmapDescriptorFactory.HUE_RED) / 2.0f);
            footerSize = getHeaderSize();
        } else {
            iRound = Math.round(Math.max(f2 - f3, BitmapDescriptorFactory.HUE_RED) / 2.0f);
            footerSize = getFooterSize();
        }
        setHeaderScroll(iRound);
        if (iRound == 0 || s()) {
            return;
        }
        float fAbs = Math.abs(iRound) / footerSize;
        if (iArr[this.i.ordinal()] != 1) {
            this.s.d(fAbs);
        } else {
            this.t.d(fAbs);
        }
        State state = this.f9034g;
        State state2 = State.PULL_TO_REFRESH;
        if (state != state2 && footerSize >= Math.abs(iRound)) {
            D(state2, new boolean[0]);
        } else {
            if (this.f9034g != state2 || footerSize >= Math.abs(iRound)) {
                return;
            }
            D(State.RELEASE_TO_REFRESH, new boolean[0]);
        }
    }

    protected final void A() {
        int maximumPullScroll = (int) (getMaximumPullScroll() * 1.2f);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int i2 = c.f9038a[getPullToRefreshScrollDirection().ordinal()];
        if (i2 == 1) {
            if (this.f9035h.showHeaderLoadingLayout()) {
                this.s.setWidth(maximumPullScroll);
                paddingLeft = -maximumPullScroll;
            } else {
                paddingLeft = 0;
            }
            if (this.f9035h.showFooterLoadingLayout()) {
                this.t.setWidth(maximumPullScroll);
                paddingRight = -maximumPullScroll;
            } else {
                paddingRight = 0;
            }
        } else if (i2 == 2) {
            if (this.f9035h.showHeaderLoadingLayout()) {
                this.s.setHeight(maximumPullScroll);
                paddingTop = -maximumPullScroll;
            } else {
                paddingTop = 0;
            }
            if (this.f9035h.showFooterLoadingLayout()) {
                this.t.setHeight(maximumPullScroll);
                paddingBottom = -maximumPullScroll;
            } else {
                paddingBottom = 0;
            }
        }
        Log.d("PullToRefresh", String.format("Setting Padding. L: %d, T: %d, R: %d, B: %d", Integer.valueOf(paddingLeft), Integer.valueOf(paddingTop), Integer.valueOf(paddingRight), Integer.valueOf(paddingBottom)));
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    protected final void B(int i2, int i3) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.k.getLayoutParams();
        int i4 = c.f9038a[getPullToRefreshScrollDirection().ordinal()];
        if (i4 == 1) {
            if (layoutParams.width != i2) {
                layoutParams.width = i2;
                this.k.requestLayout();
                return;
            }
            return;
        }
        if (i4 == 2 && layoutParams.height != i3) {
            layoutParams.height = i3;
            this.k.requestLayout();
        }
    }

    public void C(CharSequence charSequence, Mode mode) {
        k(mode.showHeaderLoadingLayout(), mode.showFooterLoadingLayout()).setReleaseLabel(charSequence);
    }

    final void D(State state, boolean... zArr) {
        this.f9034g = state;
        Log.d("PullToRefresh", "State: " + this.f9034g.name());
        int i2 = c.b[this.f9034g.ordinal()];
        if (i2 == 1) {
            y();
        } else if (i2 == 2) {
            v();
        } else if (i2 == 3) {
            x();
        } else if (i2 == 4 || i2 == 5) {
            w(zArr[0]);
        }
        f<T> fVar = this.w;
        if (fVar != null) {
            fVar.a(this, this.f9034g, this.i);
        }
    }

    protected final void E(int i2) {
        F(i2, getPullToRefreshScrollDuration());
    }

    protected final void H(int i2, i iVar) {
        G(i2, getPullToRefreshScrollDuration(), 0L, iVar);
    }

    protected void I() {
        LinearLayout.LayoutParams loadingLayoutLayoutParams = getLoadingLayoutLayoutParams();
        if (this == this.s.getParent()) {
            removeView(this.s);
        }
        if (this.f9035h.showHeaderLoadingLayout()) {
            d(this.s, 0, loadingLayoutLayoutParams);
        }
        if (this == this.t.getParent()) {
            removeView(this.t);
        }
        if (this.f9035h.showFooterLoadingLayout()) {
            e(this.t, loadingLayoutLayoutParams);
        }
        A();
        Mode mode = this.f9035h;
        if (mode == Mode.BOTH) {
            mode = Mode.PULL_FROM_START;
        }
        this.i = mode;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        Log.d("PullToRefresh", "addView: " + view.getClass().getSimpleName());
        View refreshableView = getRefreshableView();
        if (!(refreshableView instanceof ViewGroup)) {
            throw new UnsupportedOperationException("Refreshable View is not a ViewGroup so can't addView");
        }
        ((ViewGroup) refreshableView).addView(view, i2, layoutParams);
    }

    protected final void d(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
    }

    protected final void e(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, -1, layoutParams);
    }

    protected cn.mucang.android.ui.widget.pulltorefresh.e g(Context context, Mode mode, TypedArray typedArray) {
        cn.mucang.android.ui.widget.pulltorefresh.e eVarCreateLoadingLayout = this.r.createLoadingLayout(context, mode, getPullToRefreshScrollDirection(), typedArray);
        eVarCreateLoadingLayout.setVisibility(4);
        return eVarCreateLoadingLayout;
    }

    public final Mode getCurrentMode() {
        return this.i;
    }

    public final boolean getFilterTouchEvents() {
        return this.n;
    }

    protected final cn.mucang.android.ui.widget.pulltorefresh.e getFooterLayout() {
        return this.t;
    }

    protected final int getFooterSize() {
        return this.t.getContentSize();
    }

    protected final cn.mucang.android.ui.widget.pulltorefresh.e getHeaderLayout() {
        return this.s;
    }

    protected final int getHeaderSize() {
        return this.s.getContentSize();
    }

    public final cn.mucang.android.ui.widget.pulltorefresh.c getLoadingLayoutProxy() {
        return k(true, true);
    }

    public final Mode getMode() {
        return this.f9035h;
    }

    public d getOnHeaderScrollListener() {
        return this.x;
    }

    public abstract Orientation getPullToRefreshScrollDirection();

    protected int getPullToRefreshScrollDuration() {
        return 200;
    }

    protected int getPullToRefreshScrollDurationLonger() {
        return 325;
    }

    public final T getRefreshableView() {
        return this.j;
    }

    protected FrameLayout getRefreshableViewWrapper() {
        return this.k;
    }

    public final boolean getShowViewWhileRefreshing() {
        return this.l;
    }

    public final State getState() {
        return this.f9034g;
    }

    protected cn.mucang.android.ui.widget.pulltorefresh.f h(boolean z, boolean z2) {
        cn.mucang.android.ui.widget.pulltorefresh.f fVar = new cn.mucang.android.ui.widget.pulltorefresh.f();
        if (z && this.f9035h.showHeaderLoadingLayout()) {
            fVar.a(this.s);
        }
        if (z2 && this.f9035h.showFooterLoadingLayout()) {
            fVar.a(this.t);
        }
        return fVar;
    }

    protected abstract T i(Context context, AttributeSet attributeSet);

    protected final void j() {
        this.p = false;
    }

    public final cn.mucang.android.ui.widget.pulltorefresh.c k(boolean z, boolean z2) {
        return h(z, z2);
    }

    protected void l(TypedArray typedArray) {
    }

    public final boolean n() {
        return this.f9035h.permitsPullToRefresh();
    }

    public final boolean o() {
        return Build.VERSION.SDK_INT >= 9 && this.o && cn.mucang.android.ui.widget.pulltorefresh.g.a(this.j);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        if (!n()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.f9033f = false;
            return false;
        }
        if (action != 0 && this.f9033f) {
            return true;
        }
        if (action != 0) {
            if (action == 2) {
                if (!this.m && s()) {
                    return true;
                }
                if (p()) {
                    float y = motionEvent.getY();
                    float x = motionEvent.getX();
                    if (c.f9038a[getPullToRefreshScrollDirection().ordinal()] != 1) {
                        f2 = y - this.c;
                        f3 = x - this.b;
                    } else {
                        f2 = x - this.b;
                        f3 = y - this.c;
                    }
                    float fAbs = Math.abs(f2);
                    if (fAbs > this.f9030a && (!this.n || fAbs > Math.abs(f3))) {
                        if (this.f9035h.showHeaderLoadingLayout() && f2 >= 1.0f && r()) {
                            this.c = y;
                            this.b = x;
                            this.f9033f = true;
                            if (this.f9035h == Mode.BOTH) {
                                this.i = Mode.PULL_FROM_START;
                            }
                        } else if (this.f9035h.showFooterLoadingLayout() && f2 <= -1.0f && q()) {
                            this.c = y;
                            this.b = x;
                            this.f9033f = true;
                            if (this.f9035h == Mode.BOTH) {
                                this.i = Mode.PULL_FROM_END;
                            }
                        }
                    }
                }
            }
        } else if (p()) {
            float y2 = motionEvent.getY();
            this.f9032e = y2;
            this.c = y2;
            float x2 = motionEvent.getX();
            this.f9031d = x2;
            this.b = x2;
            this.f9033f = false;
        }
        return this.f9033f;
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        setMode(Mode.mapIntToValue(bundle.getInt("ptr_mode", 0)));
        this.i = Mode.mapIntToValue(bundle.getInt("ptr_current_mode", 0));
        this.m = bundle.getBoolean("ptr_disable_scrolling", false);
        this.l = bundle.getBoolean("ptr_show_refreshing_view", true);
        super.onRestoreInstanceState(bundle.getParcelable("ptr_super"));
        State stateMapIntToValue = State.mapIntToValue(bundle.getInt("ptr_state", 0));
        if (stateMapIntToValue == State.REFRESHING || stateMapIntToValue == State.MANUAL_REFRESHING) {
            D(stateMapIntToValue, true);
        }
        t(bundle);
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        u(bundle);
        bundle.putInt("ptr_state", this.f9034g.getIntValue());
        bundle.putInt("ptr_mode", this.f9035h.getIntValue());
        bundle.putInt("ptr_current_mode", this.i.getIntValue());
        bundle.putBoolean("ptr_disable_scrolling", this.m);
        bundle.putBoolean("ptr_show_refreshing_view", this.l);
        bundle.putParcelable("ptr_super", super.onSaveInstanceState());
        return bundle;
    }

    @Override // android.view.View
    protected final void onSizeChanged(int i2, int i3, int i4, int i5) {
        Log.d("PullToRefresh", String.format("onSizeChanged. W: %d, H: %d", Integer.valueOf(i2), Integer.valueOf(i3)));
        super.onSizeChanged(i2, i3, i4, i5);
        A();
        B(i2, i3);
        post(new b());
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0044  */
    /* JADX WARN: Code duplicated, block: B:29:0x0048  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!n()) {
            return false;
        }
        if (!this.m && s()) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (this.f9033f) {
                    this.f9033f = false;
                    if (this.f9034g != State.RELEASE_TO_REFRESH && (this.u != null || this.v != null)) {
                        D(State.REFRESHING, true);
                        return true;
                    }
                    if (s()) {
                        E(0);
                        return true;
                    }
                    D(State.RESET, new boolean[0]);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.f9033f) {
                        this.f9033f = false;
                        if (this.f9034g != State.RELEASE_TO_REFRESH) {
                        }
                        if (s()) {
                            E(0);
                            return true;
                        }
                        D(State.RESET, new boolean[0]);
                        return true;
                    }
                }
            } else if (this.f9033f) {
                this.c = motionEvent.getY();
                this.b = motionEvent.getX();
                z();
                return true;
            }
        } else if (p()) {
            float y = motionEvent.getY();
            this.f9032e = y;
            this.c = y;
            float x = motionEvent.getX();
            this.f9031d = x;
            this.b = x;
            return true;
        }
        return false;
    }

    protected abstract boolean q();

    protected abstract boolean r();

    public final boolean s() {
        State state = this.f9034g;
        return state == State.REFRESHING || state == State.MANUAL_REFRESHING;
    }

    public void setDisableScrollingWhileRefreshing(boolean z) {
        setScrollingWhileRefreshingEnabled(!z);
    }

    public final void setFilterTouchEvents(boolean z) {
        this.n = z;
    }

    protected final void setHeaderScroll(int i2) {
        Log.d("PullToRefresh", "setHeaderScroll: " + i2);
        int maximumPullScroll = getMaximumPullScroll();
        int iMin = Math.min(maximumPullScroll, Math.max(-maximumPullScroll, i2));
        if (this.p) {
            if (iMin < 0) {
                this.s.setVisibility(0);
            } else if (iMin > 0) {
                this.t.setVisibility(0);
            } else {
                this.s.setVisibility(4);
                this.t.setVisibility(4);
            }
        }
        int i3 = c.f9038a[getPullToRefreshScrollDirection().ordinal()];
        if (i3 == 1) {
            scrollTo(iMin, 0);
            d dVar = this.x;
            if (dVar != null) {
                dVar.a(iMin, 0);
                return;
            }
            return;
        }
        if (i3 != 2) {
            return;
        }
        scrollTo(0, iMin);
        d dVar2 = this.x;
        if (dVar2 != null) {
            dVar2.a(0, iMin);
        }
    }

    public void setLastUpdatedLabel(CharSequence charSequence) {
        getLoadingLayoutProxy().setLastUpdatedLabel(charSequence);
    }

    public void setLoadingDrawable(Drawable drawable) {
        getLoadingLayoutProxy().setLoadingDrawable(drawable);
    }

    @Override // android.view.View
    public void setLongClickable(boolean z) {
        getRefreshableView().setLongClickable(z);
    }

    public final void setMode(Mode mode) {
        if (mode != this.f9035h) {
            Log.d("PullToRefresh", "Setting mode to: " + mode);
            this.f9035h = mode;
            I();
        }
    }

    public void setOnHeaderScrollListener(d dVar) {
        this.x = dVar;
    }

    public void setOnPullEventListener(f<T> fVar) {
        this.w = fVar;
    }

    public final void setOnRefreshListener(h<T> hVar) {
        this.u = hVar;
        this.v = null;
    }

    public void setPullLabel(CharSequence charSequence) {
        getLoadingLayoutProxy().setPullLabel(charSequence);
    }

    public final void setPullToRefreshEnabled(boolean z) {
        setMode(z ? Mode.getDefault() : Mode.DISABLED);
    }

    public final void setPullToRefreshOverScrollEnabled(boolean z) {
        this.o = z;
    }

    public final void setRefreshing(boolean z) {
        if (s()) {
            return;
        }
        D(State.MANUAL_REFRESHING, z);
    }

    public void setRefreshingLabel(CharSequence charSequence) {
        getLoadingLayoutProxy().setRefreshingLabel(charSequence);
    }

    public void setReleaseLabel(CharSequence charSequence) {
        C(charSequence, Mode.BOTH);
    }

    public void setScrollAnimationInterpolator(Interpolator interpolator) {
        this.q = interpolator;
    }

    public final void setScrollingWhileRefreshingEnabled(boolean z) {
        this.m = z;
    }

    public final void setShowViewWhileRefreshing(boolean z) {
        this.l = z;
    }

    protected void t(Bundle bundle) {
    }

    protected void u(Bundle bundle) {
    }

    protected void v() {
        int i2 = c.c[this.i.ordinal()];
        if (i2 == 1) {
            this.t.f();
        } else {
            if (i2 != 2) {
                return;
            }
            this.s.f();
        }
    }

    protected void w(boolean z) {
        if (this.f9035h.showHeaderLoadingLayout()) {
            this.s.h();
        }
        if (this.f9035h.showFooterLoadingLayout()) {
            this.t.h();
        }
        if (!z) {
            f();
            return;
        }
        if (!this.l) {
            E(0);
            return;
        }
        a aVar = new a();
        int i2 = c.c[this.i.ordinal()];
        if (i2 == 1 || i2 == 3) {
            H(getFooterSize(), aVar);
        } else {
            H(-getHeaderSize(), aVar);
        }
    }

    protected void x() {
        int i2 = c.c[this.i.ordinal()];
        if (i2 == 1) {
            this.t.j();
        } else {
            if (i2 != 2) {
                return;
            }
            this.s.j();
        }
    }

    protected void y() {
        this.f9033f = false;
        this.p = true;
        this.s.l();
        this.t.l();
        E(0);
    }

    public final void setOnRefreshListener(g<T> gVar) {
        this.v = gVar;
        this.u = null;
    }
}
