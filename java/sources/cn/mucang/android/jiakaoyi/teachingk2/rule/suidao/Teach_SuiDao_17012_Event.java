package cn.mucang.android.jiakaoyi.teachingk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.s0.j;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.i;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_SuiDao_17012_Event extends d<SimpleTeachingConfig> {
    private boolean passJudge;

    public Teach_SuiDao_17012_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.passJudge = false;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0020  */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z;
        i iVar = (i) bVar.f();
        if (eVar.getCurrentPosition().f5282h != 4) {
            C c = iVar.f8776a;
            if (((j) c).w != BitmapDescriptorFactory.HUE_RED) {
                if (((j) c).x - ((double) (eVar.d().B - ((j) iVar.f8776a).w)) > iVar.b) {
                    z = true;
                } else {
                    this.passJudge = true;
                }
            }
            z = false;
        } else if (((j) iVar.f8776a).v > iVar.b * 100) {
            z = true;
        } else {
            this.passJudge = true;
            z = false;
        }
        if (z && iVar.c && !eVar.d().j(Light.FarLight) && !eVar.d().j(Light.NearLight)) {
            setDoNotExecute(true);
            return false;
        }
        if (this.passJudge) {
            setDoNotExecute(true);
        }
        return true;
    }
}
