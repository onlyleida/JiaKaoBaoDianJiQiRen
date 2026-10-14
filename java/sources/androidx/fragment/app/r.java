package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o0;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f1387a;
    private final t b;
    private final Fragment c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1388d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1389e = -1;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f1390a;

        a(r rVar, View view) {
            this.f1390a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f1390a.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(this.f1390a);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1391a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f1391a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1391a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1391a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1391a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    r(l lVar, t tVar, Fragment fragment) {
        this.f1387a = lVar;
        this.b = tVar;
        this.c = fragment;
    }

    private boolean l(View view) {
        if (view == this.c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.c.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.c.performSaveInstanceState(bundle);
        this.f1387a.j(this.c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.c.mView != null) {
            t();
        }
        if (this.c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.c.mSavedViewState);
        }
        if (this.c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.c.mSavedViewRegistryState);
        }
        if (!this.c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.c.mUserVisibleHint);
        }
        return bundle;
    }

    void a() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.c);
        }
        Fragment fragment = this.c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        l lVar = this.f1387a;
        Fragment fragment2 = this.c;
        lVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    void b() {
        int iJ = this.b.j(this.c);
        Fragment fragment = this.c;
        fragment.mContainer.addView(fragment.mView, iJ);
    }

    void c() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.c);
        }
        Fragment fragment = this.c;
        Fragment fragment2 = fragment.mTarget;
        r rVarM = null;
        if (fragment2 != null) {
            r rVarM2 = this.b.m(fragment2.mWho);
            if (rVarM2 == null) {
                throw new IllegalStateException("Fragment " + this.c + " declared target fragment " + this.c.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            rVarM = rVarM2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (rVarM = this.b.m(str)) == null) {
                throw new IllegalStateException("Fragment " + this.c + " declared target fragment " + this.c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (rVarM != null && (FragmentManager.P || rVarM.k().mState < 1)) {
            rVarM.m();
        }
        Fragment fragment4 = this.c;
        fragment4.mHost = fragment4.mFragmentManager.v0();
        Fragment fragment5 = this.c;
        fragment5.mParentFragment = fragment5.mFragmentManager.y0();
        this.f1387a.g(this.c, false);
        this.c.performAttach();
        this.f1387a.b(this.c, false);
    }

    int d() {
        Fragment fragment;
        ViewGroup viewGroup;
        Fragment fragment2 = this.c;
        if (fragment2.mFragmentManager == null) {
            return fragment2.mState;
        }
        int iMin = this.f1389e;
        int i = b.f1391a[fragment2.mMaxState.ordinal()];
        if (i != 1) {
            if (i == 2) {
                iMin = Math.min(iMin, 5);
            } else if (i != 3) {
                iMin = i != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0);
            } else {
                iMin = Math.min(iMin, 1);
            }
        }
        Fragment fragment3 = this.c;
        if (fragment3.mFromLayout) {
            if (fragment3.mInLayout) {
                iMin = Math.max(this.f1389e, 2);
                View view = this.c.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f1389e < 4 ? Math.min(iMin, fragment3.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.c.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpactL = null;
        if (FragmentManager.P && (viewGroup = (fragment = this.c).mContainer) != null) {
            lifecycleImpactL = SpecialEffectsController.n(viewGroup, fragment.getParentFragmentManager()).l(this);
        }
        if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.c;
            if (fragment4.mRemoving) {
                iMin = fragment4.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + this.c);
        }
        return iMin;
    }

    void e() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.c);
        }
        Fragment fragment = this.c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.c.mState = 1;
            return;
        }
        this.f1387a.h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        l lVar = this.f1387a;
        Fragment fragment3 = this.c;
        lVar.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    void f() {
        String resourceName;
        if (this.c.mFromLayout) {
            return;
        }
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.c);
        }
        Fragment fragment = this.c;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.c;
        ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment2.mContainerId;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.mFragmentManager.p0().c(this.c.mContainerId);
                if (viewGroup == null) {
                    Fragment fragment3 = this.c;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.c.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = Constant.VENDOR_UNKNOWN;
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.c.mContainerId) + " (" + resourceName + ") for fragment " + this.c);
                    }
                }
            }
        }
        Fragment fragment4 = this.c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.c.mView;
        if (view != null) {
            boolean z = false;
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.c;
            fragment5.mView.setTag(R.id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.c.mView)) {
                ViewCompat.requestApplyInsets(this.c.mView);
            } else {
                View view2 = this.c.mView;
                view2.addOnAttachStateChangeListener(new a(this, view2));
            }
            this.c.performViewCreated();
            l lVar = this.f1387a;
            Fragment fragment7 = this.c;
            lVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.c.mView.getVisibility();
            float alpha = this.c.mView.getAlpha();
            if (FragmentManager.P) {
                this.c.setPostOnViewCreatedAlpha(alpha);
                Fragment fragment8 = this.c;
                if (fragment8.mContainer != null && visibility == 0) {
                    View viewFindFocus = fragment8.mView.findFocus();
                    if (viewFindFocus != null) {
                        this.c.setFocusedView(viewFindFocus);
                        if (FragmentManager.H0(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.c);
                        }
                    }
                    this.c.mView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                Fragment fragment9 = this.c;
                if (visibility == 0 && fragment9.mContainer != null) {
                    z = true;
                }
                fragment9.mIsNewlyAdded = z;
            }
        }
        this.c.mState = 2;
    }

    void g() {
        Fragment fragmentF;
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.c);
        }
        Fragment fragment = this.c;
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.mRemoving && !fragment.isInBackStack();
        if (!(z || this.b.o().k(this.c))) {
            String str = this.c.mTargetWho;
            if (str != null && (fragmentF = this.b.f(str)) != null && fragmentF.mRetainInstance) {
                this.c.mTarget = fragmentF;
            }
            this.c.mState = 0;
            return;
        }
        j<?> jVar = this.c.mHost;
        if (jVar instanceof o0) {
            zIsChangingConfigurations = this.b.o().h();
        } else if (jVar.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) jVar.f()).isChangingConfigurations();
        }
        if (z || zIsChangingConfigurations) {
            this.b.o().b(this.c);
        }
        this.c.performDestroy();
        this.f1387a.d(this.c, false);
        for (r rVar : this.b.k()) {
            if (rVar != null) {
                Fragment fragmentK = rVar.k();
                if (this.c.mWho.equals(fragmentK.mTargetWho)) {
                    fragmentK.mTarget = this.c;
                    fragmentK.mTargetWho = null;
                }
            }
        }
        Fragment fragment2 = this.c;
        String str2 = fragment2.mTargetWho;
        if (str2 != null) {
            fragment2.mTarget = this.b.f(str2);
        }
        this.b.q(this);
    }

    void h() {
        View view;
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.c);
        }
        Fragment fragment = this.c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.c.performDestroyView();
        this.f1387a.n(this.c, false);
        Fragment fragment2 = this.c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.o(null);
        this.c.mInLayout = false;
    }

    void i() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.c);
        }
        this.c.performDetach();
        boolean z = false;
        this.f1387a.e(this.c, false);
        Fragment fragment = this.c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z = true;
        }
        if (z || this.b.o().k(this.c)) {
            if (FragmentManager.H0(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.c);
            }
            this.c.initState();
        }
    }

    void j() {
        Fragment fragment = this.c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.H0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.c);
            }
            Fragment fragment2 = this.c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.c.mSavedFragmentState);
            View view = this.c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.c;
                fragment3.mView.setTag(R.id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.c.performViewCreated();
                l lVar = this.f1387a;
                Fragment fragment5 = this.c;
                lVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.c.mState = 2;
            }
        }
    }

    Fragment k() {
        return this.c;
    }

    void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f1388d) {
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.f1388d = true;
            while (true) {
                int iD = d();
                Fragment fragment = this.c;
                int i = fragment.mState;
                if (iD == i) {
                    if (FragmentManager.P && fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            SpecialEffectsController specialEffectsControllerN = SpecialEffectsController.n(viewGroup, fragment.getParentFragmentManager());
                            if (this.c.mHidden) {
                                specialEffectsControllerN.c(this);
                            } else {
                                specialEffectsControllerN.e(this);
                            }
                        }
                        Fragment fragment2 = this.c;
                        FragmentManager fragmentManager = fragment2.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.F0(fragment2);
                        }
                        Fragment fragment3 = this.c;
                        fragment3.mHiddenChanged = false;
                        fragment3.onHiddenChanged(fragment3.mHidden);
                    }
                    return;
                }
                if (iD <= i) {
                    switch (i - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            this.c.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.H0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.c);
                            }
                            Fragment fragment4 = this.c;
                            if (fragment4.mView != null && fragment4.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment5 = this.c;
                            if (fragment5.mView != null && (viewGroup3 = fragment5.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup3, fragment5.getParentFragmentManager()).d(this);
                            }
                            this.c.mState = 3;
                            break;
                        case 4:
                            w();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup2, fragment.getParentFragmentManager()).b(SpecialEffectsController.Operation.State.from(this.c.mView.getVisibility()), this);
                            }
                            this.c.mState = 4;
                            break;
                        case 5:
                            v();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
            }
        } finally {
            this.f1388d = false;
        }
    }

    void n() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.c);
        }
        this.c.performPause();
        this.f1387a.f(this.c, false);
    }

    void o(ClassLoader classLoader) {
        Bundle bundle = this.c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    void p() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.c);
        }
        View focusedView = this.c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (FragmentManager.H0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(" ");
                sb.append(zRequestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.c);
                sb.append(" resulting in focused view ");
                sb.append(this.c.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.c.setFocusedView(null);
        this.c.performResume();
        this.f1387a.i(this.c, false);
        Fragment fragment = this.c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    Fragment.SavedState r() {
        Bundle bundleQ;
        if (this.c.mState <= -1 || (bundleQ = q()) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleQ);
    }

    FragmentState s() {
        FragmentState fragmentState = new FragmentState(this.c);
        Fragment fragment = this.c;
        if (fragment.mState <= -1 || fragmentState.m != null) {
            fragmentState.m = fragment.mSavedFragmentState;
        } else {
            Bundle bundleQ = q();
            fragmentState.m = bundleQ;
            if (this.c.mTargetWho != null) {
                if (bundleQ == null) {
                    fragmentState.m = new Bundle();
                }
                fragmentState.m.putString("android:target_state", this.c.mTargetWho);
                int i = this.c.mTargetRequestCode;
                if (i != 0) {
                    fragmentState.m.putInt("android:target_req_state", i);
                }
            }
        }
        return fragmentState;
    }

    void t() {
        if (this.c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.c.mSavedViewRegistryState = bundle;
    }

    void u(int i) {
        this.f1389e = i;
    }

    void v() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.c);
        }
        this.c.performStart();
        this.f1387a.k(this.c, false);
    }

    void w() {
        if (FragmentManager.H0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.c);
        }
        this.c.performStop();
        this.f1387a.l(this.c, false);
    }

    r(l lVar, t tVar, ClassLoader classLoader, i iVar, FragmentState fragmentState) {
        this.f1387a = lVar;
        this.b = tVar;
        Fragment fragmentA = iVar.a(classLoader, fragmentState.f1310a);
        this.c = fragmentA;
        Bundle bundle = fragmentState.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        fragmentA.setArguments(fragmentState.j);
        fragmentA.mWho = fragmentState.b;
        fragmentA.mFromLayout = fragmentState.c;
        fragmentA.mRestored = true;
        fragmentA.mFragmentId = fragmentState.f1311d;
        fragmentA.mContainerId = fragmentState.f1312e;
        fragmentA.mTag = fragmentState.f1313f;
        fragmentA.mRetainInstance = fragmentState.f1314g;
        fragmentA.mRemoving = fragmentState.f1315h;
        fragmentA.mDetached = fragmentState.i;
        fragmentA.mHidden = fragmentState.k;
        fragmentA.mMaxState = Lifecycle.State.values()[fragmentState.l];
        Bundle bundle2 = fragmentState.m;
        if (bundle2 != null) {
            fragmentA.mSavedFragmentState = bundle2;
        } else {
            fragmentA.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.H0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    r(l lVar, t tVar, Fragment fragment, FragmentState fragmentState) {
        this.f1387a = lVar;
        this.b = tVar;
        this.c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.m;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
