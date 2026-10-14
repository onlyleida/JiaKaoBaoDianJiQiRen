package kotlin.reflect.jvm.internal.impl.metadata.jvm.a;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends kotlin.reflect.jvm.internal.impl.metadata.c.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final e f15373g = new e(1, 5, 1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f15374f;

    static {
        new e(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(int[] versionArray, boolean z) {
        super(Arrays.copyOf(versionArray, versionArray.length));
        r.e(versionArray, "versionArray");
        this.f15374f = z;
    }

    public boolean h() {
        boolean zF;
        if (a() == 1 && b() == 0) {
            return false;
        }
        if (this.f15374f) {
            zF = f(f15373g);
        } else {
            int iA = a();
            e eVar = f15373g;
            zF = iA == eVar.a() && b() <= eVar.b() + 1;
        }
        return zF;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(int... numbers) {
        this(numbers, false);
        r.e(numbers, "numbers");
    }
}
