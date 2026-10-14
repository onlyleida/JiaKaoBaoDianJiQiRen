package kotlin.reflect.jvm.internal.impl.resolve.n;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Iterable<Object> f15515a;

    public b(m storageManager, Iterable<? extends Object> samWithReceiverResolvers) {
        r.e(storageManager, "storageManager");
        r.e(samWithReceiverResolvers, "samWithReceiverResolvers");
        this.f15515a = samWithReceiverResolvers;
        storageManager.h();
    }
}
