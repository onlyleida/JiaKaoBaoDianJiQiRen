package androidx.core.e;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final androidx.core.e.d f1105a = new C0032e(null, false);
    public static final androidx.core.e.d b = new C0032e(null, true);
    public static final androidx.core.e.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final androidx.core.e.d f1106d;

    private static class a implements c {
        static final a b = new a(true);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f1107a;

        private a(boolean z) {
            this.f1107a = z;
        }

        @Override // androidx.core.e.e.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            boolean z = false;
            while (i < i3) {
                int iA = e.a(Character.getDirectionality(charSequence.charAt(i)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                    } else if (!this.f1107a) {
                        return 1;
                    }
                    i++;
                } else if (this.f1107a) {
                    return 0;
                }
                z = true;
                i++;
            }
            if (z) {
                return this.f1107a ? 1 : 0;
            }
            return 2;
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f1108a = new b();

        private b() {
        }

        @Override // androidx.core.e.e.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            int iB = 2;
            while (i < i3 && iB == 2) {
                iB = e.b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return iB;
        }
    }

    private interface c {
        int a(CharSequence charSequence, int i, int i2);
    }

    private static abstract class d implements androidx.core.e.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f1109a;

        d(c cVar) {
            this.f1109a = cVar;
        }

        private boolean c(CharSequence charSequence, int i, int i2) {
            int iA = this.f1109a.a(charSequence, i, i2);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override // androidx.core.e.d
        public boolean a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f1109a == null ? b() : c(charSequence, i, i2);
        }

        protected abstract boolean b();
    }

    /* JADX INFO: renamed from: androidx.core.e.e$e, reason: collision with other inner class name */
    private static class C0032e extends d {
        private final boolean b;

        C0032e(c cVar, boolean z) {
            super(cVar);
            this.b = z;
        }

        @Override // androidx.core.e.e.d
        protected boolean b() {
            return this.b;
        }
    }

    private static class f extends d {
        static final f b = new f();

        f() {
            super(null);
        }

        @Override // androidx.core.e.e.d
        protected boolean b() {
            return androidx.core.e.f.b(Locale.getDefault()) == 1;
        }
    }

    static {
        b bVar = b.f1108a;
        c = new C0032e(bVar, false);
        f1106d = new C0032e(bVar, true);
        a aVar = a.b;
        f fVar = f.b;
    }

    static int a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i) {
        if (i != 0) {
            if (i == 1 || i == 2) {
                return 0;
            }
            switch (i) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
