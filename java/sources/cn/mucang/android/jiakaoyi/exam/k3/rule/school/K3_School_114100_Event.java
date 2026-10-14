package cn.mucang.android.jiakaoyi.exam.k3.rule.school;

import cn.mucang.android.jiakaoyi.engine.i.c;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.BrakeSlowDownChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineBrakeChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_School_114100_Event extends d<K3SchoolStepConfig> {
    private JudgeLineBrakeChecker brakeChecker;
    private BrakeSlowDownChecker brakeSlowDownChecker;
    private FootBrakeVoiceHelper footBrakeVoiceHelper;

    public K3_School_114100_Event(K3SchoolStepConfig k3SchoolStepConfig, Deduct deduct) {
        super(k3SchoolStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3SchoolStepConfig) this.config).p214103.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        FootBrakeVoiceHelper footBrakeVoiceHelper = this.footBrakeVoiceHelper;
        if (footBrakeVoiceHelper != null) {
            footBrakeVoiceHelper.checkPlayVoice(eVar.d().f5269g);
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && ((Boolean) ((K3SchoolStepConfig) this.config).p214119.value).booleanValue()) {
            this.brakeChecker.check(eVar, examProcessor, bVar);
            return this.brakeChecker.judgeDeduct(eVar, bVar);
        }
        if (!this.brakeSlowDownChecker.check(eVar, examProcessor, bVar)) {
            return true;
        }
        setDoNotExecute(true);
        return this.brakeSlowDownChecker.judgeDeduct();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        this.brakeChecker = new JudgeLineBrakeChecker(BitmapDescriptorFactory.HUE_RED);
        if (((Boolean) ((K3SchoolStepConfig) this.config).p214103.value).booleanValue() && FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
            this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
        }
        c.b bVar2 = bVar.f3143f;
        this.brakeSlowDownChecker = new BrakeSlowDownChecker(bVar, eVar.d().C + ((Integer) ((K3SchoolStepConfig) this.config).p214104.value).intValue(), (bVar2 == null || !k.c(bVar2.b)) ? BrakeSlowDownChecker.JudgeMode.Distance : BrakeSlowDownChecker.JudgeMode.BrakePoint, BitmapDescriptorFactory.HUE_RED);
    }
}
