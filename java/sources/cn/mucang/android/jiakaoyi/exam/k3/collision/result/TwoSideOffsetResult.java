package cn.mucang.android.jiakaoyi.exam.k3.collision.result;

import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;

/* JADX INFO: loaded from: classes2.dex */
public class TwoSideOffsetResult {
    public K3CollisionModel leftLine;
    public K3CollisionModel rightLine;
    public long time;
    public double leftDistance = Double.MAX_VALUE;
    public double rightDistance = Double.MAX_VALUE;

    public TwoSideOffsetResult emptyResult() {
        this.leftDistance = Double.MAX_VALUE;
        this.rightDistance = Double.MAX_VALUE;
        this.leftLine = null;
        this.rightLine = null;
        return this;
    }

    public TwoSideOffsetResult setResult(double d2, double d3, K3CollisionModel k3CollisionModel, K3CollisionModel k3CollisionModel2) {
        this.leftDistance = d2;
        this.rightDistance = d3;
        this.leftLine = k3CollisionModel;
        this.rightLine = k3CollisionModel2;
        return this;
    }
}
