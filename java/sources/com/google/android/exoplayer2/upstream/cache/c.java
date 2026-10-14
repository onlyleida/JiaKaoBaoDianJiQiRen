package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.DataSpec;

/* JADX INFO: compiled from: CacheKeyFactory.java */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class c {
    public static /* synthetic */ String a(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : dataSpec.uri.toString();
    }
}
