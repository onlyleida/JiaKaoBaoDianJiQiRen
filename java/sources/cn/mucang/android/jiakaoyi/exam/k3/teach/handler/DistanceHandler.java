package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.DistanceVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class DistanceHandler implements VariableHandler<DistanceVariable> {
    private float startDistance = BitmapDescriptorFactory.HUE_RED;

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(DistanceVariable distanceVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
            this.startDistance = eVar.d().C;
        }
        return ((double) (eVar.d().C - this.startDistance)) > distanceVariable.value.doubleValue();
    }
}
