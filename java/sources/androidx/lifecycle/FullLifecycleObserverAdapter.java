package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class FullLifecycleObserverAdapter implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f1452a;
    private final o b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1453a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            f1453a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1453a[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1453a[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1453a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1453a[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1453a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1453a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    FullLifecycleObserverAdapter(j jVar, o oVar) {
        this.f1452a = jVar;
        this.b = oVar;
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        switch (a.f1453a[event.ordinal()]) {
            case 1:
                this.f1452a.a(rVar);
                break;
            case 2:
                this.f1452a.h(rVar);
                break;
            case 3:
                this.f1452a.c(rVar);
                break;
            case 4:
                this.f1452a.d(rVar);
                break;
            case 5:
                this.f1452a.e(rVar);
                break;
            case 6:
                this.f1452a.g(rVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        o oVar = this.b;
        if (oVar != null) {
            oVar.b(rVar, event);
        }
    }
}
