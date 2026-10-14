package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300131_Event extends d<K2GlobalConfig> {
    private boolean checkQBSC;
    private boolean startCheck;
    private final b timeoutChecker;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_Global_300131_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.startCheck = false;
        this.checkQBSC = false;
        this.timeoutChecker = new b(((Integer) ((K2GlobalConfig) this.config).p401140.value).intValue() * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (examProcessor.n.b(ConflictSignal.QiBuShaChe)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.examk2.b.d dVar = (cn.mucang.android.jiakaoyi.examk2.b.d) bVar.f();
        if (examProcessor.s.f3128a) {
            if (!this.checkQBSC || (eVar.d().B - dVar.b) * 100.0f >= ((Integer) ((K2GlobalConfig) this.config).p401163.value).intValue()) {
                this.startCheck = true;
                this.timeoutChecker.b();
                dVar.f3277a = false;
                return true;
            }
            this.checkQBSC = false;
            dVar.b = BitmapDescriptorFactory.HUE_RED;
            dVar.f3277a = true;
            return false;
        }
        if (((Boolean) ((K2GlobalConfig) this.config).p401139.value).booleanValue()) {
            if (this.startCheck && eVar.d().c()) {
                if (!this.timeoutChecker.e()) {
                    this.timeoutChecker.g();
                }
                if (eVar.d().f5268f) {
                    this.timeoutChecker.b();
                    this.startCheck = false;
                }
                if (this.timeoutChecker.d() && !eVar.d().f5268f) {
                    this.startCheck = false;
                    this.timeoutChecker.b();
                    this.checkQBSC = true;
                    dVar.b = eVar.d().B;
                }
            } else {
                this.timeoutChecker.b();
            }
        } else if (this.startCheck && eVar.d().c() && eVar.d().c > ((Float) ((K2GlobalConfig) this.config).p401103.value).floatValue() && !eVar.d().f5268f) {
            this.startCheck = false;
            this.checkQBSC = true;
            dVar.b = eVar.d().B;
        }
        if (!this.checkQBSC || !eVar.d().f5268f || (eVar.d().B - dVar.b) * 100.0f >= ((Integer) ((K2GlobalConfig) this.config).p401163.value).intValue()) {
            return true;
        }
        this.checkQBSC = false;
        dVar.b = BitmapDescriptorFactory.HUE_RED;
        dVar.f3277a = true;
        return false;
    }
}
