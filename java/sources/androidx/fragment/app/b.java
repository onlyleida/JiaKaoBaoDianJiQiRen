package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class b extends SpecialEffectsController {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1330a;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            f1330a = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1330a[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1330a[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1330a[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.b$b, reason: collision with other inner class name */
    class RunnableC0041b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f1331a;
        final /* synthetic */ SpecialEffectsController.Operation b;

        RunnableC0041b(List list, SpecialEffectsController.Operation operation) {
            this.f1331a = list;
            this.b = operation;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1331a.contains(this.b)) {
                this.f1331a.remove(this.b);
                b.this.s(this.b);
            }
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1332a;
        final /* synthetic */ View b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ SpecialEffectsController.Operation f1333d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ k f1334e;

        c(b bVar, ViewGroup viewGroup, View view, boolean z, SpecialEffectsController.Operation operation, k kVar) {
            this.f1332a = viewGroup;
            this.b = view;
            this.c = z;
            this.f1333d = operation;
            this.f1334e = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1332a.endViewTransition(this.b);
            if (this.c) {
                this.f1333d.e().applyState(this.b);
            }
            this.f1334e.a();
        }
    }

    class d implements androidx.core.os.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Animator f1335a;

        d(b bVar, Animator animator) {
            this.f1335a = animator;
        }

        @Override // androidx.core.os.b.a
        public void onCancel() {
            this.f1335a.end();
        }
    }

    class e implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f1336a;
        final /* synthetic */ View b;
        final /* synthetic */ k c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e eVar = e.this;
                eVar.f1336a.endViewTransition(eVar.b);
                e.this.c.a();
            }
        }

        e(b bVar, ViewGroup viewGroup, View view, k kVar) {
            this.f1336a = viewGroup;
            this.b = view;
            this.c = kVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f1336a.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class f implements androidx.core.os.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f1338a;
        final /* synthetic */ ViewGroup b;
        final /* synthetic */ k c;

        f(b bVar, View view, ViewGroup viewGroup, k kVar) {
            this.f1338a = view;
            this.b = viewGroup;
            this.c = kVar;
        }

        @Override // androidx.core.os.b.a
        public void onCancel() {
            this.f1338a.clearAnimation();
            this.b.endViewTransition(this.f1338a);
            this.c.a();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SpecialEffectsController.Operation f1339a;
        final /* synthetic */ SpecialEffectsController.Operation b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ androidx.collection.a f1340d;

        g(b bVar, SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, boolean z, androidx.collection.a aVar) {
            this.f1339a = operation;
            this.b = operation2;
            this.c = z;
            this.f1340d = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.f(this.f1339a.f(), this.b.f(), this.c, this.f1340d, false);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ x f1341a;
        final /* synthetic */ View b;
        final /* synthetic */ Rect c;

        h(b bVar, x xVar, View view, Rect rect) {
            this.f1341a = xVar;
            this.b = view;
            this.c = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1341a.k(this.b, this.c);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f1342a;

        i(b bVar, ArrayList arrayList) {
            this.f1342a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.B(this.f1342a, 4);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f1343a;

        j(b bVar, m mVar) {
            this.f1343a = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1343a.a();
        }
    }

    private static class k extends l {
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1344d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.fragment.app.e.d f1345e;

        k(SpecialEffectsController.Operation operation, androidx.core.os.b bVar, boolean z) {
            super(operation, bVar);
            this.f1344d = false;
            this.c = z;
        }

        androidx.fragment.app.e.d e(Context context) {
            if (this.f1344d) {
                return this.f1345e;
            }
            androidx.fragment.app.e.d dVarC = androidx.fragment.app.e.c(context, b().f(), b().e() == SpecialEffectsController.Operation.State.VISIBLE, this.c);
            this.f1345e = dVarC;
            this.f1344d = true;
            return dVarC;
        }
    }

    private static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SpecialEffectsController.Operation f1346a;
        private final androidx.core.os.b b;

        l(SpecialEffectsController.Operation operation, androidx.core.os.b bVar) {
            this.f1346a = operation;
            this.b = bVar;
        }

        void a() {
            this.f1346a.d(this.b);
        }

        SpecialEffectsController.Operation b() {
            return this.f1346a;
        }

        androidx.core.os.b c() {
            return this.b;
        }

        boolean d() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(this.f1346a.f().mView);
            SpecialEffectsController.Operation.State stateE = this.f1346a.e();
            return stateFrom == stateE || !(stateFrom == (state = SpecialEffectsController.Operation.State.VISIBLE) || stateE == state);
        }
    }

    private static class m extends l {
        private final Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1347d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Object f1348e;

        m(SpecialEffectsController.Operation operation, androidx.core.os.b bVar, boolean z, boolean z2) {
            super(operation, bVar);
            if (operation.e() == SpecialEffectsController.Operation.State.VISIBLE) {
                this.c = z ? operation.f().getReenterTransition() : operation.f().getEnterTransition();
                this.f1347d = z ? operation.f().getAllowReturnTransitionOverlap() : operation.f().getAllowEnterTransitionOverlap();
            } else {
                this.c = z ? operation.f().getReturnTransition() : operation.f().getExitTransition();
                this.f1347d = true;
            }
            if (!z2) {
                this.f1348e = null;
            } else if (z) {
                this.f1348e = operation.f().getSharedElementReturnTransition();
            } else {
                this.f1348e = operation.f().getSharedElementEnterTransition();
            }
        }

        private x f(Object obj) {
            if (obj == null) {
                return null;
            }
            x xVar = v.b;
            if (xVar != null && xVar.e(obj)) {
                return xVar;
            }
            x xVar2 = v.c;
            if (xVar2 != null && xVar2.e(obj)) {
                return xVar2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        x e() {
            x xVarF = f(this.c);
            x xVarF2 = f(this.f1348e);
            if (xVarF == null || xVarF2 == null || xVarF == xVarF2) {
                return xVarF != null ? xVarF : xVarF2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.c + " which uses a different Transition  type than its shared element transition " + this.f1348e);
        }

        public Object g() {
            return this.f1348e;
        }

        Object h() {
            return this.c;
        }

        public boolean i() {
            return this.f1348e != null;
        }

        boolean j() {
            return this.f1347d;
        }
    }

    b(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void w(List<k> list, List<SpecialEffectsController.Operation> list2, boolean z, Map<SpecialEffectsController.Operation, Boolean> map) {
        ViewGroup viewGroupM = m();
        Context context = viewGroupM.getContext();
        ArrayList<k> arrayList = new ArrayList();
        boolean z2 = false;
        for (k kVar : list) {
            if (kVar.d()) {
                kVar.a();
            } else {
                androidx.fragment.app.e.d dVarE = kVar.e(context);
                if (dVarE == null) {
                    kVar.a();
                } else {
                    Animator animator = dVarE.b;
                    if (animator == null) {
                        arrayList.add(kVar);
                    } else {
                        SpecialEffectsController.Operation operationB = kVar.b();
                        Fragment fragmentF = operationB.f();
                        if (Boolean.TRUE.equals(map.get(operationB))) {
                            if (FragmentManager.H0(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + fragmentF + " as this Fragment was involved in a Transition.");
                            }
                            kVar.a();
                        } else {
                            boolean z3 = operationB.e() == SpecialEffectsController.Operation.State.GONE;
                            if (z3) {
                                list2.remove(operationB);
                            }
                            View view = fragmentF.mView;
                            viewGroupM.startViewTransition(view);
                            animator.addListener(new c(this, viewGroupM, view, z3, operationB, kVar));
                            animator.setTarget(view);
                            animator.start();
                            kVar.c().c(new d(this, animator));
                            z2 = true;
                        }
                    }
                }
            }
        }
        for (k kVar2 : arrayList) {
            SpecialEffectsController.Operation operationB2 = kVar2.b();
            Fragment fragmentF2 = operationB2.f();
            if (z) {
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Transitions.");
                }
                kVar2.a();
            } else if (z2) {
                if (FragmentManager.H0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Animators.");
                }
                kVar2.a();
            } else {
                View view2 = fragmentF2.mView;
                androidx.fragment.app.e.d dVarE2 = kVar2.e(context);
                androidx.core.util.h.f(dVarE2);
                Animation animation = dVarE2.f1364a;
                androidx.core.util.h.f(animation);
                Animation animation2 = animation;
                if (operationB2.e() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation2);
                    kVar2.a();
                } else {
                    viewGroupM.startViewTransition(view2);
                    androidx.fragment.app.e.RunnableC0043e runnableC0043e = new androidx.fragment.app.e.RunnableC0043e(animation2, viewGroupM, view2);
                    runnableC0043e.setAnimationListener(new e(this, viewGroupM, view2, kVar2));
                    view2.startAnimation(runnableC0043e);
                }
                kVar2.c().c(new f(this, view2, viewGroupM, kVar2));
            }
        }
    }

    private Map<SpecialEffectsController.Operation, Boolean> x(List<m> list, List<SpecialEffectsController.Operation> list2, boolean z, SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2) {
        View view;
        Boolean bool;
        View view2;
        Object obj;
        Object obj2;
        View view3;
        ArrayList<View> arrayList;
        Rect rect;
        Boolean bool2;
        HashMap map;
        View view4;
        ArrayList<View> arrayList2;
        b bVar;
        SpecialEffectsController.Operation operation3;
        Boolean bool3;
        androidx.core.app.o enterTransitionCallback;
        androidx.core.app.o exitTransitionCallback;
        Boolean bool4;
        int i2;
        View view5;
        String strQ;
        Boolean bool5;
        b bVar2 = this;
        SpecialEffectsController.Operation operation4 = operation;
        SpecialEffectsController.Operation operation5 = operation2;
        Boolean bool6 = Boolean.TRUE;
        Boolean bool7 = Boolean.FALSE;
        HashMap map2 = new HashMap();
        x xVar = null;
        for (m mVar : list) {
            if (!mVar.d()) {
                x xVarE = mVar.e();
                if (xVar == null) {
                    xVar = xVarE;
                } else if (xVarE != null && xVar != xVarE) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + mVar.b().f() + " returned Transition " + mVar.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (xVar == null) {
            for (m mVar2 : list) {
                map2.put(mVar2.b(), bool7);
                mVar2.a();
            }
            return map2;
        }
        View view6 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList3 = new ArrayList<>();
        ArrayList<View> arrayList4 = new ArrayList<>();
        androidx.collection.a aVar = new androidx.collection.a();
        Iterator<m> it = list.iterator();
        Object obj3 = null;
        View view7 = null;
        boolean z2 = false;
        while (true) {
            view = view7;
            if (!it.hasNext()) {
                break;
            }
            m next = it.next();
            if (!next.i() || operation4 == null || operation5 == null) {
                arrayList = arrayList3;
                rect = rect2;
                bool2 = bool7;
                map = map2;
                view4 = view6;
                arrayList2 = arrayList4;
                bVar = bVar2;
                operation3 = operation4;
                bool3 = bool6;
                view7 = view;
            } else {
                Object objB = xVar.B(xVar.g(next.g()));
                ArrayList<String> sharedElementSourceNames = operation2.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = operation.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = operation.f().getSharedElementTargetNames();
                Rect rect3 = rect2;
                bool2 = bool7;
                int i3 = 0;
                while (i3 < sharedElementTargetNames.size()) {
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i3));
                    ArrayList<String> arrayList5 = sharedElementTargetNames;
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i3));
                    }
                    i3++;
                    sharedElementTargetNames = arrayList5;
                }
                ArrayList<String> sharedElementTargetNames2 = operation2.f().getSharedElementTargetNames();
                if (z == 0) {
                    enterTransitionCallback = operation.f().getExitTransitionCallback();
                    exitTransitionCallback = operation2.f().getEnterTransitionCallback();
                } else {
                    enterTransitionCallback = operation.f().getEnterTransitionCallback();
                    exitTransitionCallback = operation2.f().getExitTransitionCallback();
                }
                int i4 = 0;
                for (int size = sharedElementSourceNames.size(); i4 < size; size = size) {
                    aVar.put(sharedElementSourceNames.get(i4), sharedElementTargetNames2.get(i4));
                    i4++;
                }
                androidx.collection.a<String, View> aVar2 = new androidx.collection.a<>();
                bVar2.u(aVar2, operation.f().mView);
                aVar2.retainAll(sharedElementSourceNames);
                if (enterTransitionCallback != null) {
                    enterTransitionCallback.c(sharedElementSourceNames, aVar2);
                    int size2 = sharedElementSourceNames.size() - 1;
                    while (size2 >= 0) {
                        String str = sharedElementSourceNames.get(size2);
                        View view8 = aVar2.get(str);
                        if (view8 == null) {
                            aVar.remove(str);
                            bool5 = bool6;
                        } else {
                            bool5 = bool6;
                            if (!str.equals(ViewCompat.getTransitionName(view8))) {
                                aVar.put(ViewCompat.getTransitionName(view8), (String) aVar.remove(str));
                            }
                        }
                        size2--;
                        bool6 = bool5;
                    }
                    bool4 = bool6;
                } else {
                    bool4 = bool6;
                    aVar.retainAll(aVar2.keySet());
                }
                androidx.collection.a<String, View> aVar3 = new androidx.collection.a<>();
                bVar2.u(aVar3, operation2.f().mView);
                aVar3.retainAll(sharedElementTargetNames2);
                aVar3.retainAll(aVar.values());
                if (exitTransitionCallback != null) {
                    exitTransitionCallback.c(sharedElementTargetNames2, aVar3);
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str2 = sharedElementTargetNames2.get(size3);
                        View view9 = aVar3.get(str2);
                        if (view9 == null) {
                            String strQ2 = v.q(aVar, str2);
                            if (strQ2 != null) {
                                aVar.remove(strQ2);
                            }
                        } else if (!str2.equals(ViewCompat.getTransitionName(view9)) && (strQ = v.q(aVar, str2)) != null) {
                            aVar.put(strQ, ViewCompat.getTransitionName(view9));
                        }
                    }
                } else {
                    v.y(aVar, aVar3);
                }
                bVar2.v(aVar2, aVar.keySet());
                bVar2.v(aVar3, aVar.values());
                if (aVar.isEmpty()) {
                    arrayList3.clear();
                    arrayList4.clear();
                    operation5 = operation2;
                    arrayList = arrayList3;
                    map = map2;
                    view4 = view6;
                    rect = rect3;
                    view7 = view;
                    bool3 = bool4;
                    obj3 = null;
                    arrayList2 = arrayList4;
                    bVar = bVar2;
                    operation3 = operation;
                } else {
                    v.f(operation2.f(), operation.f(), z, aVar2, true);
                    HashMap map3 = map2;
                    arrayList2 = arrayList4;
                    View view10 = view6;
                    ArrayList<View> arrayList6 = arrayList3;
                    OneShotPreDrawListener.add(m(), new g(this, operation2, operation, z, aVar3));
                    arrayList6.addAll(aVar2.values());
                    if (sharedElementSourceNames.isEmpty()) {
                        i2 = 0;
                        view7 = view;
                    } else {
                        i2 = 0;
                        View view11 = aVar2.get(sharedElementSourceNames.get(0));
                        xVar.v(objB, view11);
                        view7 = view11;
                    }
                    arrayList2.addAll(aVar3.values());
                    if (sharedElementTargetNames2.isEmpty() || (view5 = aVar3.get(sharedElementTargetNames2.get(i2))) == null) {
                        bVar = this;
                        rect = rect3;
                    } else {
                        bVar = this;
                        rect = rect3;
                        OneShotPreDrawListener.add(m(), new h(bVar, xVar, view5, rect));
                        z2 = true;
                    }
                    xVar.z(objB, view10, arrayList6);
                    view4 = view10;
                    arrayList = arrayList6;
                    xVar.t(objB, null, null, null, null, objB, arrayList2);
                    operation3 = operation;
                    bool3 = bool4;
                    map = map3;
                    map.put(operation3, bool3);
                    operation5 = operation2;
                    map.put(operation5, bool3);
                    obj3 = objB;
                }
            }
            view6 = view4;
            xVar = xVar;
            bool6 = bool3;
            bool7 = bool2;
            rect2 = rect;
            operation4 = operation3;
            arrayList3 = arrayList;
            bVar2 = bVar;
            arrayList4 = arrayList2;
            aVar = aVar;
            map2 = map;
        }
        androidx.collection.a aVar4 = aVar;
        ArrayList<View> arrayList7 = arrayList3;
        Rect rect4 = rect2;
        Boolean bool8 = bool7;
        HashMap map4 = map2;
        View view12 = view6;
        x xVar2 = xVar;
        ArrayList<View> arrayList8 = arrayList4;
        b bVar3 = bVar2;
        SpecialEffectsController.Operation operation6 = operation4;
        Boolean bool9 = bool6;
        ArrayList arrayList9 = new ArrayList();
        Object objN = null;
        Object objN2 = null;
        for (Iterator<m> it2 = list.iterator(); it2.hasNext(); it2 = it2) {
            m next2 = it2.next();
            if (next2.d()) {
                map4.put(next2.b(), bool8);
                next2.a();
            } else {
                Boolean bool10 = bool8;
                Object objG = xVar2.g(next2.h());
                Object obj4 = objN;
                SpecialEffectsController.Operation operationB = next2.b();
                boolean z3 = obj3 != null && (operationB == operation6 || operationB == operation5);
                if (objG == null) {
                    if (!z3) {
                        map4.put(operationB, bool10);
                        next2.a();
                    }
                    view2 = view12;
                    arrayList7 = arrayList7;
                    bool = bool10;
                    view3 = view;
                    objN = obj4;
                } else {
                    bool = bool10;
                    ArrayList<View> arrayList10 = new ArrayList<>();
                    Object obj5 = objN2;
                    bVar3.t(arrayList10, operationB.f().mView);
                    if (z3) {
                        if (operationB == operation6) {
                            arrayList10.removeAll(arrayList7);
                        } else {
                            arrayList10.removeAll(arrayList8);
                        }
                    }
                    if (arrayList10.isEmpty()) {
                        xVar2.a(objG, view12);
                        view2 = view12;
                        obj2 = objG;
                        obj = obj5;
                    } else {
                        xVar2.b(objG, arrayList10);
                        view2 = view12;
                        obj = obj5;
                        xVar2.t(objG, objG, arrayList10, null, null, null, null);
                        if (operationB.e() == SpecialEffectsController.Operation.State.GONE) {
                            list2.remove(operationB);
                            ArrayList<View> arrayList11 = new ArrayList<>(arrayList10);
                            arrayList11.remove(operationB.f().mView);
                            obj2 = objG;
                            xVar2.r(obj2, operationB.f().mView, arrayList11);
                            OneShotPreDrawListener.add(m(), new i(bVar3, arrayList10));
                        } else {
                            obj2 = objG;
                        }
                    }
                    if (operationB.e() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList9.addAll(arrayList10);
                        if (z2) {
                            xVar2.u(obj2, rect4);
                        }
                        view3 = view;
                    } else {
                        view3 = view;
                        xVar2.v(obj2, view3);
                    }
                    map4.put(operationB, bool9);
                    if (next2.j()) {
                        objN2 = obj;
                        objN = xVar2.n(obj4, obj2, null);
                    } else {
                        objN = obj4;
                        objN2 = xVar2.n(obj, obj2, null);
                    }
                }
                view = view3;
                arrayList7 = arrayList7;
                bool8 = bool;
                view12 = view2;
            }
        }
        ArrayList<View> arrayList12 = arrayList7;
        Object objM = xVar2.m(objN, objN2, obj3);
        for (m mVar3 : list) {
            if (!mVar3.d()) {
                Object objH = mVar3.h();
                SpecialEffectsController.Operation operationB2 = mVar3.b();
                boolean z4 = obj3 != null && (operationB2 == operation6 || operationB2 == operation5);
                if (objH != null || z4) {
                    if (ViewCompat.isLaidOut(m())) {
                        xVar2.w(mVar3.b().f(), objM, mVar3.c(), new j(bVar3, mVar3));
                    } else {
                        if (FragmentManager.H0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Container " + m() + " has not been laid out. Completing operation " + operationB2);
                        }
                        mVar3.a();
                    }
                }
            }
        }
        if (!ViewCompat.isLaidOut(m())) {
            return map4;
        }
        v.B(arrayList9, 4);
        ArrayList<String> arrayListO = xVar2.o(arrayList8);
        xVar2.c(m(), objM);
        xVar2.y(m(), arrayList12, arrayList8, arrayListO, aVar4);
        v.B(arrayList9, 0);
        xVar2.A(obj3, arrayList12, arrayList8);
        return map4;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0085  */
    @Override // androidx.fragment.app.SpecialEffectsController
    void f(List<SpecialEffectsController.Operation> list, boolean z) {
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        for (SpecialEffectsController.Operation operation3 : list) {
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(operation3.f().mView);
            int i2 = a.f1330a[operation3.e().ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                if (stateFrom == SpecialEffectsController.Operation.State.VISIBLE && operation == null) {
                    operation = operation3;
                }
            } else if (i2 == 4 && stateFrom != SpecialEffectsController.Operation.State.VISIBLE) {
                operation2 = operation3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(list);
        for (SpecialEffectsController.Operation operation4 : list) {
            androidx.core.os.b bVar = new androidx.core.os.b();
            operation4.j(bVar);
            arrayList.add(new k(operation4, bVar, z));
            androidx.core.os.b bVar2 = new androidx.core.os.b();
            operation4.j(bVar2);
            boolean z2 = false;
            if (z) {
                if (operation4 == operation) {
                    z2 = true;
                }
            } else if (operation4 == operation2) {
                z2 = true;
            }
            arrayList2.add(new m(operation4, bVar2, z, z2));
            operation4.a(new RunnableC0041b(arrayList3, operation4));
        }
        Map<SpecialEffectsController.Operation, Boolean> mapX = x(arrayList2, arrayList3, z, operation, operation2);
        w(arrayList, arrayList3, mapX.containsValue(Boolean.TRUE), mapX);
        Iterator<SpecialEffectsController.Operation> it = arrayList3.iterator();
        while (it.hasNext()) {
            s(it.next());
        }
        arrayList3.clear();
    }

    void s(SpecialEffectsController.Operation operation) {
        operation.e().applyState(operation.f().mView);
    }

    void t(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                t(arrayList, childAt);
            }
        }
    }

    void u(Map<String, View> map, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    void v(androidx.collection.a<String, View> aVar, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = aVar.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
