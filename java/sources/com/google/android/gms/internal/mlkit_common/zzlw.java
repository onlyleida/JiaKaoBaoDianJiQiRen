package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* JADX INFO: loaded from: classes.dex */
final class zzlw extends LazyInstanceMap {
    private zzlw() {
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    protected final /* bridge */ /* synthetic */ Object create(Object obj) {
        zzlf zzlfVar = (zzlf) obj;
        MlKitContext mlKitContext = MlKitContext.getInstance();
        return new zzlm(mlKitContext.getApplicationContext(), (SharedPrefManager) mlKitContext.get(SharedPrefManager.class), new zzlg(MlKitContext.getInstance().getApplicationContext(), zzlfVar), zzlfVar.zzb());
    }

    /* synthetic */ zzlw(zzlv zzlvVar) {
    }
}
