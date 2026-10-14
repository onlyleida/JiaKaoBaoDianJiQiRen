package cn.mucang.android.jiakaoyi.teachingk2.elements.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class TraceItemModel extends Pos {
    public int cluth;
    public transient Object extra;
    public int footBrake;
    public byte gear;
    public byte handbrake;
    public short heading;
    public byte honk;
    public byte light;
    public byte pointType = -1;
    public float speed;
    public short step;
    public short wheel;

    public TraceItemModel copy() {
        TraceItemModel traceItemModel = new TraceItemModel();
        traceItemModel.x = this.x;
        traceItemModel.y = this.y;
        traceItemModel.z = this.z;
        traceItemModel.step = this.step;
        traceItemModel.wheel = this.wheel;
        traceItemModel.pointType = this.pointType;
        traceItemModel.handbrake = this.handbrake;
        traceItemModel.light = this.light;
        traceItemModel.honk = this.honk;
        traceItemModel.heading = this.heading;
        traceItemModel.gear = this.gear;
        traceItemModel.extra = this.extra;
        traceItemModel.footBrake = this.footBrake;
        traceItemModel.cluth = this.cluth;
        traceItemModel.speed = this.speed;
        return traceItemModel;
    }

    public TraceItemModel set(Pos pos) {
        this.x = pos.x;
        this.y = pos.y;
        this.z = pos.z;
        return this;
    }

    public TraceItemModel setCluth(int i) {
        this.cluth = i;
        return this;
    }

    public TraceItemModel setFootBrake(int i) {
        this.footBrake = i;
        return this;
    }

    public TraceItemModel setGear(int i) {
        this.gear = (byte) i;
        return this;
    }

    public TraceItemModel setHandbrake(int i) {
        this.handbrake = (byte) i;
        return this;
    }

    public TraceItemModel setHeading(int i) {
        this.heading = (short) i;
        return this;
    }

    public TraceItemModel setHonk(int i) {
        this.honk = (byte) i;
        return this;
    }

    public TraceItemModel setLight(int i) {
        this.light = (byte) i;
        return this;
    }

    public TraceItemModel setPointType(int i) {
        this.pointType = (byte) i;
        return this;
    }

    public TraceItemModel setStep(int i) {
        this.step = (short) i;
        return this;
    }

    public TraceItemModel setWheel(int i) {
        this.wheel = (short) i;
        return this;
    }

    public TraceItemModel set(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.wheel = (short) i;
        this.heading = (short) i2;
        this.step = (short) i3;
        this.light = (byte) i4;
        this.handbrake = (byte) i5;
        this.honk = (byte) i6;
        this.gear = (byte) i7;
        this.pointType = (byte) i8;
        return this;
    }
}
