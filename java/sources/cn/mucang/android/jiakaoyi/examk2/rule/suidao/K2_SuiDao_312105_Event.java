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
public class K2_SuiDao_312105_Event extends d<K2SuiDaoConfig> {
    boolean criterion;

    public K2_SuiDao_312105_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        l lVar = (l) bVar.f();
        h hVar = (h) lVar.f3279a;
        if (!this.criterion) {
            if (eVar.getCurrentPosition().f5282h == 4) {
                this.criterion = hVar.y <= ((double) ((Integer) ((K2SuiDaoConfig) this.config).p412109.value).intValue());
            } else {
                C c = lVar.f3279a;
                this.criterion = ((h) c).E != BitmapDescriptorFactory.HUE_RED && ((h) c).F - ((double) (eVar.d().B - ((h) lVar.f3279a).E)) <= ((Integer) ((K2SuiDaoConfig) this.config).p412109.value).doubleValue() / 100.0d;
            }
        }
        if (this.criterion) {
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
