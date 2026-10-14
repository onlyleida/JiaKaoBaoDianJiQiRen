package cn.mucang.android.jiakaoyi.framework.tts.play.g;

import android.media.MediaPlayer;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.tts.play.e f3547a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MediaPlayer f3548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f3549e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o f3550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f3551g;
    private volatile boolean b = false;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f3552h = 1.0f;

    public d(cn.mucang.android.jiakaoyi.framework.tts.play.e eVar, o oVar, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this.f3547a = eVar;
        this.f3550f = oVar;
        this.f3551g = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            try {
                if (this.c) {
                    return;
                }
                float f2 = this.f3552h;
                mediaPlayer.setVolume(f2, f2);
                mediaPlayer.start();
                mediaPlayer.seekTo(1);
                this.b = true;
            } catch (Throwable th) {
                t.d("MediaPlayerWrap", "" + th.getMessage());
                this.b = false;
                if (this.f3549e) {
                    return;
                }
                this.f3551g.callback(Boolean.TRUE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(MediaPlayer mediaPlayer) {
        this.b = false;
        h(this.f3550f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ boolean g(MediaPlayer mediaPlayer, int i, int i2) {
        this.b = false;
        try {
            if (mediaPlayer.isPlaying()) {
                mediaPlayer.stop();
            }
            mediaPlayer.release();
        } catch (Throwable th) {
            t.d("MediaPlayerWrap", "播放出错:" + th.getMessage());
        }
        if (this.f3549e) {
            return true;
        }
        this.f3551g.callback(Boolean.TRUE);
        return true;
    }

    private synchronized void h(o oVar) {
        if (!this.f3549e && oVar != null) {
            this.f3549e = true;
            this.f3547a.a(oVar);
        }
    }

    public boolean a() {
        return this.b;
    }

    public void i(String str) {
        try {
            this.f3547a.d(this.f3550f);
            if (this.f3548d == null) {
                this.f3548d = new MediaPlayer();
            }
            this.f3548d.reset();
            this.f3548d.setDataSource(str);
            this.f3548d.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.g.c
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    this.f3546a.c(mediaPlayer);
                }
            });
            this.f3548d.prepareAsync();
            this.f3548d.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.g.b
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    this.f3545a.e(mediaPlayer);
                }
            });
            this.f3548d.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.g.a
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return this.f3544a.g(mediaPlayer, i, i2);
                }
            });
        } catch (IOException e2) {
            e2.printStackTrace();
            this.b = false;
            if (this.f3549e) {
                return;
            }
            this.f3551g.callback(Boolean.TRUE);
        }
    }

    public void j() {
        try {
            MediaPlayer mediaPlayer = this.f3548d;
            if (mediaPlayer != null) {
                mediaPlayer.stop();
                this.f3548d.release();
            }
        } catch (Throwable th) {
            t.d("MediaPlayerWrap", "" + th.getMessage());
        }
    }

    public void k(float f2) {
        float fMax = Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, f2));
        this.f3552h = fMax;
        if (this.f3548d == null || !this.b) {
            return;
        }
        this.f3548d.setVolume(fMax, fMax);
    }

    public void l() {
        this.c = true;
        this.b = false;
        h(this.f3550f);
        j();
    }
}
