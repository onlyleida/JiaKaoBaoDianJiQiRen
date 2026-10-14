package com.google.android.gms.internal.mlkit_vision_face;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzck implements Iterator {
    final Iterator zza;

    zzck(Iterator it) {
        Objects.requireNonNull(it);
        this.zza = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return zza(this.zza.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zza.remove();
    }

    abstract Object zza(Object obj);
}
