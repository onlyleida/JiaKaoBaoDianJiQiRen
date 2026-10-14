package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiaJianDang_Starter extends K3BaseStarter<K3JiaJianDangStepConfig> {
    public K3_JiaJianDang_Starter(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct, Location location) {
        super(k3JiaJianDangStepConfig, deduct, location, k3JiaJianDangStepConfig.p212120, k3JiaJianDangStepConfig.p212121, k3JiaJianDangStepConfig.p212100, k3JiaJianDangStepConfig.p212129, k3JiaJianDangStepConfig.p212102);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b
    protected boolean canStart(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        if (examProcessor.p().isAuto()) {
            T t = this.config;
            if (((K3JiaJianDangStepConfig) t).p212155 != null && ((K3JiaJianDangStepConfig) t).p212156 != null && ((Boolean) ((K3JiaJianDangStepConfig) t).p212155.value).booleanValue()) {
                return ((Boolean) ((K3JiaJianDangStepConfig) this.config).p212156.value).booleanValue();
            }
        }
        return super.canStart(eVar, examProcessor, bVar, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.exam.k3.starter.K3BaseStarter, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.b, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d, cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.e
    public boolean isTrigger(e eVar, ExamProcessor examProcessor, b bVar, boolean z) {
        boolean zIsTrigger = super.isTrigger(eVar, examProcessor, bVar, z);
        if (!examProcessor.p().isAuto()) {
            return zIsTrigger;
        }
        T t = this.config;
        if (((K3JiaJianDangStepConfig) t).p212155 == null || !((Boolean) ((K3JiaJianDangStepConfig) t).p212155.value).booleanValue()) {
            return zIsTrigger;
        }
        return false;
    }
}
