package com.unity3d.player;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public class AudioVolumeHandler implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f14182a;

    AudioVolumeHandler(Context context) {
        a aVar = new a(context);
        this.f14182a = aVar;
        aVar.a(this);
    }

    public final void a() {
        this.f14182a.a();
        this.f14182a = null;
    }

    @Override // com.unity3d.player.a.b
    public final native void onAudioVolumeChanged(int i);
}
