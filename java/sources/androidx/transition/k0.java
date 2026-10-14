package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class k0 extends m {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;
    private static final String PROPNAME_SCREEN_LOCATION = "android:visibility:screenLocation";
    private int mMode;
    static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    class a extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1860a;
        final /* synthetic */ View b;
        final /* synthetic */ View c;

        a(ViewGroup viewGroup, View view, View view2) {
            this.f1860a = viewGroup;
            this.b = view;
            this.c = view2;
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            this.c.setTag(R.id.save_overlay_view, null);
            y.a(this.f1860a).remove(this.b);
            mVar.removeListener(this);
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionPause(m mVar) {
            y.a(this.f1860a).remove(this.b);
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionResume(m mVar) {
            if (this.b.getParent() == null) {
                y.a(this.f1860a).add(this.b);
            } else {
                k0.this.cancel();
            }
        }
    }

    private static class b extends AnimatorListenerAdapter implements m.g, androidx.transition.a.InterfaceC0050a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f1862a;
        private final int b;
        private final ViewGroup c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1863d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1864e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1865f = false;

        b(View view, int i, boolean z) {
            this.f1862a = view;
            this.b = i;
            this.c = (ViewGroup) view.getParent();
            this.f1863d = z;
            b(true);
        }

        private void a() {
            if (!this.f1865f) {
                d0.h(this.f1862a, this.b);
                ViewGroup viewGroup = this.c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            b(false);
        }

        private void b(boolean z) {
            ViewGroup viewGroup;
            if (!this.f1863d || this.f1864e == z || (viewGroup = this.c) == null) {
                return;
            }
            this.f1864e = z;
            y.c(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1865f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.a.InterfaceC0050a
        public void onAnimationPause(Animator animator) {
            if (this.f1865f) {
                return;
            }
            d0.h(this.f1862a, this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.a.InterfaceC0050a
        public void onAnimationResume(Animator animator) {
            if (this.f1865f) {
                return;
            }
            d0.h(this.f1862a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // androidx.transition.m.g
        public void onTransitionCancel(m mVar) {
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            a();
            mVar.removeListener(this);
        }

        @Override // androidx.transition.m.g
        public void onTransitionPause(m mVar) {
            b(false);
        }

        @Override // androidx.transition.m.g
        public void onTransitionResume(m mVar) {
            b(true);
        }

        @Override // androidx.transition.m.g
        public void onTransitionStart(m mVar) {
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1866a;
        boolean b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1867d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewGroup f1868e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ViewGroup f1869f;

        c() {
        }
    }

    public k0() {
        this.mMode = 3;
    }

    private void captureValues(t tVar) {
        tVar.f1887a.put(PROPNAME_VISIBILITY, Integer.valueOf(tVar.b.getVisibility()));
        tVar.f1887a.put(PROPNAME_PARENT, tVar.b.getParent());
        int[] iArr = new int[2];
        tVar.b.getLocationOnScreen(iArr);
        tVar.f1887a.put(PROPNAME_SCREEN_LOCATION, iArr);
    }

    private c getVisibilityChangeInfo(t tVar, t tVar2) {
        c cVar = new c();
        cVar.f1866a = false;
        cVar.b = false;
        if (tVar == null || !tVar.f1887a.containsKey(PROPNAME_VISIBILITY)) {
            cVar.c = -1;
            cVar.f1868e = null;
        } else {
            cVar.c = ((Integer) tVar.f1887a.get(PROPNAME_VISIBILITY)).intValue();
            cVar.f1868e = (ViewGroup) tVar.f1887a.get(PROPNAME_PARENT);
        }
        if (tVar2 == null || !tVar2.f1887a.containsKey(PROPNAME_VISIBILITY)) {
            cVar.f1867d = -1;
            cVar.f1869f = null;
        } else {
            cVar.f1867d = ((Integer) tVar2.f1887a.get(PROPNAME_VISIBILITY)).intValue();
            cVar.f1869f = (ViewGroup) tVar2.f1887a.get(PROPNAME_PARENT);
        }
        if (tVar != null && tVar2 != null) {
            int i = cVar.c;
            int i2 = cVar.f1867d;
            if (i == i2 && cVar.f1868e == cVar.f1869f) {
                return cVar;
            }
            if (i != i2) {
                if (i == 0) {
                    cVar.b = false;
                    cVar.f1866a = true;
                } else if (i2 == 0) {
                    cVar.b = true;
                    cVar.f1866a = true;
                }
            } else if (cVar.f1869f == null) {
                cVar.b = false;
                cVar.f1866a = true;
            } else if (cVar.f1868e == null) {
                cVar.b = true;
                cVar.f1866a = true;
            }
        } else if (tVar == null && cVar.f1867d == 0) {
            cVar.b = true;
            cVar.f1866a = true;
        } else if (tVar2 == null && cVar.c == 0) {
            cVar.b = false;
            cVar.f1866a = true;
        }
        return cVar;
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
        c visibilityChangeInfo = getVisibilityChangeInfo(tVar, tVar2);
        if (!visibilityChangeInfo.f1866a) {
            return null;
        }
        if (visibilityChangeInfo.f1868e == null && visibilityChangeInfo.f1869f == null) {
            return null;
        }
        return visibilityChangeInfo.b ? onAppear(viewGroup, tVar, visibilityChangeInfo.c, tVar2, visibilityChangeInfo.f1867d) : onDisappear(viewGroup, tVar, visibilityChangeInfo.c, tVar2, visibilityChangeInfo.f1867d);
    }

    public int getMode() {
        return this.mMode;
    }

    @Override // androidx.transition.m
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    @Override // androidx.transition.m
    public boolean isTransitionRequired(t tVar, t tVar2) {
        if (tVar == null && tVar2 == null) {
            return false;
        }
        if (tVar != null && tVar2 != null && tVar2.f1887a.containsKey(PROPNAME_VISIBILITY) != tVar.f1887a.containsKey(PROPNAME_VISIBILITY)) {
            return false;
        }
        c visibilityChangeInfo = getVisibilityChangeInfo(tVar, tVar2);
        if (visibilityChangeInfo.f1866a) {
            return visibilityChangeInfo.c == 0 || visibilityChangeInfo.f1867d == 0;
        }
        return false;
    }

    public boolean isVisible(t tVar) {
        if (tVar == null) {
            return false;
        }
        return ((Integer) tVar.f1887a.get(PROPNAME_VISIBILITY)).intValue() == 0 && ((View) tVar.f1887a.get(PROPNAME_PARENT)) != null;
    }

    public abstract Animator onAppear(ViewGroup viewGroup, View view, t tVar, t tVar2);

    public Animator onAppear(ViewGroup viewGroup, t tVar, int i, t tVar2, int i2) {
        if ((this.mMode & 1) != 1 || tVar2 == null) {
            return null;
        }
        if (tVar == null) {
            View view = (View) tVar2.b.getParent();
            if (getVisibilityChangeInfo(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).f1866a) {
                return null;
            }
        }
        return onAppear(viewGroup, tVar2.b, tVar, tVar2);
    }

    public abstract Animator onDisappear(ViewGroup viewGroup, View view, t tVar, t tVar2);

    /* JADX WARN: Code duplicated, block: B:25:0x0045  */
    public Animator onDisappear(ViewGroup viewGroup, t tVar, int i, t tVar2, int i2) {
        View view;
        boolean z;
        boolean z2;
        View view2;
        if ((this.mMode & 2) != 2 || tVar == null) {
            return null;
        }
        View view3 = tVar.b;
        View viewA = tVar2 != null ? tVar2.b : null;
        int i3 = R.id.save_overlay_view;
        View view4 = (View) view3.getTag(i3);
        if (view4 != null) {
            view2 = null;
            z2 = true;
        } else {
            if (viewA == null || viewA.getParent() == null) {
                if (viewA != null) {
                    view = null;
                    z = false;
                } else {
                    viewA = null;
                    view = null;
                    z = true;
                }
            } else if (i2 == 4 || view3 == viewA) {
                view = viewA;
                z = false;
                viewA = null;
            } else {
                viewA = null;
                view = null;
                z = true;
            }
            if (z) {
                if (view3.getParent() != null) {
                    if (view3.getParent() instanceof View) {
                        View view5 = (View) view3.getParent();
                        if (getVisibilityChangeInfo(getTransitionValues(view5, true), getMatchedTransitionValues(view5, true)).f1866a) {
                            int id = view5.getId();
                            if (view5.getParent() != null || id == -1 || viewGroup.findViewById(id) == null || !this.mCanRemoveViews) {
                            }
                        } else {
                            viewA = s.a(viewGroup, view3, view5);
                        }
                    }
                    z2 = false;
                    View view6 = view;
                    view4 = viewA;
                    view2 = view6;
                }
                view2 = view;
                z2 = false;
                view4 = view3;
            } else {
                z2 = false;
                View view7 = view;
                view4 = viewA;
                view2 = view7;
            }
        }
        if (view4 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            d0.h(view2, 0);
            Animator animatorOnDisappear = onDisappear(viewGroup, view2, tVar, tVar2);
            if (animatorOnDisappear != null) {
                b bVar = new b(view2, i2, true);
                animatorOnDisappear.addListener(bVar);
                androidx.transition.a.a(animatorOnDisappear, bVar);
                addListener(bVar);
            } else {
                d0.h(view2, visibility);
            }
            return animatorOnDisappear;
        }
        if (!z2) {
            int[] iArr = (int[]) tVar.f1887a.get(PROPNAME_SCREEN_LOCATION);
            int i4 = iArr[0];
            int i5 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i4 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i5 - iArr2[1]) - view4.getTop());
            y.a(viewGroup).add(view4);
        }
        Animator animatorOnDisappear2 = onDisappear(viewGroup, view4, tVar, tVar2);
        if (!z2) {
            if (animatorOnDisappear2 == null) {
                y.a(viewGroup).remove(view4);
            } else {
                view3.setTag(i3, view4);
                addListener(new a(viewGroup, view4, view3));
            }
        }
        return animatorOnDisappear2;
    }

    public void setMode(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.mMode = i;
    }

    @SuppressLint({"RestrictedApi"})
    public k0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMode = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.b);
        int iG = androidx.core.a.f.g.g(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (iG != 0) {
            setMode(iG);
        }
    }
}
