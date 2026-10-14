package com.google.android.exoplayer2.drm;

/* JADX INFO: compiled from: DrmSession.java */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class t {
    public static boolean $default$playClearSamplesWithoutKeys(DrmSession drmSession) {
        return false;
    }

    public static void a(DrmSession drmSession, DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.acquire(null);
        }
        if (drmSession != null) {
            drmSession.release(null);
        }
    }
}
