package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.e0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.SerializableRect;

/* JADX INFO: loaded from: classes4.dex */
public class KuWeiPoseVariable extends Variable {
    public double degree;
    public double degreeRadius;
    public double distanceRadius;
    public SerializableRect range;
    public double x;
    public double y;

    public KuWeiPoseVariable() {
        this.type = 64;
        this.position = e0.b;
        this.degreeRadius = 10.0d;
        this.range = new SerializableRect(60, 50, 60, 50);
    }
}
