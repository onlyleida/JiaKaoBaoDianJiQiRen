package io.agora.rtc.video;

/* JADX INFO: loaded from: classes6.dex */
public class BeautyOptions {
    public static final int LIGHTENING_CONTRAST_HIGH = 2;
    public static final int LIGHTENING_CONTRAST_LOW = 0;
    public static final int LIGHTENING_CONTRAST_NORMAL = 1;
    public int lighteningContrastLevel;
    public float lighteningLevel;
    public float rednessLevel;
    public float smoothnessLevel;

    public BeautyOptions(int i, float f2, float f3, float f4) {
        this.lighteningContrastLevel = i;
        this.lighteningLevel = f2;
        this.smoothnessLevel = f3;
        this.rednessLevel = f4;
    }

    public BeautyOptions() {
        this.lighteningContrastLevel = 1;
        this.lighteningLevel = 0.7f;
        this.smoothnessLevel = 0.5f;
        this.rednessLevel = 0.1f;
    }
}
