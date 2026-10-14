package androidx.appcompat.b.a;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.resources.R;
import androidx.appcompat.widget.g0;
import androidx.collection.h;
import androidx.vectordrawable.a.a.i;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import org.apache.commons.math3.linear.ConjugateGradient;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedAPI"})
public class a extends androidx.appcompat.b.a.d implements androidx.core.graphics.drawable.b {
    private c o;
    private g p;
    private int q;
    private int r;
    private boolean s;

    private static class b extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Animatable f161a;

        b(Animatable animatable) {
            super();
            this.f161a = animatable;
        }

        @Override // androidx.appcompat.b.a.a.g
        public void c() {
            this.f161a.start();
        }

        @Override // androidx.appcompat.b.a.a.g
        public void d() {
            this.f161a.stop();
        }
    }

    static class c extends androidx.appcompat.b.a.d.a {
        androidx.collection.d<Long> K;
        h<Integer> L;

        c(c cVar, a aVar, Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
            } else {
                this.K = new androidx.collection.d<>();
                this.L = new h<>();
            }
        }

        private static long D(int i, int i2) {
            return ((long) i2) | (((long) i) << 32);
        }

        int B(int[] iArr, Drawable drawable, int i) {
            int iZ = super.z(iArr, drawable);
            this.L.j(iZ, Integer.valueOf(i));
            return iZ;
        }

        int C(int i, int i2, Drawable drawable, boolean z) {
            int iA = super.a(drawable);
            long jD = D(i, i2);
            long j = z ? 8589934592L : 0L;
            long j2 = iA;
            this.K.b(jD, Long.valueOf(j2 | j));
            if (z) {
                this.K.b(D(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return iA;
        }

        int E(int i) {
            if (i < 0) {
                return 0;
            }
            return this.L.g(i, 0).intValue();
        }

        int F(int[] iArr) {
            int iA = super.A(iArr);
            return iA >= 0 ? iA : super.A(StateSet.WILD_CARD);
        }

        int G(int i, int i2) {
            return (int) this.K.g(D(i, i2), -1L).longValue();
        }

        boolean H(int i, int i2) {
            return (this.K.g(D(i, i2), -1L).longValue() & 4294967296L) != 0;
        }

        boolean I(int i, int i2) {
            return (this.K.g(D(i, i2), -1L).longValue() & 8589934592L) != 0;
        }

        @Override // androidx.appcompat.b.a.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new a(this, null);
        }

        @Override // androidx.appcompat.b.a.d.a, androidx.appcompat.b.a.b.d
        void r() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        @Override // androidx.appcompat.b.a.d.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }
    }

    private static class d extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.vectordrawable.a.a.c f162a;

        d(androidx.vectordrawable.a.a.c cVar) {
            super();
            this.f162a = cVar;
        }

        @Override // androidx.appcompat.b.a.a.g
        public void c() {
            this.f162a.start();
        }

        @Override // androidx.appcompat.b.a.a.g
        public void d() {
            this.f162a.stop();
        }
    }

    private static class e extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ObjectAnimator f163a;
        private final boolean b;

        e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                objectAnimatorOfInt.setAutoCancel(true);
            }
            objectAnimatorOfInt.setDuration(fVar.a());
            objectAnimatorOfInt.setInterpolator(fVar);
            this.b = z2;
            this.f163a = objectAnimatorOfInt;
        }

        @Override // androidx.appcompat.b.a.a.g
        public boolean a() {
            return this.b;
        }

        @Override // androidx.appcompat.b.a.a.g
        public void b() {
            this.f163a.reverse();
        }

        @Override // androidx.appcompat.b.a.a.g
        public void c() {
            this.f163a.start();
        }

        @Override // androidx.appcompat.b.a.a.g
        public void d() {
            this.f163a.cancel();
        }
    }

    private static class f implements TimeInterpolator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f164a;
        private int b;
        private int c;

        f(AnimationDrawable animationDrawable, boolean z) {
            b(animationDrawable, z);
        }

        int a() {
            return this.c;
        }

        int b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.b = numberOfFrames;
            int[] iArr = this.f164a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f164a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f164a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.c = i;
            return i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            int i = (int) ((f2 * this.c) + 0.5f);
            int i2 = this.b;
            int[] iArr = this.f164a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.c : BitmapDescriptorFactory.HUE_RED);
        }
    }

    private static abstract class g {
        private g() {
        }

        public boolean a() {
            return false;
        }

        public void b() {
        }

        public abstract void c();

        public abstract void d();
    }

    public a() {
        this(null, null);
    }

    public static a m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            a aVar = new a();
            aVar.n(context, resources, xmlPullParser, attributeSet, theme);
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals("item")) {
                    q(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals("transition")) {
                    r(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    private void p() {
        onStateChange(getState());
    }

    private int q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableItem);
        int resourceId = typedArrayK.getResourceId(R.styleable.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = typedArrayK.getResourceId(R.styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable drawableJ = resourceId2 > 0 ? g0.h().j(context, resourceId2) : null;
        typedArrayK.recycle();
        int[] iArrK = k(attributeSet);
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            if (xmlPullParser.getName().equals(ConjugateGradient.VECTOR)) {
                drawableJ = i.c(resources, xmlPullParser, attributeSet, theme);
            } else {
                drawableJ = Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (drawableJ != null) {
            return this.o.B(iArrK, drawableJ, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    private int r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableTransition);
        int resourceId = typedArrayK.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = typedArrayK.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = typedArrayK.getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable drawableJ = resourceId3 > 0 ? g0.h().j(context, resourceId3) : null;
        boolean z = typedArrayK.getBoolean(R.styleable.AnimatedStateListDrawableTransition_android_reversible, false);
        typedArrayK.recycle();
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            if (xmlPullParser.getName().equals("animated-vector")) {
                drawableJ = androidx.vectordrawable.a.a.c.a(context, resources, xmlPullParser, attributeSet, theme);
            } else {
                drawableJ = Build.VERSION.SDK_INT >= 21 ? Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme) : Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
            }
        }
        if (drawableJ == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId != -1 && resourceId2 != -1) {
            return this.o.C(resourceId, resourceId2, drawableJ, z);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    private boolean s(int i) {
        int iC;
        int iG;
        g bVar;
        g gVar = this.p;
        if (gVar == null) {
            iC = c();
        } else {
            if (i == this.q) {
                return true;
            }
            if (i == this.r && gVar.a()) {
                gVar.b();
                this.q = this.r;
                this.r = i;
                return true;
            }
            iC = this.q;
            gVar.d();
        }
        this.p = null;
        this.r = -1;
        this.q = -1;
        c cVar = this.o;
        int iE = cVar.E(iC);
        int iE2 = cVar.E(i);
        if (iE2 == 0 || iE == 0 || (iG = cVar.G(iE, iE2)) < 0) {
            return false;
        }
        boolean zI = cVar.I(iE, iE2);
        g(iG);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            bVar = new e((AnimationDrawable) current, cVar.H(iE, iE2), zI);
        } else {
            if (!(current instanceof androidx.vectordrawable.a.a.c)) {
                if (current instanceof Animatable) {
                    bVar = new b((Animatable) current);
                }
                return false;
            }
            bVar = new d((androidx.vectordrawable.a.a.c) current);
        }
        bVar.c();
        this.p = bVar;
        this.r = iC;
        this.q = i;
        return true;
    }

    private void t(TypedArray typedArray) {
        c cVar = this.o;
        if (Build.VERSION.SDK_INT >= 21) {
            cVar.f174d |= typedArray.getChangingConfigurations();
        }
        cVar.x(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, cVar.i));
        cVar.t(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_constantSize, cVar.l));
        cVar.u(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.A));
        cVar.v(typedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.B));
        setDither(typedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_dither, cVar.x));
    }

    @Override // androidx.appcompat.b.a.d, androidx.appcompat.b.a.b
    void h(androidx.appcompat.b.a.b.d dVar) {
        super.h(dVar);
        if (dVar instanceof c) {
            this.o = (c) dVar;
        }
    }

    @Override // androidx.appcompat.b.a.d, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.p;
        if (gVar != null) {
            gVar.d();
            this.p = null;
            g(this.q);
            this.q = -1;
            this.r = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.b.a.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public c b() {
        return new c(this.o, this, null);
    }

    @Override // androidx.appcompat.b.a.d, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.s) {
            super.mutate();
            if (this == this) {
                this.o.r();
                this.s = true;
            }
        }
        return this;
    }

    public void n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayK = androidx.core.a.f.g.k(resources, theme, attributeSet, R.styleable.AnimatedStateListDrawableCompat);
        setVisible(typedArrayK.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        t(typedArrayK);
        i(resources);
        typedArrayK.recycle();
        o(context, resources, xmlPullParser, attributeSet, theme);
        p();
    }

    @Override // androidx.appcompat.b.a.d, androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int iF = this.o.F(iArr);
        boolean z = iF != c() && (s(iF) || g(iF));
        Drawable current = getCurrent();
        return current != null ? z | current.setState(iArr) : z;
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        g gVar = this.p;
        if (gVar != null && (visible || z2)) {
            if (z) {
                gVar.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    a(c cVar, Resources resources) {
        super(null);
        this.q = -1;
        this.r = -1;
        h(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }
}
