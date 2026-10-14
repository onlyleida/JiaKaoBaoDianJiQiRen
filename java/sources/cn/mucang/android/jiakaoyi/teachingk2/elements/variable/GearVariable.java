package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.e0;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.Relation;

/* JADX INFO: loaded from: classes4.dex */
public class GearVariable extends Variable {
    public int gear;
    public Relation mode = Relation.Equal;

    public GearVariable() {
        this.type = 1;
        this.position = e0.c;
    }
}
