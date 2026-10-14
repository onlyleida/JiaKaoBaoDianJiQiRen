package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312104_Event extends d<K2SuiDaoConfig> {
    public K2_SuiDao_312104_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        h hVar = (h) ((l) bVar.f()).f3279a;
        CarModel carModelD = eVar.d();
        if (carModelD.F.isForward()) {
            if (hVar.w) {
                setDoNotExecute(true);
                return false;
            }
            if (carModelD.l) {
                setDoNotExecute(true);
            }
        }
        return true;
    }
}
