package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f751f = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f752a;
    int b;
    String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f753d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HashMap<String, ConstraintAttribute> f754e;

    public d() {
        int i = f751f;
        this.f752a = i;
        this.b = i;
        this.c = null;
    }

    public abstract void a(HashMap<String, e.a.a.a.c> map);

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public abstract d clone();

    public d c(d dVar) {
        this.f752a = dVar.f752a;
        this.b = dVar.b;
        this.c = dVar.c;
        this.f753d = dVar.f753d;
        this.f754e = dVar.f754e;
        return this;
    }

    abstract void d(HashSet<String> hashSet);

    abstract void e(Context context, AttributeSet attributeSet);

    public void f(HashMap<String, Integer> map) {
    }
}
