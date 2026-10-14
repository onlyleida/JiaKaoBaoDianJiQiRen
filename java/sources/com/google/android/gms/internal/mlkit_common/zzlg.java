package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzlg implements zzll {
    final List zza;

    public zzlg(Context context, zzlf zzlfVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzlfVar.zzc()) {
            arrayList.add(new zzlu(context, zzlfVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzll
    public final void zza(zzld zzldVar) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzll) it.next()).zza(zzldVar);
        }
    }
}
