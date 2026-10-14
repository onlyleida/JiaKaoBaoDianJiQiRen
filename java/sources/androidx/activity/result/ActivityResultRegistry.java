package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Random f41a = new Random();
    private final Map<Integer, String> b = new HashMap();
    final Map<String, Integer> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, d> f42d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<String> f43e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient Map<String, c<?>> f44f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map<String, Object> f45g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Bundle f46h = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    class a<I> extends androidx.activity.result.c<I> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f49a;
        final /* synthetic */ int b;
        final /* synthetic */ androidx.activity.result.e.a c;

        a(String str, int i, androidx.activity.result.e.a aVar) {
            this.f49a = str;
            this.b = i;
            this.c = aVar;
        }

        @Override // androidx.activity.result.c
        public void b(I i, androidx.core.app.b bVar) {
            ActivityResultRegistry.this.f43e.add(this.f49a);
            Integer num = ActivityResultRegistry.this.c.get(this.f49a);
            ActivityResultRegistry.this.f(num != null ? num.intValue() : this.b, this.c, i, bVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            ActivityResultRegistry.this.l(this.f49a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    class b<I> extends androidx.activity.result.c<I> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f51a;
        final /* synthetic */ int b;
        final /* synthetic */ androidx.activity.result.e.a c;

        b(String str, int i, androidx.activity.result.e.a aVar) {
            this.f51a = str;
            this.b = i;
            this.c = aVar;
        }

        @Override // androidx.activity.result.c
        public void b(I i, androidx.core.app.b bVar) {
            ActivityResultRegistry.this.f43e.add(this.f51a);
            Integer num = ActivityResultRegistry.this.c.get(this.f51a);
            ActivityResultRegistry.this.f(num != null ? num.intValue() : this.b, this.c, i, bVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            ActivityResultRegistry.this.l(this.f51a);
        }
    }

    private static class c<O> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.activity.result.a<O> f53a;
        final androidx.activity.result.e.a<?, O> b;

        c(androidx.activity.result.a<O> aVar, androidx.activity.result.e.a<?, O> aVar2) {
            this.f53a = aVar;
            this.b = aVar2;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Lifecycle f54a;
        private final ArrayList<o> b = new ArrayList<>();

        d(Lifecycle lifecycle) {
            this.f54a = lifecycle;
        }

        void a(o oVar) {
            this.f54a.a(oVar);
            this.b.add(oVar);
        }

        void b() {
            Iterator<o> it = this.b.iterator();
            while (it.hasNext()) {
                this.f54a.c(it.next());
            }
            this.b.clear();
        }
    }

    private void a(int i, String str) {
        this.b.put(Integer.valueOf(i), str);
        this.c.put(str, Integer.valueOf(i));
    }

    private <O> void d(String str, int i, Intent intent, c<O> cVar) {
        androidx.activity.result.a<O> aVar;
        if (cVar != null && (aVar = cVar.f53a) != null) {
            aVar.a(cVar.b.c(i, intent));
        } else {
            this.f45g.remove(str);
            this.f46h.putParcelable(str, new ActivityResult(i, intent));
        }
    }

    private int e() {
        int iNextInt = this.f41a.nextInt(2147418112);
        while (true) {
            int i = iNextInt + 65536;
            if (!this.b.containsKey(Integer.valueOf(i))) {
                return i;
            }
            iNextInt = this.f41a.nextInt(2147418112);
        }
    }

    private int k(String str) {
        Integer num = this.c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iE = e();
        a(iE, str);
        return iE;
    }

    public final boolean b(int i, int i2, Intent intent) {
        String str = this.b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f43e.remove(str);
        d(str, i2, intent, this.f44f.get(str));
        return true;
    }

    public final <O> boolean c(int i, @SuppressLint({"UnknownNullness"}) O o) {
        androidx.activity.result.a<?> aVar;
        String str = this.b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f43e.remove(str);
        c<?> cVar = this.f44f.get(str);
        if (cVar != null && (aVar = cVar.f53a) != null) {
            aVar.a(o);
            return true;
        }
        this.f46h.remove(str);
        this.f45g.put(str, o);
        return true;
    }

    public abstract <I, O> void f(int i, androidx.activity.result.e.a<I, O> aVar, @SuppressLint({"UnknownNullness"}) I i2, androidx.core.app.b bVar);

    public final void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.f43e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.f41a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.f46h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
        for (int i = 0; i < stringArrayList.size(); i++) {
            String str = stringArrayList.get(i);
            if (this.c.containsKey(str)) {
                Integer numRemove = this.c.remove(str);
                if (!this.f46h.containsKey(str)) {
                    this.b.remove(numRemove);
                }
            }
            a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
        }
    }

    public final void h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.c.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.c.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f43e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f46h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f41a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> androidx.activity.result.c<I> i(String str, androidx.activity.result.e.a<I, O> aVar, androidx.activity.result.a<O> aVar2) {
        int iK = k(str);
        this.f44f.put(str, new c<>(aVar2, aVar));
        if (this.f45g.containsKey(str)) {
            Object obj = this.f45g.get(str);
            this.f45g.remove(str);
            aVar2.a(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f46h.getParcelable(str);
        if (activityResult != null) {
            this.f46h.remove(str);
            aVar2.a(aVar.c(activityResult.b(), activityResult.a()));
        }
        return new b(str, iK, aVar);
    }

    public final <I, O> androidx.activity.result.c<I> j(final String str, r rVar, final androidx.activity.result.e.a<I, O> aVar, final androidx.activity.result.a<O> aVar2) {
        Lifecycle lifecycle = rVar.getLifecycle();
        if (lifecycle.b().isAtLeast(Lifecycle.State.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + rVar + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.");
        }
        int iK = k(str);
        d dVar = this.f42d.get(str);
        if (dVar == null) {
            dVar = new d(lifecycle);
        }
        dVar.a(new o() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.o
            public void b(r rVar2, Lifecycle.Event event) {
                if (!Lifecycle.Event.ON_START.equals(event)) {
                    if (Lifecycle.Event.ON_STOP.equals(event)) {
                        ActivityResultRegistry.this.f44f.remove(str);
                        return;
                    } else {
                        if (Lifecycle.Event.ON_DESTROY.equals(event)) {
                            ActivityResultRegistry.this.l(str);
                            return;
                        }
                        return;
                    }
                }
                ActivityResultRegistry.this.f44f.put(str, new c<>(aVar2, aVar));
                if (ActivityResultRegistry.this.f45g.containsKey(str)) {
                    Object obj = ActivityResultRegistry.this.f45g.get(str);
                    ActivityResultRegistry.this.f45g.remove(str);
                    aVar2.a(obj);
                }
                ActivityResult activityResult = (ActivityResult) ActivityResultRegistry.this.f46h.getParcelable(str);
                if (activityResult != null) {
                    ActivityResultRegistry.this.f46h.remove(str);
                    aVar2.a(aVar.c(activityResult.b(), activityResult.a()));
                }
            }
        });
        this.f42d.put(str, dVar);
        return new a(str, iK, aVar);
    }

    final void l(String str) {
        Integer numRemove;
        if (!this.f43e.contains(str) && (numRemove = this.c.remove(str)) != null) {
            this.b.remove(numRemove);
        }
        this.f44f.remove(str);
        if (this.f45g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f45g.get(str));
            this.f45g.remove(str);
        }
        if (this.f46h.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f46h.getParcelable(str));
            this.f46h.remove(str);
        }
        d dVar = this.f42d.get(str);
        if (dVar != null) {
            dVar.b();
            this.f42d.remove(str);
        }
    }
}
