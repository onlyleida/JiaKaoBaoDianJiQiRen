package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class q extends m {
    int c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<m> f1881a = new ArrayList<>();
    private boolean b = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1882d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1883e = 0;

    class a extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f1884a;

        a(q qVar, m mVar) {
            this.f1884a = mVar;
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            this.f1884a.runAnimators();
            mVar.removeListener(this);
        }
    }

    static class b extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        q f1885a;

        b(q qVar) {
            this.f1885a = qVar;
        }

        @Override // androidx.transition.m.g
        public void onTransitionEnd(m mVar) {
            q qVar = this.f1885a;
            int i = qVar.c - 1;
            qVar.c = i;
            if (i == 0) {
                qVar.f1882d = false;
                qVar.end();
            }
            mVar.removeListener(this);
        }

        @Override // androidx.transition.n, androidx.transition.m.g
        public void onTransitionStart(m mVar) {
            q qVar = this.f1885a;
            if (qVar.f1882d) {
                return;
            }
            qVar.start();
            this.f1885a.f1882d = true;
        }
    }

    private void h(m mVar) {
        this.f1881a.add(mVar);
        mVar.mParent = this;
    }

    private void v() {
        b bVar = new b(this);
        Iterator<m> it = this.f1881a.iterator();
        while (it.hasNext()) {
            it.next().addListener(bVar);
        }
        this.c = this.f1881a.size();
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public q addListener(m.g gVar) {
        return (q) super.addListener(gVar);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public q addTarget(int i) {
        for (int i2 = 0; i2 < this.f1881a.size(); i2++) {
            this.f1881a.get(i2).addTarget(i);
        }
        return (q) super.addTarget(i);
    }

    @Override // androidx.transition.m
    protected void cancel() {
        super.cancel();
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).cancel();
        }
    }

    @Override // androidx.transition.m
    public void captureEndValues(t tVar) {
        if (isValidTarget(tVar.b)) {
            for (m mVar : this.f1881a) {
                if (mVar.isValidTarget(tVar.b)) {
                    mVar.captureEndValues(tVar);
                    tVar.c.add(mVar);
                }
            }
        }
    }

    @Override // androidx.transition.m
    void capturePropagationValues(t tVar) {
        super.capturePropagationValues(tVar);
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).capturePropagationValues(tVar);
        }
    }

    @Override // androidx.transition.m
    public void captureStartValues(t tVar) {
        if (isValidTarget(tVar.b)) {
            for (m mVar : this.f1881a) {
                if (mVar.isValidTarget(tVar.b)) {
                    mVar.captureStartValues(tVar);
                    tVar.c.add(mVar);
                }
            }
        }
    }

    @Override // androidx.transition.m
    protected void createAnimators(ViewGroup viewGroup, u uVar, u uVar2, ArrayList<t> arrayList, ArrayList<t> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            m mVar = this.f1881a.get(i);
            if (startDelay > 0 && (this.b || i == 0)) {
                long startDelay2 = mVar.getStartDelay();
                if (startDelay2 > 0) {
                    mVar.setStartDelay(startDelay2 + startDelay);
                } else {
                    mVar.setStartDelay(startDelay);
                }
            }
            mVar.createAnimators(viewGroup, uVar, uVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public q addTarget(View view) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).addTarget(view);
        }
        return (q) super.addTarget(view);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public q addTarget(Class<?> cls) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).addTarget(cls);
        }
        return (q) super.addTarget(cls);
    }

    @Override // androidx.transition.m
    public m excludeTarget(View view, boolean z) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public q addTarget(String str) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).addTarget(str);
        }
        return (q) super.addTarget(str);
    }

    @Override // androidx.transition.m
    void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).forceToEnd(viewGroup);
        }
    }

    public q g(m mVar) {
        h(mVar);
        long j = this.mDuration;
        if (j >= 0) {
            mVar.setDuration(j);
        }
        if ((this.f1883e & 1) != 0) {
            mVar.setInterpolator(getInterpolator());
        }
        if ((this.f1883e & 2) != 0) {
            mVar.setPropagation(getPropagation());
        }
        if ((this.f1883e & 4) != 0) {
            mVar.setPathMotion(getPathMotion());
        }
        if ((this.f1883e & 8) != 0) {
            mVar.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    public m i(int i) {
        if (i < 0 || i >= this.f1881a.size()) {
            return null;
        }
        return this.f1881a.get(i);
    }

    public int j() {
        return this.f1881a.size();
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public q removeListener(m.g gVar) {
        return (q) super.removeListener(gVar);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public q removeTarget(int i) {
        for (int i2 = 0; i2 < this.f1881a.size(); i2++) {
            this.f1881a.get(i2).removeTarget(i);
        }
        return (q) super.removeTarget(i);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public q removeTarget(View view) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).removeTarget(view);
        }
        return (q) super.removeTarget(view);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public q removeTarget(Class<?> cls) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).removeTarget(cls);
        }
        return (q) super.removeTarget(cls);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public q removeTarget(String str) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).removeTarget(str);
        }
        return (q) super.removeTarget(str);
    }

    public q p(m mVar) {
        this.f1881a.remove(mVar);
        mVar.mParent = null;
        return this;
    }

    @Override // androidx.transition.m
    public void pause(View view) {
        super.pause(view);
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).pause(view);
        }
    }

    public q q(long j) {
        ArrayList<m> arrayList;
        super.setDuration(j);
        if (this.mDuration >= 0 && (arrayList = this.f1881a) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1881a.get(i).setDuration(j);
            }
        }
        return this;
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public q setInterpolator(TimeInterpolator timeInterpolator) {
        this.f1883e |= 1;
        ArrayList<m> arrayList = this.f1881a;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1881a.get(i).setInterpolator(timeInterpolator);
            }
        }
        return (q) super.setInterpolator(timeInterpolator);
    }

    @Override // androidx.transition.m
    public void resume(View view) {
        super.resume(view);
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).resume(view);
        }
    }

    @Override // androidx.transition.m
    protected void runAnimators() {
        if (this.f1881a.isEmpty()) {
            start();
            end();
            return;
        }
        v();
        if (this.b) {
            Iterator<m> it = this.f1881a.iterator();
            while (it.hasNext()) {
                it.next().runAnimators();
            }
            return;
        }
        for (int i = 1; i < this.f1881a.size(); i++) {
            this.f1881a.get(i - 1).addListener(new a(this, this.f1881a.get(i)));
        }
        m mVar = this.f1881a.get(0);
        if (mVar != null) {
            mVar.runAnimators();
        }
    }

    public q s(int i) {
        if (i == 0) {
            this.b = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
            }
            this.b = false;
        }
        return this;
    }

    @Override // androidx.transition.m
    void setCanRemoveViews(boolean z) {
        super.setCanRemoveViews(z);
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).setCanRemoveViews(z);
        }
    }

    @Override // androidx.transition.m
    public /* bridge */ /* synthetic */ m setDuration(long j) {
        q(j);
        return this;
    }

    @Override // androidx.transition.m
    public void setEpicenterCallback(m.f fVar) {
        super.setEpicenterCallback(fVar);
        this.f1883e |= 8;
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).setEpicenterCallback(fVar);
        }
    }

    @Override // androidx.transition.m
    public void setPathMotion(g gVar) {
        super.setPathMotion(gVar);
        this.f1883e |= 4;
        if (this.f1881a != null) {
            for (int i = 0; i < this.f1881a.size(); i++) {
                this.f1881a.get(i).setPathMotion(gVar);
            }
        }
    }

    @Override // androidx.transition.m
    public void setPropagation(p pVar) {
        super.setPropagation(pVar);
        this.f1883e |= 2;
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).setPropagation(pVar);
        }
    }

    @Override // androidx.transition.m
    /* bridge */ /* synthetic */ m setSceneRoot(ViewGroup viewGroup) {
        t(viewGroup);
        return this;
    }

    q t(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            this.f1881a.get(i).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override // androidx.transition.m
    String toString(String str) {
        String string = super.toString(str);
        for (int i = 0; i < this.f1881a.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append("\n");
            sb.append(this.f1881a.get(i).toString(str + "  "));
            string = sb.toString();
        }
        return string;
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public q setStartDelay(long j) {
        return (q) super.setStartDelay(j);
    }

    @Override // androidx.transition.m
    /* JADX INFO: renamed from: clone */
    public m mo0clone() {
        q qVar = (q) super.mo0clone();
        qVar.f1881a = new ArrayList<>();
        int size = this.f1881a.size();
        for (int i = 0; i < size; i++) {
            qVar.h(this.f1881a.get(i).mo0clone());
        }
        return qVar;
    }

    @Override // androidx.transition.m
    public m excludeTarget(String str, boolean z) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    @Override // androidx.transition.m
    public m excludeTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.f1881a.size(); i2++) {
            this.f1881a.get(i2).excludeTarget(i, z);
        }
        return super.excludeTarget(i, z);
    }

    @Override // androidx.transition.m
    public m excludeTarget(Class<?> cls, boolean z) {
        for (int i = 0; i < this.f1881a.size(); i++) {
            this.f1881a.get(i).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }
}
