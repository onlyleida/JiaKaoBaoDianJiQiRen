package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class d {
    public static final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f15526d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f15527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f15528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f15529g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f15530h;
    private static final int i;
    private static final int j;
    private static final int k;
    private static final int l;
    private static final int m;
    private static final int n;
    public static final d o;
    public static final d p;
    public static final d q;
    public static final d r;
    public static final d s;
    private static final List<a.C0353a> t;
    private static final List<a.C0353a> u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<c> f15531a;
    private final int b;

    public static final class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.scopes.d$a$a, reason: collision with other inner class name */
        private static final class C0353a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f15532a;
            private final String b;

            public C0353a(int i, String name) {
                r.e(name, "name");
                this.f15532a = i;
                this.b = name;
            }

            public final int a() {
                return this.f15532a;
            }

            public final String b() {
                return this.b;
            }
        }

        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int j() {
            int i = d.f15526d;
            a aVar = d.c;
            d.f15526d <<= 1;
            return i;
        }

        public final int b() {
            return d.k;
        }

        public final int c() {
            return d.l;
        }

        public final int d() {
            return d.i;
        }

        public final int e() {
            return d.f15527e;
        }

        public final int f() {
            return d.f15530h;
        }

        public final int g() {
            return d.f15528f;
        }

        public final int h() {
            return d.f15529g;
        }

        public final int i() {
            return d.j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        a.C0353a c0353a;
        a.C0353a c0353a2;
        a aVar = new a(null);
        c = aVar;
        int iJ = aVar.j();
        f15527e = iJ;
        int iJ2 = aVar.j();
        f15528f = iJ2;
        int iJ3 = aVar.j();
        f15529g = iJ3;
        int iJ4 = aVar.j();
        f15530h = iJ4;
        int iJ5 = aVar.j();
        i = iJ5;
        int iJ6 = aVar.j();
        j = iJ6;
        int iJ7 = aVar.j() - 1;
        k = iJ7;
        int i2 = iJ | iJ2 | iJ3;
        l = i2;
        int i3 = iJ2 | iJ5 | iJ6;
        m = i3;
        int i4 = iJ5 | iJ6;
        n = i4;
        int i5 = 2;
        o = new d(iJ7, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        p = new d(i4, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        new d(iJ, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        new d(iJ2, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        new d(iJ3, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        q = new d(i2, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        new d(iJ4, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        r = new d(iJ5, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        s = new d(iJ6, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        new d(i3, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        Field[] fields = d.class.getFields();
        r.d(fields, "T::class.java.fields");
        ArrayList<Field> arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Field field2 : arrayList) {
            Object obj = field2.get(null);
            d dVar = obj instanceof d ? (d) obj : null;
            if (dVar != null) {
                int iM = dVar.m();
                String name = field2.getName();
                r.d(name, "field.name");
                c0353a2 = new a.C0353a(iM, name);
            } else {
                c0353a2 = null;
            }
            if (c0353a2 != null) {
                arrayList2.add(c0353a2);
            }
        }
        t = arrayList2;
        Field[] fields2 = d.class.getFields();
        r.d(fields2, "T::class.java.fields");
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList<Field> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (r.a(((Field) obj2).getType(), Integer.TYPE)) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Field field4 : arrayList4) {
            Object obj3 = field4.get(null);
            Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) obj3).intValue();
            if (iIntValue == ((-iIntValue) & iIntValue)) {
                String name2 = field4.getName();
                r.d(name2, "field.name");
                c0353a = new a.C0353a(iIntValue, name2);
            } else {
                c0353a = null;
            }
            if (c0353a != null) {
                arrayList5.add(c0353a);
            }
        }
        u = arrayList5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(int i2, List<? extends c> excludes) {
        r.e(excludes, "excludes");
        this.f15531a = excludes;
        Iterator it = excludes.iterator();
        while (it.hasNext()) {
            i2 &= ~((c) it.next()).a();
        }
        this.b = i2;
    }

    public final boolean a(int i2) {
        return (i2 & this.b) != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!r.a(d.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter");
        d dVar = (d) obj;
        return r.a(this.f15531a, dVar.f15531a) && this.b == dVar.b;
    }

    public int hashCode() {
        return (this.f15531a.hashCode() * 31) + this.b;
    }

    public final List<c> l() {
        return this.f15531a;
    }

    public final int m() {
        return this.b;
    }

    public final d n(int i2) {
        int i3 = i2 & this.b;
        if (i3 == 0) {
            return null;
        }
        return new d(i3, this.f15531a);
    }

    public String toString() {
        Object next;
        Iterator<T> it = t.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((a.C0353a) next).a() == m()));
        a.C0353a c0353a = (a.C0353a) next;
        String strB = c0353a == null ? null : c0353a.b();
        if (strB == null) {
            List<a.C0353a> list = u;
            ArrayList arrayList = new ArrayList();
            for (a.C0353a c0353a2 : list) {
                String strB2 = a(c0353a2.a()) ? c0353a2.b() : null;
                if (strB2 != null) {
                    arrayList.add(strB2);
                }
            }
            strB = CollectionsKt___CollectionsKt.m0(arrayList, " | ", null, null, 0, null, null, 62, null);
        }
        return "DescriptorKindFilter(" + strB + ", " + this.f15531a + ')';
    }

    public /* synthetic */ d(int i2, List list, int i3, o oVar) {
        this(i2, (i3 & 2) != 0 ? u.j() : list);
    }
}
