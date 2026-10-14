package com.alivc.live.pusher;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class WaterMarkInfo implements Serializable {
    public float mWaterMarkCoordX;
    public float mWaterMarkCoordY;
    public float mWaterMarkHeight;
    public String mWaterMarkPath;
    public float mWaterMarkWidth;

    public WaterMarkInfo() {
        this.mWaterMarkPath = "";
        this.mWaterMarkWidth = 0.1f;
        this.mWaterMarkHeight = 0.08f;
        this.mWaterMarkCoordX = 0.1f;
        this.mWaterMarkCoordY = 0.1f;
    }

    public WaterMarkInfo(String str, float f2, float f3, float f4, float f5) {
        this.mWaterMarkPath = "";
        this.mWaterMarkWidth = 0.1f;
        this.mWaterMarkHeight = 0.08f;
        this.mWaterMarkCoordX = 0.1f;
        this.mWaterMarkCoordY = 0.1f;
        this.mWaterMarkPath = str;
        this.mWaterMarkWidth = f2;
        this.mWaterMarkHeight = f3;
        this.mWaterMarkCoordX = f4;
        this.mWaterMarkCoordY = f5;
    }
}
