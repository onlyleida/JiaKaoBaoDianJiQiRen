package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public abstract class m implements Cloneable {
    static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<t> mEndValuesList;
    private f mEpicenterCallback;
    private androidx.collection.a<String, String> mNameOverrides;
    p mPropagation;
    private ArrayList<t> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final androidx.transition.g STRAIGHT_PATH_MOTION = new a();
    private static ThreadLocal<androidx.collection.a<Animator, d>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private u mStartValues = new u();
    private u mEndValues = new u();
    q mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    private ViewGroup mSceneRoot = null;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private int mNumInstances = 0;
    private boolean mPaused = false;
    private boolean mEnded = false;
    private ArrayList<g> mListeners = null;
    private ArrayList<Animator> mAnimators = new ArrayList<>();
    private androidx.transition.g mPathMotion = STRAIGHT_PATH_MOTION;

    static class a extends androidx.transition.g {
        a() {
        }

        @Override // androidx.transition.g
        public Path getPath(float f2, float f3, float f4, float f5) {
            Path path = new Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.collection.a f1872a;

        b(androidx.collection.a aVar) {
            this.f1872a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1872a.remove(animator);
            m.this.mCurrentAnimators.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            m.this.mCurrentAnimators.add(animator);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m.this.end();
            animator.removeListener(this);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f1874a;
        String b;
        t c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        n0 f1875d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        m f1876e;

        d(View view, String str, m mVar, n0 n0Var, t tVar) {
            this.f1874a = view;
            this.b = str;
            this.c = tVar;
            this.f1875d = n0Var;
            this.f1876e = mVar;
        }
    }

    private static class e {
        static <T> ArrayList<T> a(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t)) {
                arrayList.add(t);
            }
            return arrayList;
        }

        static <T> ArrayList<T> b(ArrayList<T> arrayList, T t) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(t);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    public static abstract class f {
        public abstract Rect a(m mVar);
    }

    public interface g {
        void onTransitionCancel(m mVar);

        void onTransitionEnd(m mVar);

        void onTransitionPause(m mVar);

        void onTransitionResume(m mVar);

        void onTransitionStart(m mVar);
    }

    public m() {
    }

    private void addUnmatched(androidx.collection.a<View, t> aVar, androidx.collection.a<View, t> aVar2) {
        for (int i = 0; i < aVar.size(); i++) {
            t tVarValueAt = aVar.valueAt(i);
            if (isValidTarget(tVarValueAt.b)) {
                this.mStartValuesList.add(tVarValueAt);
                this.mEndValuesList.add(null);
            }
        }
        for (int i2 = 0; i2 < aVar2.size(); i2++) {
            t tVarValueAt2 = aVar2.valueAt(i2);
            if (isValidTarget(tVarValueAt2.b)) {
                this.mEndValuesList.add(tVarValueAt2);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void addViewValues(u uVar, View view, t tVar) {
        uVar.f1888a.put(view, tVar);
        int id = view.getId();
        if (id >= 0) {
            if (uVar.b.indexOfKey(id) >= 0) {
                uVar.b.put(id, null);
            } else {
                uVar.b.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (uVar.f1889d.containsKey(transitionName)) {
                uVar.f1889d.put(transitionName, null);
            } else {
                uVar.f1889d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (uVar.c.h(itemIdAtPosition) < 0) {
                    ViewCompat.setHasTransientState(view, true);
                    uVar.c.j(itemIdAtPosition, view);
                    return;
                }
                View viewF = uVar.c.f(itemIdAtPosition);
                if (viewF != null) {
                    ViewCompat.setHasTransientState(viewF, false);
                    uVar.c.j(itemIdAtPosition, null);
                }
            }
        }
    }

    private static boolean alreadyContains(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    private void captureHierarchy(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.mTargetExcludes;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i = 0; i < size; i++) {
                        if (this.mTargetTypeExcludes.get(i).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    t tVar = new t(view);
                    if (z) {
                        captureStartValues(tVar);
                    } else {
                        captureEndValues(tVar);
                    }
                    tVar.c.add(this);
                    capturePropagationValues(tVar);
                    if (z) {
                        addViewValues(this.mStartValues, view, tVar);
                    } else {
                        addViewValues(this.mEndValues, view, tVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (this.mTargetTypeChildExcludes.get(i2).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                captureHierarchy(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i, boolean z) {
        if (i > 0) {
            return z ? e.a(arrayList, Integer.valueOf(i)) : e.b(arrayList, Integer.valueOf(i));
        }
        return arrayList;
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t, boolean z) {
        if (t != null) {
            return z ? e.a(arrayList, t) : e.b(arrayList, t);
        }
        return arrayList;
    }

    private ArrayList<Class<?>> excludeType(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z) {
        if (cls != null) {
            return z ? e.a(arrayList, cls) : e.b(arrayList, cls);
        }
        return arrayList;
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z) {
        if (view != null) {
            return z ? e.a(arrayList, view) : e.b(arrayList, view);
        }
        return arrayList;
    }

    private static androidx.collection.a<Animator, d> getRunningAnimators() {
        androidx.collection.a<Animator, d> aVar = sRunningAnimators.get();
        if (aVar != null) {
            return aVar;
        }
        androidx.collection.a<Animator, d> aVar2 = new androidx.collection.a<>();
        sRunningAnimators.set(aVar2);
        return aVar2;
    }

    private static boolean isValidMatch(int i) {
        return i >= 1 && i <= 4;
    }

    private static boolean isValueChanged(t tVar, t tVar2, String str) {
        Object obj = tVar.f1887a.get(str);
        Object obj2 = tVar2.f1887a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void matchIds(androidx.collection.a<View, t> aVar, androidx.collection.a<View, t> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View viewValueAt = sparseArray.valueAt(i);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && isValidTarget(view)) {
                t tVar = aVar.get(viewValueAt);
                t tVar2 = aVar2.get(view);
                if (tVar != null && tVar2 != null) {
                    this.mStartValuesList.add(tVar);
                    this.mEndValuesList.add(tVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void matchInstances(androidx.collection.a<View, t> aVar, androidx.collection.a<View, t> aVar2) {
        t tVarRemove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewKeyAt = aVar.keyAt(size);
            if (viewKeyAt != null && isValidTarget(viewKeyAt) && (tVarRemove = aVar2.remove(viewKeyAt)) != null && isValidTarget(tVarRemove.b)) {
                this.mStartValuesList.add(aVar.removeAt(size));
                this.mEndValuesList.add(tVarRemove);
            }
        }
    }

    private void matchItemIds(androidx.collection.a<View, t> aVar, androidx.collection.a<View, t> aVar2, androidx.collection.d<View> dVar, androidx.collection.d<View> dVar2) {
        View viewF;
        int iM = dVar.m();
        for (int i = 0; i < iM; i++) {
            View viewN = dVar.n(i);
            if (viewN != null && isValidTarget(viewN) && (viewF = dVar2.f(dVar.i(i))) != null && isValidTarget(viewF)) {
                t tVar = aVar.get(viewN);
                t tVar2 = aVar2.get(viewF);
                if (tVar != null && tVar2 != null) {
                    this.mStartValuesList.add(tVar);
                    this.mEndValuesList.add(tVar2);
                    aVar.remove(viewN);
                    aVar2.remove(viewF);
                }
            }
        }
    }

    private void matchNames(androidx.collection.a<View, t> aVar, androidx.collection.a<View, t> aVar2, androidx.collection.a<String, View> aVar3, androidx.collection.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i = 0; i < size; i++) {
            View viewValueAt = aVar3.valueAt(i);
            if (viewValueAt != null && isValidTarget(viewValueAt) && (view = aVar4.get(aVar3.keyAt(i))) != null && isValidTarget(view)) {
                t tVar = aVar.get(viewValueAt);
                t tVar2 = aVar2.get(view);
                if (tVar != null && tVar2 != null) {
                    this.mStartValuesList.add(tVar);
                    this.mEndValuesList.add(tVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(u uVar, u uVar2) {
        androidx.collection.a<View, t> aVar = new androidx.collection.a<>(uVar.f1888a);
        androidx.collection.a<View, t> aVar2 = new androidx.collection.a<>(uVar2.f1888a);
        int i = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i >= iArr.length) {
                addUnmatched(aVar, aVar2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                matchInstances(aVar, aVar2);
            } else if (i2 == 2) {
                matchNames(aVar, aVar2, uVar.f1889d, uVar2.f1889d);
            } else if (i2 == 3) {
                matchIds(aVar, aVar2, uVar.b, uVar2.b);
            } else if (i2 == 4) {
                matchItemIds(aVar, aVar2, uVar.c, uVar2.c);
            }
            i++;
        }
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strTrim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(strTrim)) {
                iArr[i] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(strTrim)) {
                iArr[i] = 1;
            } else if ("name".equalsIgnoreCase(strTrim)) {
                iArr[i] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(strTrim)) {
                iArr[i] = 4;
            } else {
                if (!strTrim.isEmpty()) {
                    throw new InflateException("Unknown match type in matchOrder: '" + strTrim + "'");
                }
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            }
            i++;
        }
        return iArr;
    }

    private void runAnimator(Animator animator, androidx.collection.a<Animator, d> aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            animate(animator);
        }
    }

    public m addListener(g gVar) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(gVar);
        return this;
    }

    public m addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    protected void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new c());
        animator.start();
    }

    protected void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((g) arrayList2.get(i)).onTransitionCancel(this);
        }
    }

    public abstract void captureEndValues(t tVar);

    void capturePropagationValues(t tVar) {
        String[] strArrB;
        if (this.mPropagation == null || tVar.f1887a.isEmpty() || (strArrB = this.mPropagation.b()) == null) {
            return;
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= strArrB.length) {
                z = true;
                break;
            } else if (!tVar.f1887a.containsKey(strArrB[i])) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.mPropagation.a(tVar);
    }

    public abstract void captureStartValues(t tVar);

    void captureValues(ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        androidx.collection.a<String, String> aVar;
        clearValues(z);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.mTargetIds.size(); i++) {
                View viewFindViewById = viewGroup.findViewById(this.mTargetIds.get(i).intValue());
                if (viewFindViewById != null) {
                    t tVar = new t(viewFindViewById);
                    if (z) {
                        captureStartValues(tVar);
                    } else {
                        captureEndValues(tVar);
                    }
                    tVar.c.add(this);
                    capturePropagationValues(tVar);
                    if (z) {
                        addViewValues(this.mStartValues, viewFindViewById, tVar);
                    } else {
                        addViewValues(this.mEndValues, viewFindViewById, tVar);
                    }
                }
            }
            for (int i2 = 0; i2 < this.mTargets.size(); i2++) {
                View view = this.mTargets.get(i2);
                t tVar2 = new t(view);
                if (z) {
                    captureStartValues(tVar2);
                } else {
                    captureEndValues(tVar2);
                }
                tVar2.c.add(this);
                capturePropagationValues(tVar2);
                if (z) {
                    addViewValues(this.mStartValues, view, tVar2);
                } else {
                    addViewValues(this.mEndValues, view, tVar2);
                }
            }
        } else {
            captureHierarchy(viewGroup, z);
        }
        if (z || (aVar = this.mNameOverrides) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList3.add(this.mStartValues.f1889d.remove(this.mNameOverrides.keyAt(i3)));
        }
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = (View) arrayList3.get(i4);
            if (view2 != null) {
                this.mStartValues.f1889d.put(this.mNameOverrides.valueAt(i4), view2);
            }
        }
    }

    void clearValues(boolean z) {
        if (z) {
            this.mStartValues.f1888a.clear();
            this.mStartValues.b.clear();
            this.mStartValues.c.c();
        } else {
            this.mEndValues.f1888a.clear();
            this.mEndValues.b.clear();
            this.mEndValues.c.c();
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, t tVar, t tVar2) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    protected void createAnimators(ViewGroup viewGroup, u uVar, u uVar2, ArrayList<t> arrayList, ArrayList<t> arrayList2) {
        Animator animatorCreateAnimator;
        int i;
        int i2;
        View view;
        Animator animator;
        t tVar;
        Animator animator2;
        t tVar2;
        androidx.collection.a<Animator, d> runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i3 = 0;
        while (i3 < size) {
            t tVar3 = arrayList.get(i3);
            t tVar4 = arrayList2.get(i3);
            if (tVar3 != null && !tVar3.c.contains(this)) {
                tVar3 = null;
            }
            if (tVar4 != null && !tVar4.c.contains(this)) {
                tVar4 = null;
            }
            if (tVar3 == null && tVar4 == null) {
                i = size;
                i2 = i3;
            } else if (!(tVar3 == null || tVar4 == null || isTransitionRequired(tVar3, tVar4)) || (animatorCreateAnimator = createAnimator(viewGroup, tVar3, tVar4)) == null) {
                i = size;
                i2 = i3;
            } else {
                if (tVar4 != null) {
                    view = tVar4.b;
                    String[] transitionProperties = getTransitionProperties();
                    if (transitionProperties != null && transitionProperties.length > 0) {
                        tVar2 = new t(view);
                        i = size;
                        t tVar5 = uVar2.f1888a.get(view);
                        if (tVar5 != null) {
                            int i4 = 0;
                            while (i4 < transitionProperties.length) {
                                tVar2.f1887a.put(transitionProperties[i4], tVar5.f1887a.get(transitionProperties[i4]));
                                i4++;
                                i3 = i3;
                                tVar5 = tVar5;
                            }
                        }
                        i2 = i3;
                        int size2 = runningAnimators.size();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= size2) {
                                animator2 = animatorCreateAnimator;
                                break;
                            }
                            d dVar = runningAnimators.get(runningAnimators.keyAt(i5));
                            if (dVar.c != null && dVar.f1874a == view && dVar.b.equals(getName()) && dVar.c.equals(tVar2)) {
                                animator2 = null;
                                break;
                            }
                            i5++;
                        }
                    } else {
                        i = size;
                        i2 = i3;
                        animator2 = animatorCreateAnimator;
                        tVar2 = null;
                    }
                    animator = animator2;
                    tVar = tVar2;
                } else {
                    i = size;
                    i2 = i3;
                    view = tVar3.b;
                    animator = animatorCreateAnimator;
                    tVar = null;
                }
                if (animator != null) {
                    p pVar = this.mPropagation;
                    if (pVar != null) {
                        long jC = pVar.c(viewGroup, this, tVar3, tVar4);
                        sparseIntArray.put(this.mAnimators.size(), (int) jC);
                        jMin = Math.min(jC, jMin);
                    }
                    runningAnimators.put(animator, new d(view, getName(), this, d0.d(viewGroup), tVar));
                    this.mAnimators.add(animator);
                    jMin = jMin;
                }
            }
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator3 = this.mAnimators.get(sparseIntArray.keyAt(i6));
                animator3.setStartDelay((((long) sparseIntArray.valueAt(i6)) - jMin) + animator3.getStartDelay());
            }
        }
    }

    protected void end() {
        int i = this.mNumInstances - 1;
        this.mNumInstances = i;
        if (i == 0) {
            ArrayList<g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((g) arrayList2.get(i2)).onTransitionEnd(this);
                }
            }
            for (int i3 = 0; i3 < this.mStartValues.c.m(); i3++) {
                View viewN = this.mStartValues.c.n(i3);
                if (viewN != null) {
                    ViewCompat.setHasTransientState(viewN, false);
                }
            }
            for (int i4 = 0; i4 < this.mEndValues.c.m(); i4++) {
                View viewN2 = this.mEndValues.c.n(i4);
                if (viewN2 != null) {
                    ViewCompat.setHasTransientState(viewN2, false);
                }
            }
            this.mEnded = true;
        }
    }

    public m excludeChildren(View view, boolean z) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z);
        return this;
    }

    public m excludeTarget(View view, boolean z) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void forceToEnd(ViewGroup viewGroup) {
        androidx.collection.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        n0 n0VarD = d0.d(viewGroup);
        androidx.collection.a aVar = new androidx.collection.a(runningAnimators);
        runningAnimators.clear();
        for (int i = size - 1; i >= 0; i--) {
            d dVar = (d) aVar.valueAt(i);
            if (dVar.f1874a != null && n0VarD != null && n0VarD.equals(dVar.f1875d)) {
                ((Animator) aVar.keyAt(i)).end();
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        f fVar = this.mEpicenterCallback;
        if (fVar == null) {
            return null;
        }
        return fVar.a(this);
    }

    public f getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    t getMatchedTransitionValues(View view, boolean z) {
        q qVar = this.mParent;
        if (qVar != null) {
            return qVar.getMatchedTransitionValues(view, z);
        }
        ArrayList<t> arrayList = z ? this.mStartValuesList : this.mEndValuesList;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            t tVar = arrayList.get(i2);
            if (tVar == null) {
                return null;
            }
            if (tVar.b == view) {
                i = i2;
                break;
            }
        }
        if (i >= 0) {
            return (z ? this.mEndValuesList : this.mStartValuesList).get(i);
        }
        return null;
    }

    public String getName() {
        return this.mName;
    }

    public androidx.transition.g getPathMotion() {
        return this.mPathMotion;
    }

    public p getPropagation() {
        return this.mPropagation;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class<?>> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public t getTransitionValues(View view, boolean z) {
        q qVar = this.mParent;
        if (qVar != null) {
            return qVar.getTransitionValues(view, z);
        }
        return (z ? this.mStartValues : this.mEndValues).f1888a.get(view);
    }

    public boolean isTransitionRequired(t tVar, t tVar2) {
        if (tVar == null || tVar2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties == null) {
            Iterator<String> it = tVar.f1887a.keySet().iterator();
            while (it.hasNext()) {
                if (isValueChanged(tVar, tVar2, it.next())) {
                }
            }
            return false;
        }
        for (String str : transitionProperties) {
            if (!isValueChanged(tVar, tVar2, str)) {
            }
        }
        return false;
        return true;
    }

    boolean isValidTarget(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.mTargetTypeExcludes.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && ViewCompat.getTransitionName(view) != null && this.mTargetNameExcludes.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i2 = 0; i2 < this.mTargetTypes.size(); i2++) {
                if (this.mTargetTypes.get(i2).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void pause(View view) {
        if (this.mEnded) {
            return;
        }
        androidx.collection.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        n0 n0VarD = d0.d(view);
        for (int i = size - 1; i >= 0; i--) {
            d dVarValueAt = runningAnimators.valueAt(i);
            if (dVarValueAt.f1874a != null && n0VarD.equals(dVarValueAt.f1875d)) {
                androidx.transition.a.b(runningAnimators.keyAt(i));
            }
        }
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((g) arrayList2.get(i2)).onTransitionPause(this);
            }
        }
        this.mPaused = true;
    }

    void playTransition(ViewGroup viewGroup) {
        d dVar;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        androidx.collection.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        n0 n0VarD = d0.d(viewGroup);
        for (int i = size - 1; i >= 0; i--) {
            Animator animatorKeyAt = runningAnimators.keyAt(i);
            if (animatorKeyAt != null && (dVar = runningAnimators.get(animatorKeyAt)) != null && dVar.f1874a != null && n0VarD.equals(dVar.f1875d)) {
                t tVar = dVar.c;
                View view = dVar.f1874a;
                t transitionValues = getTransitionValues(view, true);
                t matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (transitionValues == null && matchedTransitionValues == null) {
                    matchedTransitionValues = this.mEndValues.f1888a.get(view);
                }
                if (!(transitionValues == null && matchedTransitionValues == null) && dVar.f1876e.isTransitionRequired(tVar, matchedTransitionValues)) {
                    if (animatorKeyAt.isRunning() || animatorKeyAt.isStarted()) {
                        animatorKeyAt.cancel();
                    } else {
                        runningAnimators.remove(animatorKeyAt);
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        runAnimators();
    }

    public m removeListener(g gVar) {
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(gVar);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public m removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                androidx.collection.a<Animator, d> runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                n0 n0VarD = d0.d(view);
                for (int i = size - 1; i >= 0; i--) {
                    d dVarValueAt = runningAnimators.valueAt(i);
                    if (dVarValueAt.f1874a != null && n0VarD.equals(dVarValueAt.f1875d)) {
                        androidx.transition.a.c(runningAnimators.keyAt(i));
                    }
                }
                ArrayList<g> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((g) arrayList2.get(i2)).onTransitionResume(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    protected void runAnimators() {
        start();
        androidx.collection.a<Animator, d> runningAnimators = getRunningAnimators();
        for (Animator animator : this.mAnimators) {
            if (runningAnimators.containsKey(animator)) {
                start();
                runAnimator(animator, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    void setCanRemoveViews(boolean z) {
        this.mCanRemoveViews = z;
    }

    public m setDuration(long j) {
        this.mDuration = j;
        return this;
    }

    public void setEpicenterCallback(f fVar) {
        this.mEpicenterCallback = fVar;
    }

    public m setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!isValidMatch(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (alreadyContains(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    public void setPathMotion(androidx.transition.g gVar) {
        if (gVar == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = gVar;
        }
    }

    public void setPropagation(p pVar) {
    }

    m setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public m setStartDelay(long j) {
        this.mStartDelay = j;
        return this;
    }

    protected void start() {
        if (this.mNumInstances == 0) {
            ArrayList<g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((g) arrayList2.get(i)).onTransitionStart(this);
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString() {
        return toString("");
    }

    public m addTarget(int i) {
        if (i != 0) {
            this.mTargetIds.add(Integer.valueOf(i));
        }
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public m mo0clone() {
        try {
            m mVar = (m) super.clone();
            mVar.mAnimators = new ArrayList<>();
            mVar.mStartValues = new u();
            mVar.mEndValues = new u();
            mVar.mStartValuesList = null;
            mVar.mEndValuesList = null;
            return mVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public m excludeChildren(int i, boolean z) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i, z);
        return this;
    }

    public m excludeTarget(int i, boolean z) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i, z);
        return this;
    }

    public m removeTarget(int i) {
        if (i != 0) {
            this.mTargetIds.remove(Integer.valueOf(i));
        }
        return this;
    }

    String toString(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.mDuration != -1) {
            str2 = str2 + "dur(" + this.mDuration + ") ";
        }
        if (this.mStartDelay != -1) {
            str2 = str2 + "dly(" + this.mStartDelay + ") ";
        }
        if (this.mInterpolator != null) {
            str2 = str2 + "interp(" + this.mInterpolator + ") ";
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.mTargetIds.size() > 0) {
            for (int i = 0; i < this.mTargetIds.size(); i++) {
                if (i > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargetIds.get(i);
            }
        }
        if (this.mTargets.size() > 0) {
            for (int i2 = 0; i2 < this.mTargets.size(); i2++) {
                if (i2 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargets.get(i2);
            }
        }
        return str3 + ")";
    }

    public m addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    public m excludeChildren(Class<?> cls, boolean z) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z);
        return this;
    }

    public m excludeTarget(String str, boolean z) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z);
        return this;
    }

    public m removeTarget(String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public m excludeTarget(Class<?> cls, boolean z) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z);
        return this;
    }

    public m removeTarget(Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    public m addTarget(Class<?> cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    @SuppressLint({"RestrictedApi"})
    public m(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.f1870a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long jG = androidx.core.a.f.g.g(typedArrayObtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (jG >= 0) {
            setDuration(jG);
        }
        long jG2 = androidx.core.a.f.g.g(typedArrayObtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (jG2 > 0) {
            setStartDelay(jG2);
        }
        int iH = androidx.core.a.f.g.h(typedArrayObtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (iH > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, iH));
        }
        String strI = androidx.core.a.f.g.i(typedArrayObtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (strI != null) {
            setMatchOrder(parseMatchOrder(strI));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
