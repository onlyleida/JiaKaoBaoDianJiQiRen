package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R;

/* JADX INFO: loaded from: classes.dex */
class k implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final FragmentManager f1374a;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ r f1375a;

        a(r rVar) {
            this.f1375a = rVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment fragmentK = this.f1375a.k();
            this.f1375a.m();
            SpecialEffectsController.n((ViewGroup) fragmentK.mView.getParent(), k.this.f1374a).j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    k(FragmentManager fragmentManager) {
        this.f1374a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        r rVarW;
        if (g.class.getName().equals(str)) {
            return new g(context, attributeSet, this.f1374a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !i.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentI0 = resourceId != -1 ? this.f1374a.i0(resourceId) : null;
        if (fragmentI0 == null && string != null) {
            fragmentI0 = this.f1374a.j0(string);
        }
        if (fragmentI0 == null && id != -1) {
            fragmentI0 = this.f1374a.i0(id);
        }
        if (fragmentI0 == null) {
            fragmentI0 = this.f1374a.s0().a(context.getClassLoader(), attributeValue);
            fragmentI0.mFromLayout = true;
            fragmentI0.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentI0.mContainerId = id;
            fragmentI0.mTag = string;
            fragmentI0.mInLayout = true;
            FragmentManager fragmentManager = this.f1374a;
            fragmentI0.mFragmentManager = fragmentManager;
            fragmentI0.mHost = fragmentManager.v0();
            fragmentI0.onInflate(this.f1374a.v0().f(), attributeSet, fragmentI0.mSavedFragmentState);
            rVarW = this.f1374a.g(fragmentI0);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Fragment " + fragmentI0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else {
            if (fragmentI0.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentI0.mInLayout = true;
            FragmentManager fragmentManager2 = this.f1374a;
            fragmentI0.mFragmentManager = fragmentManager2;
            fragmentI0.mHost = fragmentManager2.v0();
            fragmentI0.onInflate(this.f1374a.v0().f(), attributeSet, fragmentI0.mSavedFragmentState);
            rVarW = this.f1374a.w(fragmentI0);
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragmentI0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        }
        fragmentI0.mContainer = (ViewGroup) view;
        rVarW.m();
        rVarW.j();
        View view2 = fragmentI0.mView;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentI0.mView.getTag() == null) {
            fragmentI0.mView.setTag(string);
        }
        fragmentI0.mView.addOnAttachStateChangeListener(new a(rVarW));
        return fragmentI0.mView;
    }
}
