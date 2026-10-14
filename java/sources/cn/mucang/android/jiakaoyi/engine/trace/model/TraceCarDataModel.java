package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TraceCarDataModel extends TraceBaseModel {
    public List<Pos> carPoints;
    public Pos center;
    public double degree;
    public List<Pos> leftMirrorPoints;
    public Pos mainPoint;
    public double pitch;
    public List<Pos> rightMirrorPoints;
    public Pos wheelLeftBack;
    public Pos wheelLeftBackInner;
    public Pos wheelLeftFront;
    public Pos wheelLeftFrontInner;
    public Pos wheelRightBack;
    public Pos wheelRightBackInner;
    public Pos wheelRightFront;
    public Pos wheelRightFrontInner;

    public TraceCarDataModel() {
        this.tp = DataType.CarData.typeId;
    }

    public void clear() {
        this.carPoints = null;
        this.degree = 0.0d;
        this.pitch = 0.0d;
        this.mainPoint = null;
        this.center = null;
        this.wheelLeftFront = null;
        this.wheelLeftBack = null;
        this.wheelRightFront = null;
        this.wheelRightBack = null;
        this.wheelLeftFrontInner = null;
        this.wheelLeftBackInner = null;
        this.wheelRightFrontInner = null;
        this.wheelRightBackInner = null;
        this.leftMirrorPoints = null;
        this.rightMirrorPoints = null;
    }

    public TraceCarDataModel set(CarPos carPos) {
        if (carPos == null) {
            return null;
        }
        this.carPoints = carPos.carPoints;
        this.degree = carPos.degree;
        this.pitch = carPos.pitch;
        this.mainPoint = carPos.back;
        this.center = carPos.center;
        this.wheelLeftFront = carPos.wheelLeftFront;
        this.wheelLeftBack = carPos.wheelLeftBack;
        this.wheelRightFront = carPos.wheelRightFront;
        this.wheelRightBack = carPos.wheelRightBack;
        this.wheelLeftFrontInner = carPos.wheelLeftFrontInner;
        this.wheelLeftBackInner = carPos.wheelLeftBackInner;
        this.wheelRightFrontInner = carPos.wheelRightFrontInner;
        this.wheelRightBackInner = carPos.wheelRightBackInner;
        this.leftMirrorPoints = carPos.leftMirrorPoints;
        this.rightMirrorPoints = carPos.rightMirrorPoints;
        return this;
    }
}
