package com.alivc.live.pusher;

/* JADX INFO: loaded from: classes5.dex */
public enum AlivcLivePushCameraTypeEnum {
    CAMERA_TYPE_BACK(0),
    CAMERA_TYPE_FRONT(1);

    private int mCameraId;

    AlivcLivePushCameraTypeEnum(int i) {
        this.mCameraId = i;
    }

    public int getCameraId() {
        return this.mCameraId;
    }
}
