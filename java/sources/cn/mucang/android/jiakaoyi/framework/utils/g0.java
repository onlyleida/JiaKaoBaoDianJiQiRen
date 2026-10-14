package cn.mucang.android.jiakaoyi.framework.utils;

import android.media.MediaPlayer;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes2.dex */
public class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static MediaPlayer f3614a;

    static class a implements MediaPlayer.OnCompletionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.jiakaoyi.framework.h.b f3615a;

        a(cn.mucang.android.jiakaoyi.framework.h.b bVar) {
            this.f3615a = bVar;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            g0.f3614a.release();
            MediaPlayer unused = g0.f3614a = null;
            this.f3615a.callback(Boolean.TRUE);
        }
    }

    public static void c(int i, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        MediaPlayer mediaPlayer = f3614a;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        MediaPlayer mediaPlayerCreate = MediaPlayer.create(MucangConfig.getContext(), i);
        f3614a = mediaPlayerCreate;
        mediaPlayerCreate.setOnCompletionListener(new a(bVar));
        f3614a.start();
    }
}
