package com.google.android.gms.internal.mlkit_vision_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzjo implements zzjs {
    final List zza;

    public zzjo(Context context, zzjn zzjnVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzjnVar.zzc()) {
            arrayList.add(new zzjz(context, zzjnVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzjs
    public final void zza(zzju zzjuVar) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzjs) it.next()).zza(zzjuVar);
        }
    }
}
