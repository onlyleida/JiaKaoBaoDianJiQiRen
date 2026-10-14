package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.e0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;

/* JADX INFO: loaded from: classes4.dex */
public class SpeedVariable extends Variable {
    public Relation mode = Relation.Equal;
    public int speed;
    public float speedMax;

    public SpeedVariable() {
        this.type = 3;
        this.position = e0.f7015d;
    }
}
