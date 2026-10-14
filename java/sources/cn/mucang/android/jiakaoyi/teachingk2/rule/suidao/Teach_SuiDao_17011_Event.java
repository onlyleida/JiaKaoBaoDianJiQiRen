package cn.mucang.android.jiakaoyi.teachingk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.j;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.i;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_SuiDao_17011_Event extends d<SimpleTeachingConfig> {
    public Teach_SuiDao_17011_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        i iVar = (i) bVar.f();
        j jVar = (j) iVar.f8776a;
        if (eVar.getCurrentPosition().f5282h != 4 ? !(jVar.w == BitmapDescriptorFactory.HUE_RED || jVar.x - ((double) (eVar.d().B - jVar.w)) > ((double) iVar.b)) : jVar.v <= ((double) (iVar.b * 100))) {
            if (eVar.d().l) {
                setDoNotExecute(true);
            } else if (bVar.j()) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
