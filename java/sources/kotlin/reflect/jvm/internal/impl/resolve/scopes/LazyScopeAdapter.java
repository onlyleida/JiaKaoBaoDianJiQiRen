package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyScopeAdapter extends a {
    private final kotlin.reflect.jvm.internal.impl.storage.h<MemberScope> b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyScopeAdapter(Function0<? extends MemberScope> getScope) {
        this(null, getScope, 1, 0 == true ? 1 : 0);
        r.e(getScope, "getScope");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ LazyScopeAdapter(m NO_LOCKS, Function0 function0, int i, o oVar) {
        if ((i & 1) != 0) {
            NO_LOCKS = LockBasedStorageManager.f15621e;
            r.d(NO_LOCKS, "NO_LOCKS");
        }
        this(NO_LOCKS, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a
    protected MemberScope i() {
        return this.b.invoke();
    }

    public LazyScopeAdapter(m storageManager, final Function0<? extends MemberScope> getScope) {
        r.e(storageManager, "storageManager");
        r.e(getScope, "getScope");
        this.b = storageManager.c(new Function0<MemberScope>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter$lazyScope$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MemberScope invoke() {
                MemberScope memberScopeInvoke = getScope.invoke();
                return memberScopeInvoke instanceof a ? ((a) memberScopeInvoke).h() : memberScopeInvoke;
            }
        });
    }
}
