package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes.dex */
final class zaq extends ThreadLocal<Boolean> {
    zaq() {
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Boolean initialValue() {
        return Boolean.FALSE;
    }
}
