package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312110_Event extends d<K2SuiDaoConfig> {
    private long carStopStartTime;
    private float lastDistance;

    public K2_SuiDao_312110_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
        this.carStopStartTime = 0L;
        this.lastDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z;
        h hVar = (h) ((l) bVar.f()).f3279a;
        if (eVar.getCurrentPosition().f5282h == 4) {
            z = hVar.f3695f;
        } else {
            z = this.lastDistance == eVar.d().B;
        }
        if (z) {
            if (this.carStopStartTime == 0) {
                this.carStopStartTime = examProcessor.i;
            }
            if (examProcessor.i - this.carStopStartTime >= ((Integer) ((K2SuiDaoConfig) this.config).p412107.value).intValue()) {
                return false;
            }
        } else {
            this.lastDistance = eVar.d().B;
            this.carStopStartTime = 0L;
        }
        return true;
    }
}
