package com.alivc.live.pusher;

import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public enum AlivcResolutionEnum {
    RESOLUTION_180P,
    RESOLUTION_240P,
    RESOLUTION_360P,
    RESOLUTION_480P,
    RESOLUTION_540P,
    RESOLUTION_720P,
    RESOLUTION_1080P,
    RESOLUTION_SELFDEFINE,
    RESOLUTION_PASS_THROUGH;

    private int mSelfDefineHeight;
    private int mSelfDefineWidth;

    public static int GetResolutionHeight(AlivcResolutionEnum alivcResolutionEnum) {
        if (alivcResolutionEnum.equals(RESOLUTION_180P) || alivcResolutionEnum.equals(RESOLUTION_240P)) {
            return 320;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_360P) || alivcResolutionEnum.equals(RESOLUTION_480P)) {
            return 640;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_540P)) {
            return AlivcLivePushConstants.RESOLUTION_960;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_720P)) {
            return 1280;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_1080P)) {
            return AlivcLivePushConstants.RESOLUTION_1920;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_SELFDEFINE)) {
            return alivcResolutionEnum.mSelfDefineHeight;
        }
        return 320;
    }

    public static int GetResolutionWidth(AlivcResolutionEnum alivcResolutionEnum) {
        if (alivcResolutionEnum.equals(RESOLUTION_180P)) {
            return 192;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_240P)) {
            return 240;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_360P)) {
            return 368;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_480P)) {
            return 480;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_540P)) {
            return Videoio.CAP_PROP_XI_TRG_DELAY;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_720P)) {
            return 720;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_1080P)) {
            return 1088;
        }
        if (alivcResolutionEnum.equals(RESOLUTION_SELFDEFINE)) {
            return alivcResolutionEnum.mSelfDefineWidth;
        }
        return 192;
    }

    public static int getInitBitrate(AlivcResolutionEnum alivcResolutionEnum) {
        if (alivcResolutionEnum.equals(RESOLUTION_180P)) {
            return AlivcLivePushConstants.BITRATE_180P.DEFAULT_VALUE_INT_INIT_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_240P)) {
            return AlivcLivePushConstants.BITRATE_240P.DEFAULT_VALUE_INT_INIT_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_360P)) {
            return AlivcLivePushConstants.BITRATE_360P.DEFAULT_VALUE_INT_INIT_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_480P)) {
            return AlivcLivePushConstants.BITRATE_480P.DEFAULT_VALUE_INT_INIT_BITRATE.getBitrate();
        }
        if (!alivcResolutionEnum.equals(RESOLUTION_540P) && alivcResolutionEnum.equals(RESOLUTION_720P)) {
            return AlivcLivePushConstants.BITRATE_720P.DEFAULT_VALUE_INT_INIT_BITRATE.getBitrate();
        }
        return AlivcLivePushConstants.BITRATE_540P.DEFAULT_VALUE_INT_INIT_BITRATE.getBitrate();
    }

    public static int getMinBitrate(AlivcResolutionEnum alivcResolutionEnum) {
        if (alivcResolutionEnum.equals(RESOLUTION_180P)) {
            return AlivcLivePushConstants.BITRATE_180P.DEFAULT_VALUE_INT_MIN_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_240P)) {
            return AlivcLivePushConstants.BITRATE_240P.DEFAULT_VALUE_INT_MIN_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_360P)) {
            return AlivcLivePushConstants.BITRATE_360P.DEFAULT_VALUE_INT_MIN_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_480P)) {
            return AlivcLivePushConstants.BITRATE_480P.DEFAULT_VALUE_INT_MIN_BITRATE.getBitrate();
        }
        if (!alivcResolutionEnum.equals(RESOLUTION_540P) && alivcResolutionEnum.equals(RESOLUTION_720P)) {
            return AlivcLivePushConstants.BITRATE_720P.DEFAULT_VALUE_INT_MIN_BITRATE.getBitrate();
        }
        return AlivcLivePushConstants.BITRATE_540P.DEFAULT_VALUE_INT_MIN_BITRATE.getBitrate();
    }

    public static int getTargetBitrate(AlivcResolutionEnum alivcResolutionEnum) {
        if (alivcResolutionEnum.equals(RESOLUTION_180P)) {
            return AlivcLivePushConstants.BITRATE_180P.DEFAULT_VALUE_INT_TARGET_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_240P)) {
            return AlivcLivePushConstants.BITRATE_240P.DEFAULT_VALUE_INT_TARGET_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_360P)) {
            return AlivcLivePushConstants.BITRATE_360P.DEFAULT_VALUE_INT_TARGET_BITRATE.getBitrate();
        }
        if (alivcResolutionEnum.equals(RESOLUTION_480P)) {
            return AlivcLivePushConstants.BITRATE_480P.DEFAULT_VALUE_INT_TARGET_BITRATE.getBitrate();
        }
        if (!alivcResolutionEnum.equals(RESOLUTION_540P) && alivcResolutionEnum.equals(RESOLUTION_720P)) {
            return AlivcLivePushConstants.BITRATE_720P.DEFAULT_VALUE_INT_TARGET_BITRATE.getBitrate();
        }
        return AlivcLivePushConstants.BITRATE_540P.DEFAULT_VALUE_INT_TARGET_BITRATE.getBitrate();
    }

    public void setSelfDefineResolution(int i, int i2) {
        if (equals(RESOLUTION_SELFDEFINE)) {
            this.mSelfDefineWidth = i;
            if (i % 16 != 0) {
                this.mSelfDefineWidth = ((i / 16) + 1) * 16;
            }
            this.mSelfDefineHeight = i2;
            if (i2 % 16 != 0) {
                this.mSelfDefineHeight = ((i2 / 16) + 1) * 16;
            }
        }
    }
}
