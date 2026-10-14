package androidx.recyclerview.widget;

/* JADX INFO: loaded from: classes.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final androidx.collection.g<RecyclerView.c0, a> f1799a = new androidx.collection.g<>();
    final androidx.collection.d<RecyclerView.c0> b = new androidx.collection.d<>();

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static androidx.core.util.e<a> f1800d = new androidx.core.util.f(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1801a;
        RecyclerView.l.c b;
        RecyclerView.l.c c;

        private a() {
        }

        static void a() {
            while (f1800d.acquire() != null) {
            }
        }

        static a b() {
            a aVarAcquire = f1800d.acquire();
            return aVarAcquire == null ? new a() : aVarAcquire;
        }

        static void c(a aVar) {
            aVar.f1801a = 0;
            aVar.b = null;
            aVar.c = null;
            f1800d.release(aVar);
        }
    }

    interface b {
        void a(RecyclerView.c0 c0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2);

        void b(RecyclerView.c0 c0Var);

        void c(RecyclerView.c0 c0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2);

        void d(RecyclerView.c0 c0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2);
    }

    u() {
    }

    private RecyclerView.l.c l(RecyclerView.c0 c0Var, int i) {
        a aVarValueAt;
        RecyclerView.l.c cVar;
        int iIndexOfKey = this.f1799a.indexOfKey(c0Var);
        if (iIndexOfKey >= 0 && (aVarValueAt = this.f1799a.valueAt(iIndexOfKey)) != null) {
            int i2 = aVarValueAt.f1801a;
            if ((i2 & i) != 0) {
                int i3 = (~i) & i2;
                aVarValueAt.f1801a = i3;
                if (i == 4) {
                    cVar = aVarValueAt.b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarValueAt.c;
                }
                if ((i3 & 12) == 0) {
                    this.f1799a.removeAt(iIndexOfKey);
                    a.c(aVarValueAt);
                }
                return cVar;
            }
        }
        return null;
    }

    void a(RecyclerView.c0 c0Var, RecyclerView.l.c cVar) {
        a aVarB = this.f1799a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1799a.put(c0Var, aVarB);
        }
        aVarB.f1801a |= 2;
        aVarB.b = cVar;
    }

    void b(RecyclerView.c0 c0Var) {
        a aVarB = this.f1799a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1799a.put(c0Var, aVarB);
        }
        aVarB.f1801a |= 1;
    }

    void c(long j, RecyclerView.c0 c0Var) {
        this.b.j(j, c0Var);
    }

    void d(RecyclerView.c0 c0Var, RecyclerView.l.c cVar) {
        a aVarB = this.f1799a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1799a.put(c0Var, aVarB);
        }
        aVarB.c = cVar;
        aVarB.f1801a |= 8;
    }

    void e(RecyclerView.c0 c0Var, RecyclerView.l.c cVar) {
        a aVarB = this.f1799a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f1799a.put(c0Var, aVarB);
        }
        aVarB.b = cVar;
        aVarB.f1801a |= 4;
    }

    void f() {
        this.f1799a.clear();
        this.b.c();
    }

    RecyclerView.c0 g(long j) {
        return this.b.f(j);
    }

    boolean h(RecyclerView.c0 c0Var) {
        a aVar = this.f1799a.get(c0Var);
        return (aVar == null || (aVar.f1801a & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.c0 c0Var) {
        a aVar = this.f1799a.get(c0Var);
        return (aVar == null || (aVar.f1801a & 4) == 0) ? false : true;
    }

    void j() {
        a.a();
    }

    public void k(RecyclerView.c0 c0Var) {
        p(c0Var);
    }

    RecyclerView.l.c m(RecyclerView.c0 c0Var) {
        return l(c0Var, 8);
    }

    RecyclerView.l.c n(RecyclerView.c0 c0Var) {
        return l(c0Var, 4);
    }

    void o(b bVar) {
        for (int size = this.f1799a.size() - 1; size >= 0; size--) {
            RecyclerView.c0 c0VarKeyAt = this.f1799a.keyAt(size);
            a aVarRemoveAt = this.f1799a.removeAt(size);
            int i = aVarRemoveAt.f1801a;
            if ((i & 3) == 3) {
                bVar.b(c0VarKeyAt);
            } else if ((i & 1) != 0) {
                RecyclerView.l.c cVar = aVarRemoveAt.b;
                if (cVar == null) {
                    bVar.b(c0VarKeyAt);
                } else {
                    bVar.c(c0VarKeyAt, cVar, aVarRemoveAt.c);
                }
            } else if ((i & 14) == 14) {
                bVar.a(c0VarKeyAt, aVarRemoveAt.b, aVarRemoveAt.c);
            } else if ((i & 12) == 12) {
                bVar.d(c0VarKeyAt, aVarRemoveAt.b, aVarRemoveAt.c);
            } else if ((i & 4) != 0) {
                bVar.c(c0VarKeyAt, aVarRemoveAt.b, null);
            } else if ((i & 8) != 0) {
                bVar.a(c0VarKeyAt, aVarRemoveAt.b, aVarRemoveAt.c);
            }
            a.c(aVarRemoveAt);
        }
    }

    void p(RecyclerView.c0 c0Var) {
        a aVar = this.f1799a.get(c0Var);
        if (aVar == null) {
            return;
        }
        aVar.f1801a &= -2;
    }

    void q(RecyclerView.c0 c0Var) {
        for (int iM = this.b.m() - 1; iM >= 0; iM--) {
            if (c0Var == this.b.n(iM)) {
                this.b.l(iM);
                break;
            }
        }
        a aVarRemove = this.f1799a.remove(c0Var);
        if (aVarRemove != null) {
            a.c(aVarRemove);
        }
    }
}
