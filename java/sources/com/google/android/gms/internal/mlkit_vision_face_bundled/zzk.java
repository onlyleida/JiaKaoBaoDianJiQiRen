package com.google.android.gms.internal.mlkit_vision_face_bundled;

import android.content.SharedPreferences;
import androidx.collection.a;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk {
    private static final Map zza = new a();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    static synchronized void zza() {
        Map map = zza;
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            zzk zzkVar = (zzk) it.next();
            SharedPreferences sharedPreferences = zzkVar.zzb;
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = zzkVar.zzc;
            throw null;
        }
        map.clear();
    }
}
