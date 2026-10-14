package cn.mucang.android.jiakaoyi.exam.k3.rule.gongqiao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.exam.k3.helper.JudgeLineBrakeChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_GongQiao_120101_Event extends d<K3GongQiaoStepConfig> {
    private JudgeLineBrakeChecker brakeChecker;
    private FootBrakeVoiceHelper footBrakeVoiceHelper;
    private float startDistance;

    public K3_GongQiao_120101_Event(K3GongQiaoStepConfig k3GongQiaoStepConfig, Deduct deduct) {
        super(k3GongQiaoStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3GongQiaoStepConfig) this.config).p220109.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        FootBrakeVoiceHelper footBrakeVoiceHelper = this.footBrakeVoiceHelper;
        if (footBrakeVoiceHelper != null) {
            footBrakeVoiceHelper.checkPlayVoice(eVar.d().f5269g);
        }
        if (((Boolean) ((K3GongQiaoStepConfig) this.config).p220116.value).booleanValue() && K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            this.brakeChecker.check(eVar, examProcessor, bVar);
            return this.brakeChecker.judgeDeduct(eVar, bVar);
        }
        if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
            this.startDistance = eVar.d().C;
        }
        if (eVar.d().f5269g) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().C - this.startDistance <= ((Integer) ((K3GongQiaoStepConfig) this.config).p220110.value).intValue() && !bVar.j()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        if (((Boolean) ((K3GongQiaoStepConfig) this.config).p220109.value).booleanValue() && FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
            this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
        }
        this.brakeChecker = new JudgeLineBrakeChecker(BitmapDescriptorFactory.HUE_RED);
    }
}
