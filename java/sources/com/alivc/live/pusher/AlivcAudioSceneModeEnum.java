package com.alivc.live.pusher;

/* JADX INFO: loaded from: classes5.dex */
public enum AlivcAudioSceneModeEnum {
    AUDIO_SCENE_DEFAULT_MODE(1),
    AUDIO_SCENE_MEDIA_MODE(2),
    AUDIO_SCENE_MUSIC_MODE(3);

    private int mAudioSceneMode;

    AlivcAudioSceneModeEnum(int i) {
        this.mAudioSceneMode = i;
    }

    public int getAudioSceneMode() {
        return this.mAudioSceneMode;
    }
}
