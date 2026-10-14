package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c extends m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f1816d = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Property<Drawable, PointF> f1817e = new b(PointF.class, "boundsOrigin");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Property<k, PointF> f1818f = new C0051c(PointF.class, "topLeft");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Property<k, PointF> f1819g = new d(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Property<View, PointF> f1820h = new e(PointF.class, "bottomRight");
    private static final Property<View, PointF> i = new f(PointF.class, "topLeft");
    private static final Property<View, PointF> j = new g(PointF.class, "position");
    private static androidx.transition.j k = new androidx.transition.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f1821a = new int[2];
    private boolean b = false;
    private boolean c = false;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1822a;
        final /* synthetic */ BitmapDrawable b;
        final /* synthetic */ View c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f1823d;

        a(c cVar, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f2) {
            this.f1822a = viewGroup;
            this.b = bitmapDrawable;
            this.c = view;
            this.f1823d = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.b(this.f1822a).remove(this.b);
            d0.g(this.c, this.f1823d);
        }
    }

    static class b extends Property<Drawable, PointF> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f1824a;

        b(Class cls, String str) {
            super(cls, str);
            this.f1824a = new Rect();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f1824a);
            Rect rect = this.f1824a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f1824a);
            this.f1824a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f1824a);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.c$c, reason: collision with other inner class name */
    static class C0051c extends Property<k, PointF> {
        C0051c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.c(pointF);
        }
    }

    static class d extends Property<k, PointF> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.a(pointF);
        }
    }

    static class e extends Property<View, PointF> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            d0.f(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    static class f extends Property<View, PointF> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            d0.f(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    static class g extends Property<View, PointF> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            d0.f(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f1825a;
        private k mViewBounds;

        h(c cVar, k kVar) {
            this.f1825a = kVar;
            this.mViewBounds = kVar;
        }
    }

    class i extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1826a;
        final /* synthetic */ View b;
        final /* synthetic */ Rect c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1827d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f1828e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f1829f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f1830g;

        i(c cVar, View view, Rect rect, int i, int i2, int i3, int i4) {
            this.b = view;
            this.c = rect;
            this.f1827d = i;
            this.f1828e = i2;
            this.f1829f = i3;
            this.f1830g = i4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1826a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f1826a) {
                return;
            }
            ViewCompat.setClipBounds(this.b, this.c);
            d0.f(this.b, this.f1827d, this.f1828e, this.f1829f, this.f1830g);
        }
    }

    class j extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1831a = false;
        final /* synthetic */ ViewGroup b;

        j(c cVar, ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionCancel(m mVar) {
            y.c(this.b, false);
            this.f1831a = true;
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            if (!this.f1831a) {
                y.c(this.b, false);
            }
            mVar.removeListener(this);
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionPause(m mVar) {
            y.c(this.b, false);
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionResume(m mVar) {
            y.c(this.b, true);
        }
    }

    private static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1832a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1833d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f1834e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f1835f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1836g;

        k(View view) {
            this.f1834e = view;
        }

        private void b() {
            d0.f(this.f1834e, this.f1832a, this.b, this.c, this.f1833d);
            this.f1835f = 0;
            this.f1836g = 0;
        }

        void a(PointF pointF) {
            this.c = Math.round(pointF.x);
            this.f1833d = Math.round(pointF.y);
            int i = this.f1836g + 1;
            this.f1836g = i;
            if (this.f1835f == i) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f1832a = Math.round(pointF.x);
            this.b = Math.round(pointF.y);
            int i = this.f1835f + 1;
            this.f1835f = i;
            if (i == this.f1836g) {
                b();
            }
        }
    }

    private boolean b(View view, View view2) {
        if (!this.c) {
            return true;
        }
        t matchedTransitionValues = getMatchedTransitionValues(view, true);
        if (matchedTransitionValues == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == matchedTransitionValues.b) {
            return true;
        }
        return false;
    }

    private void captureValues(t tVar) {
        View view = tVar.b;
        if (!ViewCompat.isLaidOut(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        tVar.f1887a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        tVar.f1887a.put("android:changeBounds:parent", tVar.b.getParent());
        if (this.c) {
            tVar.b.getLocationInWindow(this.f1821a);
            tVar.f1887a.put("android:changeBounds:windowX", Integer.valueOf(this.f1821a[0]));
            tVar.f1887a.put("android:changeBounds:windowY", Integer.valueOf(this.f1821a[1]));
        }
        if (this.b) {
            tVar.f1887a.put("android:changeBounds:clip", ViewCompat.getClipBounds(view));
        }
    }

    @Override // androidx.transition.m
    public void captureEndValues(t tVar) {
        captureValues(tVar);
    }

    @Override // androidx.transition.m
    public void captureStartValues(t tVar) {
        captureValues(tVar);
    }

    @Override // androidx.transition.m
    public Animator createAnimator(ViewGroup viewGroup, t tVar, t tVar2) {
        int i2;
        View view;
        ObjectAnimator objectAnimatorA;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorC;
        if (tVar == null || tVar2 == null) {
            return null;
        }
        Map<String, Object> map = tVar.f1887a;
        Map<String, Object> map2 = tVar2.f1887a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = tVar2.b;
        if (!b(viewGroup2, viewGroup3)) {
            int iIntValue = ((Integer) tVar.f1887a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((Integer) tVar.f1887a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((Integer) tVar2.f1887a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((Integer) tVar2.f1887a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.f1821a);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            float fC = d0.c(view2);
            d0.g(view2, BitmapDescriptorFactory.HUE_RED);
            d0.b(viewGroup).add(bitmapDrawable);
            androidx.transition.g pathMotion = getPathMotion();
            int[] iArr = this.f1821a;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, androidx.transition.i.a(f1817e, pathMotion.getPath(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1])));
            objectAnimatorOfPropertyValuesHolder.addListener(new a(this, viewGroup, bitmapDrawable, view2, fC));
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) tVar.f1887a.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) tVar2.f1887a.get("android:changeBounds:bounds");
        int i4 = rect2.left;
        int i5 = rect3.left;
        int i6 = rect2.top;
        int i7 = rect3.top;
        int i8 = rect2.right;
        int i9 = rect3.right;
        int i10 = rect2.bottom;
        int i11 = rect3.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect4 = (Rect) tVar.f1887a.get("android:changeBounds:clip");
        Rect rect5 = (Rect) tVar2.f1887a.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        if (this.b) {
            d0.f(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            if (i4 == i5 && i6 == i7) {
                objectAnimatorA = null;
            } else {
                view = view2;
                objectAnimatorA = androidx.transition.f.a(view, j, getPathMotion().getPath(i4, i6, i5, i7));
            }
            if (rect4 == null) {
                i3 = 0;
                rect = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
            if (rect.equals(rect6)) {
                objectAnimator = null;
            } else {
                ViewCompat.setClipBounds(view, rect);
                androidx.transition.j jVar = k;
                Object[] objArr = new Object[2];
                objArr[i3] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", jVar, objArr);
                objectAnimatorOfObject.addListener(new i(this, view, rect5, i5, i7, i9, i11));
                objectAnimator = objectAnimatorOfObject;
            }
            animatorC = s.c(objectAnimatorA, objectAnimator);
        } else {
            d0.f(view, i4, i6, i8, i10);
            if (i2 != 2) {
                animatorC = (i4 == i5 && i6 == i7) ? androidx.transition.f.a(view, f1820h, getPathMotion().getPath(i8, i10, i9, i11)) : androidx.transition.f.a(view, i, getPathMotion().getPath(i4, i6, i5, i7));
            } else if (i12 == i14 && i13 == i15) {
                animatorC = androidx.transition.f.a(view, j, getPathMotion().getPath(i4, i6, i5, i7));
            } else {
                k kVar = new k(view);
                ObjectAnimator objectAnimatorA2 = androidx.transition.f.a(kVar, f1818f, getPathMotion().getPath(i4, i6, i5, i7));
                ObjectAnimator objectAnimatorA3 = androidx.transition.f.a(kVar, f1819g, getPathMotion().getPath(i8, i10, i9, i11));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new h(this, kVar));
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            y.c(viewGroup4, true);
            addListener(new j(this, viewGroup4));
        }
        return animatorC;
    }

    @Override // androidx.transition.m
    public String[] getTransitionProperties() {
        return f1816d;
    }
}
