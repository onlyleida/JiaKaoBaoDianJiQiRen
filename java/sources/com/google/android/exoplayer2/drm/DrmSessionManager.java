package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.Format;

/* JADX INFO: loaded from: classes5.dex */
public interface DrmSessionManager {
    public static final DrmSessionManager DRM_UNSUPPORTED;

    @Deprecated
    public static final DrmSessionManager DUMMY;

    public interface DrmSessionReference {
        public static final DrmSessionReference EMPTY = new DrmSessionReference() { // from class: com.google.android.exoplayer2.drm.m
            @Override // com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference
            public final void release() {
                w.a();
            }
        };

        void release();
    }

    static {
        DrmSessionManager drmSessionManager = new DrmSessionManager() { // from class: com.google.android.exoplayer2.drm.DrmSessionManager.1
            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public DrmSession acquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public Class<UnsupportedMediaCrypto> getExoMediaCryptoType(Format format) {
                if (format.drmInitData != null) {
                    return UnsupportedMediaCrypto.class;
                }
                return null;
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public /* synthetic */ DrmSessionReference preacquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
                return DrmSessionReference.EMPTY;
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public /* synthetic */ void prepare() {
                v.$default$prepare(this);
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public /* synthetic */ void release() {
                v.$default$release(this);
            }
        };
        DRM_UNSUPPORTED = drmSessionManager;
        DUMMY = drmSessionManager;
    }

    DrmSession acquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    Class<? extends ExoMediaCrypto> getExoMediaCryptoType(Format format);

    DrmSessionReference preacquireSession(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    void prepare();

    void release();
}
