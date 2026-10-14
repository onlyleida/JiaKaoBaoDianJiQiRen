package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f1405a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    static final x b;
    static final x c;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f1406a;
        final /* synthetic */ Fragment b;
        final /* synthetic */ androidx.core.os.b c;

        a(g gVar, Fragment fragment, androidx.core.os.b bVar) {
            this.f1406a = gVar;
            this.b = fragment;
            this.c = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1406a.a(this.b, this.c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f1407a;

        b(ArrayList arrayList) {
            this.f1407a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.B(this.f1407a, 4);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f1408a;
        final /* synthetic */ Fragment b;
        final /* synthetic */ androidx.core.os.b c;

        c(g gVar, Fragment fragment, androidx.core.os.b bVar) {
            this.f1408a = gVar;
            this.b = fragment;
            this.c = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1408a.a(this.b, this.c);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f1409a;
        final /* synthetic */ x b;
        final /* synthetic */ View c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Fragment f1410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f1411e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f1412f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ ArrayList f1413g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Object f1414h;

        d(Object obj, x xVar, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f1409a = obj;
            this.b = xVar;
            this.c = view;
            this.f1410d = fragment;
            this.f1411e = arrayList;
            this.f1412f = arrayList2;
            this.f1413g = arrayList3;
            this.f1414h = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f1409a;
            if (obj != null) {
                this.b.p(obj, this.c);
                this.f1412f.addAll(v.k(this.b, this.f1409a, this.f1410d, this.f1411e, this.c));
            }
            if (this.f1413g != null) {
                if (this.f1414h != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.c);
                    this.b.q(this.f1414h, this.f1413g, arrayList);
                }
                this.f1413g.clear();
                this.f1413g.add(this.c);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Fragment f1415a;
        final /* synthetic */ Fragment b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ androidx.collection.a f1416d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f1417e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ x f1418f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Rect f1419g;

        e(Fragment fragment, Fragment fragment2, boolean z, androidx.collection.a aVar, View view, x xVar, Rect rect) {
            this.f1415a = fragment;
            this.b = fragment2;
            this.c = z;
            this.f1416d = aVar;
            this.f1417e = view;
            this.f1418f = xVar;
            this.f1419g = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.f(this.f1415a, this.b, this.c, this.f1416d, false);
            View view = this.f1417e;
            if (view != null) {
                this.f1418f.k(view, this.f1419g);
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ x f1420a;
        final /* synthetic */ androidx.collection.a b;
        final /* synthetic */ Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ h f1421d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f1422e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f1423f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Fragment f1424g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Fragment f1425h;
        final /* synthetic */ boolean i;
        final /* synthetic */ ArrayList j;
        final /* synthetic */ Object k;
        final /* synthetic */ Rect l;

        f(x xVar, androidx.collection.a aVar, Object obj, h hVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f1420a = xVar;
            this.b = aVar;
            this.c = obj;
            this.f1421d = hVar;
            this.f1422e = arrayList;
            this.f1423f = view;
            this.f1424g = fragment;
            this.f1425h = fragment2;
            this.i = z;
            this.j = arrayList2;
            this.k = obj2;
            this.l = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.collection.a<String, View> aVarH = v.h(this.f1420a, this.b, this.c, this.f1421d);
            if (aVarH != null) {
                this.f1422e.addAll(aVarH.values());
                this.f1422e.add(this.f1423f);
            }
            v.f(this.f1424g, this.f1425h, this.i, aVarH, false);
            Object obj = this.c;
            if (obj != null) {
                this.f1420a.A(obj, this.j, this.f1422e);
                View viewT = v.t(aVarH, this.f1421d, this.k, this.i);
                if (viewT != null) {
                    this.f1420a.k(viewT, this.l);
                }
            }
        }
    }

    interface g {
        void a(Fragment fragment, androidx.core.os.b bVar);

        void b(Fragment fragment, androidx.core.os.b bVar);
    }

    static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Fragment f1426a;
        public boolean b;
        public androidx.fragment.app.a c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Fragment f1427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1428e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public androidx.fragment.app.a f1429f;

        h() {
        }
    }

    static {
        b = Build.VERSION.SDK_INT >= 21 ? new w() : null;
        c = x();
    }

    private static void A(x xVar, Object obj, Object obj2, androidx.collection.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        ArrayList<String> arrayList = aVar2.n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = aVar.get(z ? aVar2.o.get(0) : aVar2.n.get(0));
        xVar.v(obj, view);
        if (obj2 != null) {
            xVar.v(obj2, view);
        }
    }

    static void B(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    static void C(Context context, androidx.fragment.app.f fVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, g gVar) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            androidx.fragment.app.a aVar = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                e(aVar, sparseArray, z);
            } else {
                c(aVar, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = sparseArray.keyAt(i4);
                androidx.collection.a<String, String> aVarD = d(iKeyAt, arrayList, arrayList2, i, i2);
                h hVar = (h) sparseArray.valueAt(i4);
                if (fVar.d() && (viewGroup = (ViewGroup) fVar.c(iKeyAt)) != null) {
                    if (z) {
                        o(viewGroup, hVar, view, aVarD, gVar);
                    } else {
                        n(viewGroup, hVar, view, aVarD, gVar);
                    }
                }
            }
        }
    }

    private static void a(ArrayList<View> arrayList, androidx.collection.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewValueAt = aVar.valueAt(size);
            if (collection.contains(ViewCompat.getTransitionName(viewValueAt))) {
                arrayList.add(viewValueAt);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x006e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0070  */
    /* JADX WARN: Code duplicated, block: B:64:0x007f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0081  */
    /* JADX WARN: Code duplicated, block: B:66:0x0084  */
    /* JADX WARN: Code duplicated, block: B:70:0x008c  */
    /* JADX WARN: Code duplicated, block: B:71:0x008e  */
    private static void b(androidx.fragment.app.a aVar, u.a aVar2, SparseArray<h> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        View view;
        boolean z6;
        Fragment fragment = aVar2.b;
        if (fragment == null || (i = fragment.mContainerId) == 0) {
            return;
        }
        int i2 = z ? f1405a[aVar2.f1399a] : aVar2.f1399a;
        boolean z7 = false;
        boolean z8 = true;
        if (i2 == 1) {
            if (z2) {
                z3 = fragment.mIsNewlyAdded;
            } else if (!fragment.mAdded || fragment.mHidden) {
                z3 = false;
            } else {
                z3 = true;
            }
            z7 = z3;
            z4 = false;
            z5 = false;
        } else if (i2 == 3) {
            if (z2 ? !fragment.mAdded || fragment.mHidden : fragment.mAdded || (view = fragment.mView) == null || view.getVisibility() != 0 || fragment.mPostponedAlpha < BitmapDescriptorFactory.HUE_RED) {
                z6 = false;
            } else {
                z6 = true;
            }
            z5 = z6;
            z4 = true;
            z8 = false;
        } else if (i2 != 4) {
            if (i2 != 5) {
                if (i2 != 6) {
                    if (i2 != 7) {
                        z4 = false;
                        z8 = false;
                    } else {
                        if (z2) {
                            z3 = fragment.mIsNewlyAdded;
                        } else {
                            if (fragment.mAdded) {
                            }
                            z3 = false;
                        }
                        z7 = z3;
                        z4 = false;
                    }
                }
                if (z2) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                z5 = z6;
                z4 = true;
                z8 = false;
            } else {
                if (!z2) {
                    z3 = fragment.mHidden;
                } else if (fragment.mHiddenChanged && !fragment.mHidden && fragment.mAdded) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                z7 = z3;
                z4 = false;
            }
            z5 = false;
        } else {
            if (!z2 ? !(!fragment.mAdded || fragment.mHidden) : fragment.mHiddenChanged && fragment.mAdded && fragment.mHidden) {
                z6 = false;
            } else {
                z6 = true;
            }
            z5 = z6;
            z4 = true;
            z8 = false;
        }
        h hVarP = sparseArray.get(i);
        if (z7) {
            hVarP = p(hVarP, sparseArray, i);
            hVarP.f1426a = fragment;
            hVarP.b = z;
            hVarP.c = aVar;
        }
        if (!z2 && z8) {
            if (hVarP != null && hVarP.f1427d == fragment) {
                hVarP.f1427d = null;
            }
            if (!aVar.p) {
                FragmentManager fragmentManager = aVar.r;
                fragmentManager.t0().p(fragmentManager.w(fragment));
                fragmentManager.T0(fragment);
            }
        }
        if (z5 && (hVarP == null || hVarP.f1427d == null)) {
            hVarP = p(hVarP, sparseArray, i);
            hVarP.f1427d = fragment;
            hVarP.f1428e = z;
            hVarP.f1429f = aVar;
        }
        if (z2 || !z4 || hVarP == null || hVarP.f1426a != fragment) {
            return;
        }
        hVarP.f1426a = null;
    }

    public static void c(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z) {
        int size = aVar.f1393a.size();
        for (int i = 0; i < size; i++) {
            b(aVar, aVar.f1393a.get(i), sparseArray, false, z);
        }
    }

    private static androidx.collection.a<String, String> d(int i, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        androidx.collection.a<String, String> aVar = new androidx.collection.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (aVar2.E(i)) {
                boolean zBooleanValue = arrayList2.get(i4).booleanValue();
                ArrayList<String> arrayList5 = aVar2.n;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (zBooleanValue) {
                        arrayList3 = aVar2.n;
                        arrayList4 = aVar2.o;
                    } else {
                        ArrayList<String> arrayList6 = aVar2.n;
                        arrayList3 = aVar2.o;
                        arrayList4 = arrayList6;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String strRemove = aVar.remove(str2);
                        if (strRemove != null) {
                            aVar.put(str, strRemove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    public static void e(androidx.fragment.app.a aVar, SparseArray<h> sparseArray, boolean z) {
        if (aVar.r.p0().d()) {
            for (int size = aVar.f1393a.size() - 1; size >= 0; size--) {
                b(aVar, aVar.f1393a.get(size), sparseArray, true, z);
            }
        }
    }

    static void f(Fragment fragment, Fragment fragment2, boolean z, androidx.collection.a<String, View> aVar, boolean z2) {
        androidx.core.app.o enterTransitionCallback = z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.keyAt(i));
                arrayList.add(aVar.valueAt(i));
            }
            if (z2) {
                enterTransitionCallback.f(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.e(arrayList2, arrayList, null);
            }
        }
    }

    private static boolean g(x xVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!xVar.e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    static androidx.collection.a<String, View> h(x xVar, androidx.collection.a<String, String> aVar, Object obj, h hVar) {
        androidx.core.app.o enterTransitionCallback;
        ArrayList<String> arrayList;
        String strQ;
        Fragment fragment = hVar.f1426a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        androidx.collection.a<String, View> aVar2 = new androidx.collection.a<>();
        xVar.j(aVar2, view);
        androidx.fragment.app.a aVar3 = hVar.c;
        if (hVar.b) {
            enterTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = aVar3.n;
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = aVar3.o;
        }
        if (arrayList != null) {
            aVar2.retainAll(arrayList);
            aVar2.retainAll(aVar.values());
        }
        if (enterTransitionCallback != null) {
            enterTransitionCallback.c(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = aVar2.get(str);
                if (view2 == null) {
                    String strQ2 = q(aVar, str);
                    if (strQ2 != null) {
                        aVar.remove(strQ2);
                    }
                } else if (!str.equals(ViewCompat.getTransitionName(view2)) && (strQ = q(aVar, str)) != null) {
                    aVar.put(strQ, ViewCompat.getTransitionName(view2));
                }
            }
        } else {
            y(aVar, aVar2);
        }
        return aVar2;
    }

    private static androidx.collection.a<String, View> i(x xVar, androidx.collection.a<String, String> aVar, Object obj, h hVar) {
        androidx.core.app.o exitTransitionCallback;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = hVar.f1427d;
        androidx.collection.a<String, View> aVar2 = new androidx.collection.a<>();
        xVar.j(aVar2, fragment.requireView());
        androidx.fragment.app.a aVar3 = hVar.f1429f;
        if (hVar.f1428e) {
            exitTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = aVar3.o;
        } else {
            exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = aVar3.n;
        }
        if (arrayList != null) {
            aVar2.retainAll(arrayList);
        }
        if (exitTransitionCallback != null) {
            exitTransitionCallback.c(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(ViewCompat.getTransitionName(view))) {
                    aVar.put(ViewCompat.getTransitionName(view), aVar.remove(str));
                }
            }
        } else {
            aVar.retainAll(aVar2.keySet());
        }
        return aVar2;
    }

    private static x j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        x xVar = b;
        if (xVar != null && g(xVar, arrayList)) {
            return xVar;
        }
        x xVar2 = c;
        if (xVar2 != null && g(xVar2, arrayList)) {
            return xVar2;
        }
        if (xVar == null && xVar2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    static ArrayList<View> k(x xVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            xVar.f(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        xVar.b(obj, arrayList2);
        return arrayList2;
    }

    private static Object l(x xVar, ViewGroup viewGroup, View view, androidx.collection.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        Rect rect;
        Fragment fragment = hVar.f1426a;
        Fragment fragment2 = hVar.f1427d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = hVar.b;
        Object objU = aVar.isEmpty() ? null : u(xVar, fragment, fragment2, z);
        androidx.collection.a<String, View> aVarI = i(xVar, aVar, objU, hVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarI.values());
            obj3 = objU;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z, aVarI, true);
        if (obj3 != null) {
            rect = new Rect();
            xVar.z(obj3, view, arrayList);
            A(xVar, obj3, obj2, aVarI, hVar.f1428e, hVar.f1429f);
            if (obj != null) {
                xVar.u(obj, rect);
            }
        } else {
            rect = null;
        }
        OneShotPreDrawListener.add(viewGroup, new f(xVar, aVar, obj3, hVar, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return obj3;
    }

    private static Object m(x xVar, ViewGroup viewGroup, View view, androidx.collection.a<String, String> aVar, h hVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = hVar.f1426a;
        Fragment fragment2 = hVar.f1427d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = hVar.b;
        Object objU = aVar.isEmpty() ? null : u(xVar, fragment, fragment2, z);
        androidx.collection.a<String, View> aVarI = i(xVar, aVar, objU, hVar);
        androidx.collection.a<String, View> aVarH = h(xVar, aVar, objU, hVar);
        if (aVar.isEmpty()) {
            if (aVarI != null) {
                aVarI.clear();
            }
            if (aVarH != null) {
                aVarH.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, aVarI, aVar.keySet());
            a(arrayList2, aVarH, aVar.values());
            obj3 = objU;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z, aVarI, true);
        if (obj3 != null) {
            arrayList2.add(view);
            xVar.z(obj3, view, arrayList);
            A(xVar, obj3, obj2, aVarI, hVar.f1428e, hVar.f1429f);
            Rect rect2 = new Rect();
            View viewT = t(aVarH, hVar, obj, z);
            if (viewT != null) {
                xVar.u(obj, rect2);
            }
            rect = rect2;
            view2 = viewT;
        } else {
            view2 = null;
            rect = null;
        }
        OneShotPreDrawListener.add(viewGroup, new e(fragment, fragment2, z, aVarH, view2, xVar, rect));
        return obj3;
    }

    private static void n(ViewGroup viewGroup, h hVar, View view, androidx.collection.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.f1426a;
        Fragment fragment2 = hVar.f1427d;
        x xVarJ = j(fragment2, fragment);
        if (xVarJ == null) {
            return;
        }
        boolean z = hVar.b;
        boolean z2 = hVar.f1428e;
        Object objR = r(xVarJ, fragment, z);
        Object objS = s(xVarJ, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objL = l(xVarJ, viewGroup, view, aVar, hVar, arrayList, arrayList2, objR, objS);
        if (objR == null && objL == null) {
            obj = objS;
            if (obj == null) {
                return;
            }
        } else {
            obj = objS;
        }
        ArrayList<View> arrayListK = k(xVarJ, obj, fragment2, arrayList, view);
        if (arrayListK == null || arrayListK.isEmpty()) {
            obj = null;
        }
        Object obj2 = obj;
        xVarJ.a(objR, view);
        Object objV = v(xVarJ, objR, obj2, objL, fragment, hVar.b);
        if (fragment2 != null && arrayListK != null && (arrayListK.size() > 0 || arrayList.size() > 0)) {
            androidx.core.os.b bVar = new androidx.core.os.b();
            gVar.b(fragment2, bVar);
            xVarJ.w(fragment2, objV, bVar, new c(gVar, fragment2, bVar));
        }
        if (objV != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            xVarJ.t(objV, objR, arrayList3, obj2, arrayListK, objL, arrayList2);
            z(xVarJ, viewGroup, fragment, view, arrayList2, objR, arrayList3, obj2, arrayListK);
            xVarJ.x(viewGroup, arrayList2, aVar);
            xVarJ.c(viewGroup, objV);
            xVarJ.s(viewGroup, arrayList2, aVar);
        }
    }

    private static void o(ViewGroup viewGroup, h hVar, View view, androidx.collection.a<String, String> aVar, g gVar) {
        Object obj;
        Fragment fragment = hVar.f1426a;
        Fragment fragment2 = hVar.f1427d;
        x xVarJ = j(fragment2, fragment);
        if (xVarJ == null) {
            return;
        }
        boolean z = hVar.b;
        boolean z2 = hVar.f1428e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objR = r(xVarJ, fragment, z);
        Object objS = s(xVarJ, fragment2, z2);
        Object objM = m(xVarJ, viewGroup, view, aVar, hVar, arrayList2, arrayList, objR, objS);
        if (objR == null && objM == null) {
            obj = objS;
            if (obj == null) {
                return;
            }
        } else {
            obj = objS;
        }
        ArrayList<View> arrayListK = k(xVarJ, obj, fragment2, arrayList2, view);
        ArrayList<View> arrayListK2 = k(xVarJ, objR, fragment, arrayList, view);
        B(arrayListK2, 4);
        Object objV = v(xVarJ, objR, obj, objM, fragment, z);
        if (fragment2 != null && arrayListK != null && (arrayListK.size() > 0 || arrayList2.size() > 0)) {
            androidx.core.os.b bVar = new androidx.core.os.b();
            gVar.b(fragment2, bVar);
            xVarJ.w(fragment2, objV, bVar, new a(gVar, fragment2, bVar));
        }
        if (objV != null) {
            w(xVarJ, obj, fragment2, arrayListK);
            ArrayList<String> arrayListO = xVarJ.o(arrayList);
            xVarJ.t(objV, objR, arrayListK2, obj, arrayListK, objM, arrayList);
            xVarJ.c(viewGroup, objV);
            xVarJ.y(viewGroup, arrayList2, arrayList, arrayListO, aVar);
            B(arrayListK2, 0);
            xVarJ.A(objM, arrayList2, arrayList);
        }
    }

    private static h p(h hVar, SparseArray<h> sparseArray, int i) {
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h();
        sparseArray.put(i, hVar2);
        return hVar2;
    }

    static String q(androidx.collection.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.valueAt(i))) {
                return aVar.keyAt(i);
            }
        }
        return null;
    }

    private static Object r(x xVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return xVar.g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object s(x xVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return xVar.g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    static View t(androidx.collection.a<String, View> aVar, h hVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        androidx.fragment.app.a aVar2 = hVar.c;
        if (obj == null || aVar == null || (arrayList = aVar2.n) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get(z ? aVar2.n.get(0) : aVar2.o.get(0));
    }

    private static Object u(x xVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return xVar.B(xVar.g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    private static Object v(x xVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean allowReturnTransitionOverlap;
        if (obj == null || obj2 == null || fragment == null) {
            allowReturnTransitionOverlap = true;
        } else {
            allowReturnTransitionOverlap = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        }
        return allowReturnTransitionOverlap ? xVar.n(obj2, obj, obj3) : xVar.m(obj2, obj, obj3);
    }

    private static void w(x xVar, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            xVar.r(obj, fragment.getView(), arrayList);
            OneShotPreDrawListener.add(fragment.mContainer, new b(arrayList));
        }
    }

    private static x x() {
        try {
            return (x) Class.forName("androidx.transition.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static void y(androidx.collection.a<String, String> aVar, androidx.collection.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.valueAt(size))) {
                aVar.removeAt(size);
            }
        }
    }

    private static void z(x xVar, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        OneShotPreDrawListener.add(viewGroup, new d(obj, xVar, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }
}
