package kotlin.reflect.jvm.internal.impl.metadata.c;

import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.n;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f15330a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f15331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Integer> f15332e;

    public a(int... numbers) {
        r.e(numbers, "numbers");
        this.f15330a = numbers;
        Integer numA = ArraysKt___ArraysKt.A(numbers, 0);
        this.b = numA == null ? -1 : numA.intValue();
        Integer numA2 = ArraysKt___ArraysKt.A(numbers, 1);
        this.c = numA2 == null ? -1 : numA2.intValue();
        Integer numA3 = ArraysKt___ArraysKt.A(numbers, 2);
        this.f15331d = numA3 != null ? numA3.intValue() : -1;
        this.f15332e = numbers.length > 3 ? CollectionsKt___CollectionsKt.M0(n.b(numbers).subList(3, numbers.length)) : u.j();
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final boolean c(int i, int i2, int i3) {
        int i4 = this.b;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this.c;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this.f15331d >= i3;
    }

    public final boolean d(a version) {
        r.e(version, "version");
        return c(version.b, version.c, version.f15331d);
    }

    public final boolean e(int i, int i2, int i3) {
        int i4 = this.b;
        if (i4 < i) {
            return true;
        }
        if (i4 > i) {
            return false;
        }
        int i5 = this.c;
        if (i5 < i2) {
            return true;
        }
        return i5 <= i2 && this.f15331d <= i3;
    }

    public boolean equals(Object obj) {
        if (obj != null && r.a(getClass(), obj.getClass())) {
            a aVar = (a) obj;
            if (this.b == aVar.b && this.c == aVar.c && this.f15331d == aVar.f15331d && r.a(this.f15332e, aVar.f15332e)) {
                return true;
            }
        }
        return false;
    }

    protected final boolean f(a ourVersion) {
        r.e(ourVersion, "ourVersion");
        int i = this.b;
        if (i == 0) {
            if (ourVersion.b == 0 && this.c == ourVersion.c) {
                return true;
            }
        } else if (i == ourVersion.b && this.c <= ourVersion.c) {
            return true;
        }
        return false;
    }

    public final int[] g() {
        return this.f15330a;
    }

    public int hashCode() {
        int i = this.b;
        int i2 = i + (i * 31) + this.c;
        int i3 = i2 + (i2 * 31) + this.f15331d;
        return i3 + (i3 * 31) + this.f15332e.hashCode();
    }

    public String toString() {
        int[] iArrG = g();
        ArrayList arrayList = new ArrayList();
        int length = iArrG.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArrG[i];
            if (!(i2 != -1)) {
                break;
            }
            arrayList.add(Integer.valueOf(i2));
        }
        return arrayList.isEmpty() ? Constant.VENDOR_UNKNOWN : CollectionsKt___CollectionsKt.m0(arrayList, ".", null, null, 0, null, null, 62, null);
    }
}
