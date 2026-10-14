package com.google.android.gms.internal.mlkit_vision_face;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* JADX INFO: loaded from: classes2.dex */
final class zznj extends LazyInstanceMap {
    private zznj() {
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    protected final /* bridge */ /* synthetic */ Object create(Object obj) {
        zzmq zzmqVar = (zzmq) obj;
        MlKitContext mlKitContext = MlKitContext.getInstance();
        return new zzmz(mlKitContext.getApplicationContext(), (SharedPrefManager) mlKitContext.get(SharedPrefManager.class), new zzmr(MlKitContext.getInstance().getApplicationContext(), zzmqVar), zzmqVar.zzb());
    }

    /* synthetic */ zznj(zzni zzniVar) {
    }
}
