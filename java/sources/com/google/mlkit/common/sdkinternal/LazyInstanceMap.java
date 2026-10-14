package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public abstract class LazyInstanceMap<K, V> {
    private final Map zza = new HashMap();

    @KeepForSdk
    protected abstract V create(K k);

    @KeepForSdk
    public V get(K k) {
        synchronized (this.zza) {
            if (this.zza.containsKey(k)) {
                return (V) this.zza.get(k);
            }
            V vCreate = create(k);
            this.zza.put(k, vCreate);
            return vCreate;
        }
    }
}
