package com.alivc.live.pusher;

/* JADX INFO: loaded from: classes5.dex */
public enum AlivcQualityModeEnum {
    QM_RESOLUTION_FIRST(0),
    QM_FLUENCY_FIRST(1),
    QM_CUSTOM(2);

    private int mQualityMode;

    AlivcQualityModeEnum(int i) {
        this.mQualityMode = i;
    }

    public int getQualityMode() {
        return this.mQualityMode;
    }
}
