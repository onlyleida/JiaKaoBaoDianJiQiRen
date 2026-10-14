package com.google.android.exoplayer2.offline;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class i implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ i f11902a = new i();

    private /* synthetic */ i() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return DownloadManager.InternalHandler.compareStartTimes((Download) obj, (Download) obj2);
    }
}
