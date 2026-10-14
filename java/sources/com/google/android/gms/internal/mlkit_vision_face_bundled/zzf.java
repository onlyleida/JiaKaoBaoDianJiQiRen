package com.google.android.gms.internal.mlkit_vision_face_bundled;

import android.content.ContentResolver;
import android.database.ContentObserver;
import androidx.collection.a;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf {
    private final ContentResolver zzc;
    private final ContentObserver zzd;
    private static final Map zzb = new a();
    public static final String[] zza = {"key", "value"};

    static synchronized void zza() {
        Map map = zzb;
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            zzf zzfVar = (zzf) it.next();
            ContentResolver contentResolver = zzfVar.zzc;
            ContentObserver contentObserver = zzfVar.zzd;
            throw null;
        }
        map.clear();
    }
}
