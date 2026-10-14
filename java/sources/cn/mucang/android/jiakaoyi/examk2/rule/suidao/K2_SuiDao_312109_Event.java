package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312109_Event extends d<K2SuiDaoConfig> {
    private boolean isEnd;

    public K2_SuiDao_312109_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
        this.isEnd = false;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0030  */
    /* JADX WARN: Code duplicated, block: B:9:0x0032  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean z;
        l lVar = (l) bVar.f();
        if (!this.isEnd) {
            if (eVar.getCurrentPosition().f5282h != 4) {
                C c = lVar.f3279a;
                if (((h) c).E == BitmapDescriptorFactory.HUE_RED) {
                    return true;
                }
                if (((h) c).F - ((double) (eVar.d().B - ((h) lVar.f3279a).E)) > ((Integer) ((K2SuiDaoConfig) this.config).p412111.value).intValue()) {
                    z = true;
                } else {
                    z = false;
                }
            } else if (((h) lVar.f3279a).y > ((Integer) ((K2SuiDaoConfig) this.config).p412111.value).intValue() * 100) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                this.isEnd = true;
            }
            C c2 = lVar.f3279a;
            if (((h) c2).z != null && ((h) c2).z.booleanValue() && !eVar.d().j(Light.FarLight) && !eVar.d().j(Light.NearLight)) {
                setDoNotExecute(true);
                return false;
            }
        }
        return true;
    }
}
