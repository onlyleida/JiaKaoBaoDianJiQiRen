package com.alivc.component.player;

import android.content.Context;
import com.alivc.component.player.BGMPlayer.BGMPlayerFactory;
import com.alivc.component.player.BGMPlayer.IBGMPlayer;

/* JADX INFO: loaded from: classes5.dex */
@NativeUsed
public class BGMPlayerJNI {
    private static Context context_;
    private static IBGMPlayer instance_;

    @NativeUsed
    public static void createBGMPlayerInstance(long j, boolean z) {
        if (instance_ == null) {
            instance_ = BGMPlayerFactory.createAliPlayerWrapper(context_, z);
        }
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer != null) {
            iBGMPlayer.setListenerHandler(j);
        }
    }

    @NativeUsed
    public static long getDuration() {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return 0L;
        }
        return iBGMPlayer.getDuration();
    }

    @NativeUsed
    public static void pause() {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.pause();
    }

    @NativeUsed
    public static void prepare() {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.prepare();
    }

    @NativeUsed
    public static void releaseBGMPlayer() {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer != null) {
            iBGMPlayer.setListenerHandler(0L);
        }
    }

    @NativeUsed
    public static void setAutoPlay(boolean z) {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.setAutoPlay(z);
    }

    public static void setContext(Context context) {
        context_ = context;
    }

    @NativeUsed
    public static void setLoop(boolean z) {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.setLoop(z);
    }

    @NativeUsed
    public static void setUrlSource(String str) {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.setUrlSource(str);
    }

    @NativeUsed
    public static void start() {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.start();
    }

    @NativeUsed
    public static void stop() {
        IBGMPlayer iBGMPlayer = instance_;
        if (iBGMPlayer == null) {
            return;
        }
        iBGMPlayer.stop();
    }
}
