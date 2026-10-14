package io.agora.rtc;

/* JADX INFO: loaded from: classes6.dex */
public interface IAudioEffectManager {
    double getEffectsVolume();

    int pauseAllEffects();

    int pauseEffect(int i);

    @Deprecated
    int playEffect(int i, String str, int i2, double d2, double d3, double d4);

    int playEffect(int i, String str, int i2, double d2, double d3, double d4, boolean z);

    int preloadEffect(int i, String str);

    int resumeAllEffects();

    int resumeEffect(int i);

    int setEffectsVolume(double d2);

    int setVolumeOfEffect(int i, double d2);

    int stopAllEffects();

    int stopEffect(int i);

    int unloadEffect(int i);
}
