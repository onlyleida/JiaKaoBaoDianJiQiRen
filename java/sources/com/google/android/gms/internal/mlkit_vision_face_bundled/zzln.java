package com.google.android.gms.internal.mlkit_vision_face_bundled;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzln implements zzlr {
    final List zza;

    public zzln(Context context, zzlm zzlmVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzlmVar.zzc()) {
            arrayList.add(new zzma(context, zzlmVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzlr
    public final void zza(zzlv zzlvVar) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzlr) it.next()).zza(zzlvVar);
        }
    }
}
