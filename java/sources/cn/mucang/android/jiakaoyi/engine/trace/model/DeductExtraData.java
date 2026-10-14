package cn.mucang.android.jiakaoyi.engine.trace.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class DeductExtraData implements Serializable {
    public int lineNum;
    public int subStep;
    public int wheel;
    public int x;
    public int y;

    public DeductExtraData() {
    }

    public DeductExtraData(int i, int i2, int i3, int i4, int i5) {
        this.wheel = i;
        this.lineNum = i2;
        this.subStep = i3;
        this.x = i4;
        this.y = i5;
    }
}
