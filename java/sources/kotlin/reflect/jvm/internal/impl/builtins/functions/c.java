package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.List;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends GivenFunctionsMemberScope {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14789a;

        static {
            int[] iArr = new int[FunctionClassKind.values().length];
            iArr[FunctionClassKind.Function.ordinal()] = 1;
            iArr[FunctionClassKind.SuspendFunction.ordinal()] = 2;
            f14789a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(m storageManager, b containingClass) {
        super(storageManager, containingClass);
        r.e(storageManager, "storageManager");
        r.e(containingClass, "containingClass");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    protected List<u> i() {
        int i = a.f14789a[((b) l()).Q0().ordinal()];
        if (i != 1) {
            return i != 2 ? kotlin.collections.u.j() : t.d(d.D.a((b) l(), true));
        }
        return t.d(d.D.a((b) l(), false));
    }
}
