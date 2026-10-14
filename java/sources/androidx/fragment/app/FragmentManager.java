package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.R;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.n0;
import androidx.lifecycle.o0;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mobile.auth.BuildConfig;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentManager {
    private static boolean O = false;
    static boolean P = true;
    private androidx.activity.result.c<IntentSenderRequest> A;
    private androidx.activity.result.c<String[]> B;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private ArrayList<androidx.fragment.app.a> I;
    private ArrayList<Boolean> J;
    private ArrayList<Fragment> K;
    private ArrayList<p> L;
    private androidx.fragment.app.n M;
    private boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<androidx.fragment.app.a> f1286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<Fragment> f1287e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OnBackPressedDispatcher f1289g;
    private ArrayList<m> l;
    private androidx.fragment.app.j<?> r;
    private androidx.fragment.app.f s;
    private Fragment t;
    Fragment u;
    private androidx.activity.result.c<Intent> z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<n> f1285a = new ArrayList<>();
    private final t c = new t();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.fragment.app.k f1288f = new androidx.fragment.app.k(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.activity.b f1290h = new c(false);
    private final AtomicInteger i = new AtomicInteger();
    private final Map<String, Bundle> j = Collections.synchronizedMap(new HashMap());
    private final Map<String, Object> k = Collections.synchronizedMap(new HashMap());
    private Map<Fragment, HashSet<androidx.core.os.b>> m = Collections.synchronizedMap(new HashMap());
    private final v.g n = new d();
    private final androidx.fragment.app.l o = new androidx.fragment.app.l(this);
    private final CopyOnWriteArrayList<androidx.fragment.app.o> p = new CopyOnWriteArrayList<>();
    int q = -1;
    private androidx.fragment.app.i v = null;
    private androidx.fragment.app.i w = new e();
    private a0 x = null;
    private a0 y = new f(this);
    ArrayDeque<LaunchedFragmentInfo> C = new ArrayDeque<>();
    private Runnable N = new g();

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentManager$6, reason: invalid class name */
    class AnonymousClass6 implements androidx.lifecycle.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1291a;
        final /* synthetic */ q b;
        final /* synthetic */ Lifecycle c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ FragmentManager f1292d;

        @Override // androidx.lifecycle.o
        public void b(androidx.lifecycle.r rVar, Lifecycle.Event event) {
            Bundle bundle;
            if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) this.f1292d.j.get(this.f1291a)) != null) {
                this.b.a(this.f1291a, bundle);
                this.f1292d.r(this.f1291a);
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.c.c(this);
                this.f1292d.k.remove(this.f1291a);
            }
        }
    }

    class a implements androidx.activity.result.a<ActivityResult> {
        a() {
        }

        @Override // androidx.activity.result.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ActivityResult activityResult) {
            LaunchedFragmentInfo launchedFragmentInfoPollFirst = FragmentManager.this.C.pollFirst();
            if (launchedFragmentInfoPollFirst == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = launchedFragmentInfoPollFirst.f1293a;
            int i = launchedFragmentInfoPollFirst.b;
            Fragment fragmentI = FragmentManager.this.c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i, activityResult.b(), activityResult.a());
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    class b implements androidx.activity.result.a<Map<String, Boolean>> {
        b() {
        }

        @Override // androidx.activity.result.a
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            LaunchedFragmentInfo launchedFragmentInfoPollFirst = FragmentManager.this.C.pollFirst();
            if (launchedFragmentInfoPollFirst == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = launchedFragmentInfoPollFirst.f1293a;
            int i2 = launchedFragmentInfoPollFirst.b;
            Fragment fragmentI = FragmentManager.this.c.i(str);
            if (fragmentI != null) {
                fragmentI.onRequestPermissionsResult(i2, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    class c extends androidx.activity.b {
        c(boolean z) {
            super(z);
        }

        @Override // androidx.activity.b
        public void b() {
            FragmentManager.this.D0();
        }
    }

    class d implements v.g {
        d() {
        }

        @Override // androidx.fragment.app.v.g
        public void a(Fragment fragment, androidx.core.os.b bVar) {
            if (bVar.b()) {
                return;
            }
            FragmentManager.this.e1(fragment, bVar);
        }

        @Override // androidx.fragment.app.v.g
        public void b(Fragment fragment, androidx.core.os.b bVar) {
            FragmentManager.this.f(fragment, bVar);
        }
    }

    class e extends androidx.fragment.app.i {
        e() {
        }

        @Override // androidx.fragment.app.i
        public Fragment a(ClassLoader classLoader, String str) {
            return FragmentManager.this.v0().b(FragmentManager.this.v0().f(), str, null);
        }
    }

    class f implements a0 {
        f(FragmentManager fragmentManager) {
        }

        @Override // androidx.fragment.app.a0
        public SpecialEffectsController a(ViewGroup viewGroup) {
            return new androidx.fragment.app.b(viewGroup);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.b0(true);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1298a;
        final /* synthetic */ View b;
        final /* synthetic */ Fragment c;

        h(FragmentManager fragmentManager, ViewGroup viewGroup, View view, Fragment fragment) {
            this.f1298a = viewGroup;
            this.b = view;
            this.c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1298a.endViewTransition(this.b);
            animator.removeListener(this);
            Fragment fragment = this.c;
            View view = fragment.mView;
            if (view == null || !fragment.mHidden) {
                return;
            }
            view.setVisibility(8);
        }
    }

    class i implements androidx.fragment.app.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Fragment f1299a;

        i(FragmentManager fragmentManager, Fragment fragment) {
            this.f1299a = fragment;
        }

        @Override // androidx.fragment.app.o
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            this.f1299a.onAttachFragment(fragment);
        }
    }

    class j implements androidx.activity.result.a<ActivityResult> {
        j() {
        }

        @Override // androidx.activity.result.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ActivityResult activityResult) {
            LaunchedFragmentInfo launchedFragmentInfoPollFirst = FragmentManager.this.C.pollFirst();
            if (launchedFragmentInfoPollFirst == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = launchedFragmentInfoPollFirst.f1293a;
            int i = launchedFragmentInfoPollFirst.b;
            Fragment fragmentI = FragmentManager.this.c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i, activityResult.b(), activityResult.a());
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    static class k extends androidx.activity.result.e.a<IntentSenderRequest, ActivityResult> {
        k() {
        }

        @Override // androidx.activity.result.e.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intentA = intentSenderRequest.a();
            if (intentA != null && (bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intentA.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    IntentSenderRequest.b bVar = new IntentSenderRequest.b(intentSenderRequest.d());
                    bVar.b(null);
                    bVar.c(intentSenderRequest.c(), intentSenderRequest.b());
                    intentSenderRequest = bVar.a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // androidx.activity.result.e.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ActivityResult c(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    public static abstract class l {
        @Deprecated
        public abstract void a(FragmentManager fragmentManager, Fragment fragment, Bundle bundle);

        public abstract void b(FragmentManager fragmentManager, Fragment fragment, Context context);

        public abstract void c(FragmentManager fragmentManager, Fragment fragment, Bundle bundle);

        public abstract void d(FragmentManager fragmentManager, Fragment fragment);

        public abstract void e(FragmentManager fragmentManager, Fragment fragment);

        public abstract void f(FragmentManager fragmentManager, Fragment fragment);

        public abstract void g(FragmentManager fragmentManager, Fragment fragment, Context context);

        public abstract void h(FragmentManager fragmentManager, Fragment fragment, Bundle bundle);

        public abstract void i(FragmentManager fragmentManager, Fragment fragment);

        public abstract void j(FragmentManager fragmentManager, Fragment fragment, Bundle bundle);

        public abstract void k(FragmentManager fragmentManager, Fragment fragment);

        public abstract void l(FragmentManager fragmentManager, Fragment fragment);

        public abstract void m(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle);

        public abstract void n(FragmentManager fragmentManager, Fragment fragment);
    }

    public interface m {
        void a();
    }

    interface n {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    private class o implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f1301a;
        final int b;
        final int c;

        o(String str, int i, int i2) {
            this.f1301a = str;
            this.b = i;
            this.c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.n
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.u;
            if (fragment == null || this.b >= 0 || this.f1301a != null || !fragment.getChildFragmentManager().Z0()) {
                return FragmentManager.this.b1(arrayList, arrayList2, this.f1301a, this.b, this.c);
            }
            return false;
        }
    }

    static class p implements Fragment.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f1303a;
        final androidx.fragment.app.a b;
        private int c;

        p(androidx.fragment.app.a aVar, boolean z) {
            this.f1303a = z;
            this.b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.k
        public void a() {
            this.c++;
        }

        @Override // androidx.fragment.app.Fragment.k
        public void b() {
            int i = this.c - 1;
            this.c = i;
            if (i != 0) {
                return;
            }
            this.b.r.n1();
        }

        void c() {
            androidx.fragment.app.a aVar = this.b;
            aVar.r.u(aVar, this.f1303a, false, false);
        }

        void d() {
            boolean z = this.c > 0;
            for (Fragment fragment : this.b.r.u0()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            androidx.fragment.app.a aVar = this.b;
            aVar.r.u(aVar, this.f1303a, !z, true);
        }

        public boolean e() {
            return this.c == 0;
        }
    }

    static Fragment B0(View view) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    static boolean H0(int i2) {
        return O || Log.isLoggable("FragmentManager", i2);
    }

    private boolean I0(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.o();
    }

    private void M(Fragment fragment) {
        if (fragment == null || !fragment.equals(h0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    private void Q0(androidx.collection.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentN = bVar.n(i2);
            if (!fragmentN.mAdded) {
                View viewRequireView = fragmentN.requireView();
                fragmentN.mPostponedAlpha = viewRequireView.getAlpha();
                viewRequireView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    private void T(int i2) {
        try {
            this.b = true;
            this.c.d(i2);
            S0(i2, false);
            if (P) {
                Iterator<SpecialEffectsController> it = s().iterator();
                while (it.hasNext()) {
                    it.next().j();
                }
            }
            this.b = false;
            b0(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    private void W() {
        if (this.H) {
            this.H = false;
            t1();
        }
    }

    private void Y() {
        if (P) {
            Iterator<SpecialEffectsController> it = s().iterator();
            while (it.hasNext()) {
                it.next().j();
            }
        } else {
            if (this.m.isEmpty()) {
                return;
            }
            for (Fragment fragment : this.m.keySet()) {
                n(fragment);
                T0(fragment);
            }
        }
    }

    private void a0(boolean z) {
        if (this.b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.r == null) {
            if (!this.G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.r.g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            p();
        }
        if (this.I == null) {
            this.I = new ArrayList<>();
            this.J = new ArrayList<>();
        }
        this.b = true;
        try {
            g0(null, null);
        } finally {
            this.b = false;
        }
    }

    private boolean a1(String str, int i2, int i3) {
        b0(false);
        a0(true);
        Fragment fragment = this.u;
        if (fragment != null && i2 < 0 && str == null && fragment.getChildFragmentManager().Z0()) {
            return true;
        }
        boolean zB1 = b1(this.I, this.J, str, i2, i3);
        if (zB1) {
            this.b = true;
            try {
                g1(this.I, this.J);
                q();
            } catch (Throwable th) {
                q();
                throw th;
            }
        }
        v1();
        W();
        this.c.b();
        return zB1;
    }

    private int c1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, androidx.collection.b<Fragment> bVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            androidx.fragment.app.a aVar = arrayList.get(i5);
            boolean zBooleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.H() && !aVar.F(arrayList, i5 + 1, i3)) {
                if (this.L == null) {
                    this.L = new ArrayList<>();
                }
                p pVar = new p(aVar, zBooleanValue);
                this.L.add(pVar);
                aVar.J(pVar);
                if (zBooleanValue) {
                    aVar.A();
                } else {
                    aVar.B(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                d(bVar);
            }
        }
        return i4;
    }

    private void d(androidx.collection.b<Fragment> bVar) {
        int i2 = this.q;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 5);
        for (Fragment fragment : this.c.n()) {
            if (fragment.mState < iMin) {
                U0(fragment, iMin);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    bVar.add(fragment);
                }
            }
        }
    }

    private static void d0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            androidx.fragment.app.a aVar = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                aVar.w(-1);
                aVar.B(i2 == i3 + (-1));
            } else {
                aVar.w(1);
                aVar.A();
            }
            i2++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, int] */
    private void e0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ?? r1;
        int i4;
        int i5;
        int iC1;
        boolean z;
        int i6;
        ArrayList<Boolean> arrayList3 = arrayList2;
        boolean z2 = arrayList.get(i2).p;
        ArrayList<Fragment> arrayList4 = this.K;
        if (arrayList4 == null) {
            this.K = new ArrayList<>();
        } else {
            arrayList4.clear();
        }
        this.K.addAll(this.c.n());
        Fragment fragmentZ0 = z0();
        boolean z3 = false;
        for (int i7 = i2; i7 < i3; i7++) {
            androidx.fragment.app.a aVar = arrayList.get(i7);
            fragmentZ0 = !arrayList3.get(i7).booleanValue() ? aVar.C(this.K, fragmentZ0) : aVar.K(this.K, fragmentZ0);
            z3 = z3 || aVar.f1397g;
        }
        this.K.clear();
        if (z2 || this.q < 1) {
            r1 = 1;
        } else if (P) {
            for (int i8 = i2; i8 < i3; i8++) {
                Iterator<u.a> it = arrayList.get(i8).f1393a.iterator();
                while (it.hasNext()) {
                    Fragment fragment = it.next().b;
                    if (fragment != null && fragment.mFragmentManager != null) {
                        this.c.p(w(fragment));
                    }
                }
            }
            r1 = 1;
        } else {
            r1 = 1;
            v.C(this.r.f(), this.s, arrayList, arrayList2, i2, i3, false, this.n);
        }
        d0(arrayList, arrayList2, i2, i3);
        if (P) {
            boolean zBooleanValue = arrayList3.get(i3 - 1).booleanValue();
            for (int i9 = i2; i9 < i3; i9++) {
                androidx.fragment.app.a aVar2 = arrayList.get(i9);
                if (zBooleanValue) {
                    int size = aVar2.f1393a.size() - r1;
                    while (i6 >= 0) {
                        Fragment fragment2 = aVar2.f1393a.get(i6).b;
                        if (fragment2 != null) {
                            i6 = size;
                            w(fragment2).m();
                        } else {
                            i6 = size;
                        }
                        i6--;
                    }
                    i6 = size;
                } else {
                    Iterator<u.a> it2 = aVar2.f1393a.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().b;
                        if (fragment3 != null) {
                            w(fragment3).m();
                        }
                    }
                }
            }
            S0(this.q, r1);
            for (SpecialEffectsController specialEffectsController : t(arrayList, i2, i3)) {
                specialEffectsController.r(zBooleanValue);
                specialEffectsController.p();
                specialEffectsController.g();
            }
            i4 = i3;
            arrayList3 = arrayList3;
        } else {
            if (z2) {
                androidx.collection.b bVar = new androidx.collection.b();
                d(bVar);
                i5 = 1;
                i4 = i3;
                iC1 = c1(arrayList, arrayList2, i2, i3, bVar);
                Q0(bVar);
            } else {
                i4 = i3;
                i5 = 1;
                iC1 = i4;
            }
            if (iC1 == i2 || !z2) {
                arrayList3 = arrayList3;
                i4 = i4;
            } else {
                if (this.q >= i5) {
                    z = true;
                    v.C(this.r.f(), this.s, arrayList, arrayList2, i2, iC1, true, this.n);
                } else {
                    z = true;
                }
                S0(this.q, z);
            }
        }
        for (int i10 = i2; i10 < i4; i10++) {
            androidx.fragment.app.a aVar3 = arrayList.get(i10);
            if (arrayList3.get(i10).booleanValue() && aVar3.t >= 0) {
                aVar3.t = -1;
            }
            aVar3.I();
        }
        if (z3) {
            i1();
        }
    }

    private void g0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<p> arrayList3 = this.L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            p pVar = this.L.get(i2);
            if (arrayList != null && !pVar.f1303a && (iIndexOf2 = arrayList.indexOf(pVar.b)) != -1 && arrayList2 != null && arrayList2.get(iIndexOf2).booleanValue()) {
                this.L.remove(i2);
                i2--;
                size--;
                pVar.c();
            } else if (pVar.e() || (arrayList != null && pVar.b.F(arrayList, 0, arrayList.size()))) {
                this.L.remove(i2);
                i2--;
                size--;
                if (arrayList == null || pVar.f1303a || (iIndexOf = arrayList.indexOf(pVar.b)) == -1 || arrayList2 == null || !arrayList2.get(iIndexOf).booleanValue()) {
                    pVar.d();
                } else {
                    pVar.c();
                }
            }
            i2++;
        }
    }

    private void g1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        g0(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).p) {
                if (i3 != i2) {
                    e0(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).p) {
                        i3++;
                    }
                }
                e0(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            e0(arrayList, arrayList2, i3, size);
        }
    }

    private void i1() {
        if (this.l != null) {
            for (int i2 = 0; i2 < this.l.size(); i2++) {
                this.l.get(i2).a();
            }
        }
    }

    static int k1(int i2) {
        if (i2 == 4097) {
            return InputDeviceCompat.SOURCE_MOUSE;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    private void l0() {
        if (P) {
            Iterator<SpecialEffectsController> it = s().iterator();
            while (it.hasNext()) {
                it.next().k();
            }
        } else if (this.L != null) {
            while (!this.L.isEmpty()) {
                this.L.remove(0).d();
            }
        }
    }

    private boolean m0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f1285a) {
            if (this.f1285a.isEmpty()) {
                return false;
            }
            int size = this.f1285a.size();
            boolean zA = false;
            for (int i2 = 0; i2 < size; i2++) {
                zA |= this.f1285a.get(i2).a(arrayList, arrayList2);
            }
            this.f1285a.clear();
            this.r.g().removeCallbacks(this.N);
            return zA;
        }
    }

    private void n(Fragment fragment) {
        HashSet<androidx.core.os.b> hashSet = this.m.get(fragment);
        if (hashSet != null) {
            Iterator<androidx.core.os.b> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            hashSet.clear();
            x(fragment);
            this.m.remove(fragment);
        }
    }

    private androidx.fragment.app.n o0(Fragment fragment) {
        return this.M.d(fragment);
    }

    private void p() {
        if (M0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void q() {
        this.b = false;
        this.J.clear();
        this.I.clear();
    }

    private ViewGroup r0(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.s.d()) {
            View viewC = this.s.c(fragment.mContainerId);
            if (viewC instanceof ViewGroup) {
                return (ViewGroup) viewC;
            }
        }
        return null;
    }

    private void r1(Fragment fragment) {
        ViewGroup viewGroupR0 = r0(fragment);
        if (viewGroupR0 == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        int i2 = R.id.visible_removing_fragment_view_tag;
        if (viewGroupR0.getTag(i2) == null) {
            viewGroupR0.setTag(i2, fragment);
        }
        ((Fragment) viewGroupR0.getTag(i2)).setPopDirection(fragment.getPopDirection());
    }

    private Set<SpecialEffectsController> s() {
        HashSet hashSet = new HashSet();
        Iterator<r> it = this.c.k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = it.next().k().mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.o(viewGroup, A0()));
            }
        }
        return hashSet;
    }

    private Set<SpecialEffectsController> t(ArrayList<androidx.fragment.app.a> arrayList, int i2, int i3) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i2 < i3) {
            Iterator<u.a> it = arrayList.get(i2).f1393a.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(SpecialEffectsController.n(viewGroup, this));
                }
            }
            i2++;
        }
        return hashSet;
    }

    private void t1() {
        Iterator<r> it = this.c.k().iterator();
        while (it.hasNext()) {
            X0(it.next());
        }
    }

    private void u1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new z("FragmentManager"));
        androidx.fragment.app.j<?> jVar = this.r;
        if (jVar != null) {
            try {
                jVar.h("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
                throw runtimeException;
            }
        }
        try {
            X("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e3) {
            Log.e("FragmentManager", "Failed dumping state", e3);
            throw runtimeException;
        }
    }

    private void v(Fragment fragment) {
        Animator animator;
        if (fragment.mView != null) {
            androidx.fragment.app.e.d dVarC = androidx.fragment.app.e.c(this.r.f(), fragment, !fragment.mHidden, fragment.getPopDirection());
            if (dVarC == null || (animator = dVarC.b) == null) {
                if (dVarC != null) {
                    fragment.mView.startAnimation(dVarC.f1364a);
                    dVarC.f1364a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                animator.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    ViewGroup viewGroup = fragment.mContainer;
                    View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    dVarC.b.addListener(new h(this, viewGroup, view, fragment));
                }
                dVarC.b.start();
            }
        }
        F0(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    private void v1() {
        synchronized (this.f1285a) {
            if (this.f1285a.isEmpty()) {
                this.f1290h.f(n0() > 0 && K0(this.t));
            } else {
                this.f1290h.f(true);
            }
        }
    }

    private void x(Fragment fragment) {
        fragment.performDestroyView();
        this.o.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.o(null);
        fragment.mInLayout = false;
    }

    void A() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(0);
    }

    a0 A0() {
        a0 a0Var = this.x;
        if (a0Var != null) {
            return a0Var;
        }
        Fragment fragment = this.t;
        return fragment != null ? fragment.mFragmentManager.A0() : this.y;
    }

    void B(Configuration configuration) {
        for (Fragment fragment : this.c.n()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    boolean C(MenuItem menuItem) {
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.c.n()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    n0 C0(Fragment fragment) {
        return this.M.g(fragment);
    }

    void D() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(1);
    }

    void D0() {
        b0(true);
        if (this.f1290h.c()) {
            Z0();
        } else {
            this.f1289g.c();
        }
    }

    boolean E(Menu menu, MenuInflater menuInflater) {
        if (this.q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.c.n()) {
            if (fragment != null && J0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f1287e != null) {
            for (int i2 = 0; i2 < this.f1287e.size(); i2++) {
                Fragment fragment2 = this.f1287e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f1287e = arrayList;
        return z;
    }

    void E0(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        r1(fragment);
    }

    void F() {
        this.G = true;
        b0(true);
        Y();
        T(-1);
        this.r = null;
        this.s = null;
        this.t = null;
        if (this.f1289g != null) {
            this.f1290h.d();
            this.f1289g = null;
        }
        androidx.activity.result.c<Intent> cVar = this.z;
        if (cVar != null) {
            cVar.c();
            this.A.c();
            this.B.c();
        }
    }

    void F0(Fragment fragment) {
        if (fragment.mAdded && I0(fragment)) {
            this.D = true;
        }
    }

    void G() {
        T(1);
    }

    public boolean G0() {
        return this.G;
    }

    void H() {
        for (Fragment fragment : this.c.n()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    void I(boolean z) {
        for (Fragment fragment : this.c.n()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    void J(Fragment fragment) {
        Iterator<androidx.fragment.app.o> it = this.p.iterator();
        while (it.hasNext()) {
            it.next().a(this, fragment);
        }
    }

    boolean J0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    boolean K(MenuItem menuItem) {
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.c.n()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    boolean K0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.z0()) && K0(fragmentManager.t);
    }

    void L(Menu menu) {
        if (this.q < 1) {
            return;
        }
        for (Fragment fragment : this.c.n()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    boolean L0(int i2) {
        return this.q >= i2;
    }

    public boolean M0() {
        return this.E || this.F;
    }

    void N() {
        T(5);
    }

    void N0(Fragment fragment, String[] strArr, int i2) {
        if (this.B == null) {
            this.r.k(fragment, strArr, i2);
            return;
        }
        this.C.addLast(new LaunchedFragmentInfo(fragment.mWho, i2));
        this.B.a(strArr);
    }

    void O(boolean z) {
        for (Fragment fragment : this.c.n()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    void O0(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (this.z == null) {
            this.r.n(fragment, intent, i2, bundle);
            return;
        }
        this.C.addLast(new LaunchedFragmentInfo(fragment.mWho, i2));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.z.a(intent);
    }

    boolean P(Menu menu) {
        boolean z = false;
        if (this.q < 1) {
            return false;
        }
        for (Fragment fragment : this.c.n()) {
            if (fragment != null && J0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    void P0(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.A == null) {
            this.r.o(fragment, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (H0(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        IntentSenderRequest.b bVar = new IntentSenderRequest.b(intentSender);
        bVar.b(intent2);
        bVar.c(i4, i3);
        IntentSenderRequest intentSenderRequestA = bVar.a();
        this.C.addLast(new LaunchedFragmentInfo(fragment.mWho, i2));
        if (H0(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        this.A.a(intentSenderRequestA);
    }

    void Q() {
        v1();
        M(this.u);
    }

    void R() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(7);
    }

    void R0(Fragment fragment) {
        if (!this.c.c(fragment.mWho)) {
            if (H0(3)) {
                Log.d("FragmentManager", "Ignoring moving " + fragment + " to state " + this.q + "since it is not added to " + this);
                return;
            }
            return;
        }
        T0(fragment);
        View view = fragment.mView;
        if (view != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            float f2 = fragment.mPostponedAlpha;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                view.setAlpha(f2);
            }
            fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
            fragment.mIsNewlyAdded = false;
            androidx.fragment.app.e.d dVarC = androidx.fragment.app.e.c(this.r.f(), fragment, true, fragment.getPopDirection());
            if (dVarC != null) {
                Animation animation = dVarC.f1364a;
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                } else {
                    dVarC.b.setTarget(fragment.mView);
                    dVarC.b.start();
                }
            }
        }
        if (fragment.mHiddenChanged) {
            v(fragment);
        }
    }

    void S() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(5);
    }

    void S0(int i2, boolean z) {
        androidx.fragment.app.j<?> jVar;
        if (this.r == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.q) {
            this.q = i2;
            if (P) {
                this.c.r();
            } else {
                Iterator<Fragment> it = this.c.n().iterator();
                while (it.hasNext()) {
                    R0(it.next());
                }
                for (r rVar : this.c.k()) {
                    Fragment fragmentK = rVar.k();
                    if (!fragmentK.mIsNewlyAdded) {
                        R0(fragmentK);
                    }
                    if (fragmentK.mRemoving && !fragmentK.isInBackStack()) {
                        this.c.q(rVar);
                    }
                }
            }
            t1();
            if (this.D && (jVar = this.r) != null && this.q == 7) {
                jVar.p();
                this.D = false;
            }
        }
    }

    void T0(Fragment fragment) {
        U0(fragment, this.q);
    }

    void U() {
        this.F = true;
        this.M.j(true);
        T(4);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0063  */
    /* JADX WARN: Code duplicated, block: B:33:0x0068  */
    /* JADX WARN: Code duplicated, block: B:35:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    /* JADX WARN: Code duplicated, block: B:39:0x0077  */
    /* JADX WARN: Code duplicated, block: B:97:0x015d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0160  */
    void U0(Fragment fragment, int i2) {
        ViewGroup viewGroup;
        r rVarM = this.c.m(fragment.mWho);
        int i3 = 1;
        if (rVarM == null) {
            rVarM = new r(this.o, this.c, fragment);
            rVarM.u(1);
        }
        if (fragment.mFromLayout && fragment.mInLayout && fragment.mState == 2) {
            i2 = Math.max(i2, 2);
        }
        int iMin = Math.min(i2, rVarM.d());
        int i4 = fragment.mState;
        if (i4 <= iMin) {
            if (i4 < iMin && !this.m.isEmpty()) {
                n(fragment);
            }
            int i5 = fragment.mState;
            if (i5 != -1) {
                if (i5 != 0) {
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 4) {
                                if (i5 == 5) {
                                }
                            }
                            if (iMin > 5) {
                                rVarM.p();
                            }
                        }
                        if (iMin > 4) {
                            rVarM.v();
                        }
                        if (iMin > 5) {
                            rVarM.p();
                        }
                    }
                    if (iMin > 2) {
                        rVarM.a();
                    }
                    if (iMin > 4) {
                        rVarM.v();
                    }
                    if (iMin > 5) {
                        rVarM.p();
                    }
                }
                if (iMin > -1) {
                    rVarM.j();
                }
                if (iMin > 1) {
                    rVarM.f();
                }
                if (iMin > 2) {
                    rVarM.a();
                }
                if (iMin > 4) {
                    rVarM.v();
                }
                if (iMin > 5) {
                    rVarM.p();
                }
            } else if (iMin > -1) {
                rVarM.c();
            }
            if (iMin > 0) {
                rVarM.e();
            }
            if (iMin > -1) {
                rVarM.j();
            }
            if (iMin > 1) {
                rVarM.f();
            }
            if (iMin > 2) {
                rVarM.a();
            }
            if (iMin > 4) {
                rVarM.v();
            }
            if (iMin > 5) {
                rVarM.p();
            }
        } else if (i4 > iMin) {
            if (i4 == 0) {
                i3 = iMin;
                if (i3 < 0) {
                    rVarM.i();
                }
                iMin = i3;
            } else {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                if (i4 == 7) {
                                    if (iMin < 7) {
                                        rVarM.n();
                                    }
                                }
                            }
                            if (iMin < 5) {
                                rVarM.w();
                            }
                        }
                        if (iMin < 4) {
                            if (H0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.mView != null && this.r.l(fragment) && fragment.mSavedViewState == null) {
                                rVarM.t();
                            }
                        }
                    }
                    if (iMin < 2) {
                        androidx.fragment.app.e.d dVarC = null;
                        View view = fragment.mView;
                        if (view != null && (viewGroup = fragment.mContainer) != null) {
                            viewGroup.endViewTransition(view);
                            fragment.mView.clearAnimation();
                            if (!fragment.isRemovingParent()) {
                                if (this.q > -1 && !this.G && fragment.mView.getVisibility() == 0 && fragment.mPostponedAlpha >= BitmapDescriptorFactory.HUE_RED) {
                                    dVarC = androidx.fragment.app.e.c(this.r.f(), fragment, false, fragment.getPopDirection());
                                }
                                fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                                ViewGroup viewGroup2 = fragment.mContainer;
                                View view2 = fragment.mView;
                                if (dVarC != null) {
                                    androidx.fragment.app.e.a(fragment, dVarC, this.n);
                                }
                                viewGroup2.removeView(view2);
                                if (H0(2)) {
                                    Log.v("FragmentManager", "Removing view " + view2 + " for fragment " + fragment + " from container " + viewGroup2);
                                }
                                if (viewGroup2 != fragment.mContainer) {
                                    return;
                                }
                            }
                        }
                        if (this.m.get(fragment) == null) {
                            rVarM.h();
                        }
                    }
                }
                if (iMin >= 1) {
                    i3 = iMin;
                } else if (this.m.get(fragment) == null) {
                    rVarM.g();
                    i3 = iMin;
                }
                if (i3 < 0) {
                    rVarM.i();
                }
                iMin = i3;
            }
        }
        if (fragment.mState != iMin) {
            if (H0(3)) {
                Log.d("FragmentManager", "moveToState: Fragment state for " + fragment + " not updated inline; expected state " + iMin + " found " + fragment.mState);
            }
            fragment.mState = iMin;
        }
    }

    void V() {
        T(2);
    }

    void V0() {
        if (this.r == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.M.j(false);
        for (Fragment fragment : this.c.n()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    void W0(androidx.fragment.app.g gVar) {
        View view;
        for (r rVar : this.c.k()) {
            Fragment fragmentK = rVar.k();
            if (fragmentK.mContainerId == gVar.getId() && (view = fragmentK.mView) != null && view.getParent() == null) {
                fragmentK.mContainer = gVar;
                rVar.b();
            }
        }
    }

    public void X(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f1287e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment = this.f1287e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f1286d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                androidx.fragment.app.a aVar = this.f1286d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.y(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.f1285a) {
            int size3 = this.f1285a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size3; i4++) {
                    n nVar = this.f1285a.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(nVar);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.s);
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    void X0(r rVar) {
        Fragment fragmentK = rVar.k();
        if (fragmentK.mDeferStart) {
            if (this.b) {
                this.H = true;
                return;
            }
            fragmentK.mDeferStart = false;
            if (P) {
                rVar.m();
            } else {
                T0(fragmentK);
            }
        }
    }

    public void Y0(int i2, int i3) {
        if (i2 >= 0) {
            Z(new o(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    void Z(n nVar, boolean z) {
        if (!z) {
            if (this.r == null) {
                if (!this.G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            p();
        }
        synchronized (this.f1285a) {
            if (this.r == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f1285a.add(nVar);
                n1();
            }
        }
    }

    public boolean Z0() {
        return a1(null, -1, 0);
    }

    boolean b0(boolean z) {
        a0(z);
        boolean z2 = false;
        while (m0(this.I, this.J)) {
            this.b = true;
            try {
                g1(this.I, this.J);
                q();
                z2 = true;
            } catch (Throwable th) {
                q();
                throw th;
            }
        }
        v1();
        W();
        this.c.b();
        return z2;
    }

    boolean b1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        Boolean bool = Boolean.TRUE;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f1286d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f1286d.remove(size));
            arrayList2.add(bool);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = this.f1286d.get(size2);
                    if ((str != null && str.equals(aVar.D())) || (i2 >= 0 && i2 == aVar.t)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = this.f1286d.get(size2);
                        if (str == null || !str.equals(aVar2.D())) {
                            if (i2 < 0 || i2 != aVar2.t) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            } else {
                i4 = -1;
            }
            if (i4 == this.f1286d.size() - 1) {
                return false;
            }
            for (int size3 = this.f1286d.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.f1286d.remove(size3));
                arrayList2.add(bool);
            }
        }
        return true;
    }

    void c0(n nVar, boolean z) {
        if (z && (this.r == null || this.G)) {
            return;
        }
        a0(z);
        if (nVar.a(this.I, this.J)) {
            this.b = true;
            try {
                g1(this.I, this.J);
                q();
            } catch (Throwable th) {
                q();
                throw th;
            }
        }
        v1();
        W();
        this.c.b();
    }

    public void d1(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager == this) {
            bundle.putString(str, fragment.mWho);
            return;
        }
        u1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    void e(androidx.fragment.app.a aVar) {
        if (this.f1286d == null) {
            this.f1286d = new ArrayList<>();
        }
        this.f1286d.add(aVar);
    }

    void e1(Fragment fragment, androidx.core.os.b bVar) {
        HashSet<androidx.core.os.b> hashSet = this.m.get(fragment);
        if (hashSet != null && hashSet.remove(bVar) && hashSet.isEmpty()) {
            this.m.remove(fragment);
            if (fragment.mState < 5) {
                x(fragment);
                T0(fragment);
            }
        }
    }

    void f(Fragment fragment, androidx.core.os.b bVar) {
        if (this.m.get(fragment) == null) {
            this.m.put(fragment, new HashSet<>());
        }
        this.m.get(fragment).add(bVar);
    }

    public boolean f0() {
        boolean zB0 = b0(true);
        l0();
        return zB0;
    }

    void f1(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            this.c.s(fragment);
            if (I0(fragment)) {
                this.D = true;
            }
            fragment.mRemoving = true;
            r1(fragment);
        }
    }

    r g(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        r rVarW = w(fragment);
        fragment.mFragmentManager = this;
        this.c.p(rVarW);
        if (!fragment.mDetached) {
            this.c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (I0(fragment)) {
                this.D = true;
            }
        }
        return rVarW;
    }

    public void h(androidx.fragment.app.o oVar) {
        this.p.add(oVar);
    }

    Fragment h0(String str) {
        return this.c.f(str);
    }

    void h1(Fragment fragment) {
        this.M.i(fragment);
    }

    void i(Fragment fragment) {
        this.M.a(fragment);
    }

    public Fragment i0(int i2) {
        return this.c.g(i2);
    }

    int j() {
        return this.i.getAndIncrement();
    }

    public Fragment j0(String str) {
        return this.c.h(str);
    }

    void j1(Parcelable parcelable) {
        r rVar;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f1304a == null) {
            return;
        }
        this.c.t();
        for (FragmentState fragmentState : fragmentManagerState.f1304a) {
            if (fragmentState != null) {
                Fragment fragmentC = this.M.c(fragmentState.b);
                if (fragmentC != null) {
                    if (H0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragmentC);
                    }
                    rVar = new r(this.o, this.c, fragmentC, fragmentState);
                } else {
                    rVar = new r(this.o, this.c, this.r.f().getClassLoader(), s0(), fragmentState);
                }
                Fragment fragmentK = rVar.k();
                fragmentK.mFragmentManager = this;
                if (H0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragmentK.mWho + "): " + fragmentK);
                }
                rVar.o(this.r.f().getClassLoader());
                this.c.p(rVar);
                rVar.u(this.q);
            }
        }
        for (Fragment fragment : this.M.f()) {
            if (!this.c.c(fragment.mWho)) {
                if (H0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f1304a);
                }
                this.M.i(fragment);
                fragment.mFragmentManager = this;
                r rVar2 = new r(this.o, this.c, fragment);
                rVar2.u(1);
                rVar2.m();
                fragment.mRemoving = true;
                rVar2.m();
            }
        }
        this.c.u(fragmentManagerState.b);
        if (fragmentManagerState.c != null) {
            this.f1286d = new ArrayList<>(fragmentManagerState.c.length);
            int i2 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.c;
                if (i2 >= backStackStateArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarA = backStackStateArr[i2].a(this);
                if (H0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i2 + " (index " + aVarA.t + "): " + aVarA);
                    PrintWriter printWriter = new PrintWriter(new z("FragmentManager"));
                    aVarA.z("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1286d.add(aVarA);
                i2++;
            }
        } else {
            this.f1286d = null;
        }
        this.i.set(fragmentManagerState.f1305d);
        String str = fragmentManagerState.f1306e;
        if (str != null) {
            Fragment fragmentH0 = h0(str);
            this.u = fragmentH0;
            M(fragmentH0);
        }
        ArrayList<String> arrayList = fragmentManagerState.f1307f;
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Bundle bundle = fragmentManagerState.f1308g.get(i3);
                bundle.setClassLoader(this.r.f().getClassLoader());
                this.j.put(arrayList.get(i3), bundle);
            }
        }
        this.C = new ArrayDeque<>(fragmentManagerState.f1309h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    void k(androidx.fragment.app.j<?> jVar, androidx.fragment.app.f fVar, Fragment fragment) {
        String str;
        androidx.lifecycle.r rVar;
        if (this.r != null) {
            throw new IllegalStateException("Already attached");
        }
        this.r = jVar;
        this.s = fVar;
        this.t = fragment;
        if (fragment != null) {
            h(new i(this, fragment));
        } else if (jVar instanceof androidx.fragment.app.o) {
            h((androidx.fragment.app.o) jVar);
        }
        if (this.t != null) {
            v1();
        }
        if (jVar instanceof androidx.activity.c) {
            androidx.activity.c cVar = (androidx.activity.c) jVar;
            OnBackPressedDispatcher onBackPressedDispatcher = cVar.getOnBackPressedDispatcher();
            this.f1289g = onBackPressedDispatcher;
            if (fragment != null) {
                rVar = cVar;
                rVar = fragment;
            }
            rVar = cVar;
            onBackPressedDispatcher.a(rVar, this.f1290h);
        }
        if (fragment != null) {
            this.M = fragment.mFragmentManager.o0(fragment);
        } else if (jVar instanceof o0) {
            this.M = androidx.fragment.app.n.e(((o0) jVar).getViewModelStore());
        } else {
            this.M = new androidx.fragment.app.n(false);
        }
        this.M.j(M0());
        this.c.x(this.M);
        Object obj = this.r;
        if (obj instanceof androidx.activity.result.d) {
            ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.d) obj).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.z = activityResultRegistry.i(str2 + "StartActivityForResult", new androidx.activity.result.e.c(), new j());
            this.A = activityResultRegistry.i(str2 + "StartIntentSenderForResult", new k(), new a());
            this.B = activityResultRegistry.i(str2 + "RequestPermissions", new androidx.activity.result.e.b(), new b());
        }
    }

    Fragment k0(String str) {
        return this.c.i(str);
    }

    void l(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.c.a(fragment);
            if (H0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (I0(fragment)) {
                this.D = true;
            }
        }
    }

    Parcelable l1() {
        int size;
        l0();
        Y();
        b0(true);
        this.E = true;
        this.M.j(true);
        ArrayList<FragmentState> arrayListV = this.c.v();
        BackStackState[] backStackStateArr = null;
        if (arrayListV.isEmpty()) {
            if (H0(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        ArrayList<String> arrayListW = this.c.w();
        ArrayList<androidx.fragment.app.a> arrayList = this.f1286d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i2 = 0; i2 < size; i2++) {
                backStackStateArr[i2] = new BackStackState(this.f1286d.get(i2));
                if (H0(2)) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.f1286d.get(i2));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f1304a = arrayListV;
        fragmentManagerState.b = arrayListW;
        fragmentManagerState.c = backStackStateArr;
        fragmentManagerState.f1305d = this.i.get();
        Fragment fragment = this.u;
        if (fragment != null) {
            fragmentManagerState.f1306e = fragment.mWho;
        }
        fragmentManagerState.f1307f.addAll(this.j.keySet());
        fragmentManagerState.f1308g.addAll(this.j.values());
        fragmentManagerState.f1309h = new ArrayList<>(this.C);
        return fragmentManagerState;
    }

    public u m() {
        return new androidx.fragment.app.a(this);
    }

    public Fragment.SavedState m1(Fragment fragment) {
        r rVarM = this.c.m(fragment.mWho);
        if (rVarM != null && rVarM.k().equals(fragment)) {
            return rVarM.r();
        }
        u1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    public int n0() {
        ArrayList<androidx.fragment.app.a> arrayList = this.f1286d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    void n1() {
        synchronized (this.f1285a) {
            ArrayList<p> arrayList = this.L;
            boolean z = (arrayList == null || arrayList.isEmpty()) ? false : true;
            boolean z2 = this.f1285a.size() == 1;
            if (z || z2) {
                this.r.g().removeCallbacks(this.N);
                this.r.g().post(this.N);
                v1();
            }
        }
    }

    boolean o() {
        boolean zI0 = false;
        for (Fragment fragment : this.c.l()) {
            if (fragment != null) {
                zI0 = I0(fragment);
            }
            if (zI0) {
                return true;
            }
        }
        return false;
    }

    void o1(Fragment fragment, boolean z) {
        ViewGroup viewGroupR0 = r0(fragment);
        if (viewGroupR0 == null || !(viewGroupR0 instanceof androidx.fragment.app.g)) {
            return;
        }
        ((androidx.fragment.app.g) viewGroupR0).setDrawDisappearingViewsLast(!z);
    }

    androidx.fragment.app.f p0() {
        return this.s;
    }

    void p1(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(h0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public Fragment q0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragmentH0 = h0(string);
        if (fragmentH0 != null) {
            return fragmentH0;
        }
        u1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        throw null;
    }

    void q1(Fragment fragment) {
        if (fragment == null || (fragment.equals(h0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.u;
            this.u = fragment;
            M(fragment2);
            M(this.u);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void r(String str) {
        this.j.remove(str);
    }

    public androidx.fragment.app.i s0() {
        androidx.fragment.app.i iVar = this.v;
        if (iVar != null) {
            return iVar;
        }
        Fragment fragment = this.t;
        return fragment != null ? fragment.mFragmentManager.s0() : this.w;
    }

    void s1(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    t t0() {
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append(VectorFormat.DEFAULT_PREFIX);
            sb.append(Integer.toHexString(System.identityHashCode(this.t)));
            sb.append(VectorFormat.DEFAULT_SUFFIX);
        } else {
            androidx.fragment.app.j<?> jVar = this.r;
            if (jVar != null) {
                sb.append(jVar.getClass().getSimpleName());
                sb.append(VectorFormat.DEFAULT_PREFIX);
                sb.append(Integer.toHexString(System.identityHashCode(this.r)));
                sb.append(VectorFormat.DEFAULT_SUFFIX);
            } else {
                sb.append(BuildConfig.COMMON_MODULE_COMMIT_ID);
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    void u(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.B(z3);
        } else {
            aVar.A();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.q >= 1) {
            v.C(this.r.f(), this.s, arrayList, arrayList2, 0, 1, true, this.n);
        }
        if (z3) {
            S0(this.q, true);
        }
        for (Fragment fragment : this.c.l()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.E(fragment.mContainerId)) {
                float f2 = fragment.mPostponedAlpha;
                if (f2 > BitmapDescriptorFactory.HUE_RED) {
                    fragment.mView.setAlpha(f2);
                }
                if (z3) {
                    fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    public List<Fragment> u0() {
        return this.c.n();
    }

    androidx.fragment.app.j<?> v0() {
        return this.r;
    }

    r w(Fragment fragment) {
        r rVarM = this.c.m(fragment.mWho);
        if (rVarM != null) {
            return rVarM;
        }
        r rVar = new r(this.o, this.c, fragment);
        rVar.o(this.r.f().getClassLoader());
        rVar.u(this.q);
        return rVar;
    }

    LayoutInflater.Factory2 w0() {
        return this.f1288f;
    }

    androidx.fragment.app.l x0() {
        return this.o;
    }

    void y(Fragment fragment) {
        if (H0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (H0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.c.s(fragment);
            if (I0(fragment)) {
                this.D = true;
            }
            r1(fragment);
        }
    }

    Fragment y0() {
        return this.t;
    }

    void z() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(4);
    }

    public Fragment z0() {
        return this.u;
    }

    @SuppressLint({"BanParcelableUsage"})
    static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f1293a;
        int b;

        class a implements Parcelable.Creator<LaunchedFragmentInfo> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        }

        LaunchedFragmentInfo(String str, int i) {
            this.f1293a = str;
            this.b = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1293a);
            parcel.writeInt(this.b);
        }

        LaunchedFragmentInfo(Parcel parcel) {
            this.f1293a = parcel.readString();
            this.b = parcel.readInt();
        }
    }
}
