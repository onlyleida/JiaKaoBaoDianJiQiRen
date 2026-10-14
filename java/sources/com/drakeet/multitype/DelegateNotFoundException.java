package com.drakeet.multitype;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/drakeet/multitype/DelegateNotFoundException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "Ljava/lang/Class;", "clazz", "<init>", "(Ljava/lang/Class;)V", "multitype"}, k = 1, mv = {1, 1, 15})
public final class DelegateNotFoundException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DelegateNotFoundException(Class<?> clazz) {
        super("Have you registered the " + clazz.getName() + " type and its delegate or binder?");
        r.f(clazz, "clazz");
    }
}
