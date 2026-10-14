package com.unity3d.player;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;

/* JADX INFO: loaded from: classes6.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f14281a;
    private final AudioManager b;
    private C0283a c;

    /* JADX INFO: renamed from: com.unity3d.player.a$a, reason: collision with other inner class name */
    private class C0283a extends ContentObserver {
        private final b b;
        private final AudioManager c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f14283d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f14284e;

        public C0283a(Handler handler, AudioManager audioManager, int i, b bVar) {
            super(handler);
            this.c = audioManager;
            this.f14283d = 3;
            this.b = bVar;
            this.f14284e = audioManager.getStreamVolume(3);
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return super.deliverSelfNotifications();
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            int streamVolume;
            AudioManager audioManager = this.c;
            if (audioManager == null || this.b == null || (streamVolume = audioManager.getStreamVolume(this.f14283d)) == this.f14284e) {
                return;
            }
            this.f14284e = streamVolume;
            this.b.onAudioVolumeChanged(streamVolume);
        }
    }

    public interface b {
        void onAudioVolumeChanged(int i);
    }

    public a(Context context) {
        this.f14281a = context;
        this.b = (AudioManager) context.getSystemService("audio");
    }

    public final void a() {
        if (this.c != null) {
            this.f14281a.getContentResolver().unregisterContentObserver(this.c);
            this.c = null;
        }
    }

    public final void a(b bVar) {
        this.c = new C0283a(new Handler(), this.b, 3, bVar);
        this.f14281a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.c);
    }
}
