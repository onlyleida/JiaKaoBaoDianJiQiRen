package cn.mucang.android.jiakaoyi.exam.k3.starter;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;

/* JADX INFO: loaded from: classes2.dex */
public class K3_ZhiXian_Starter extends K3BaseStarter<K3ZhiXianStepConfig> {
    private boolean playingJudgeVoiceTips;

    public K3_ZhiXian_Starter(K3ZhiXianStepConfig k3ZhiXianStepConfig, Deduct deduct, Location location) {
        super(k3ZhiXianStepConfig, deduct, location, k3ZhiXianStepConfig.p204108, k3ZhiXianStepConfig.p204109, k3ZhiXianStepConfig.p204100, k3ZhiXianStepConfig.p204113, k3ZhiXianStepConfig.p204102, k3ZhiXianStepConfig.p204115, k3ZhiXianStepConfig.p204116);
        this.playingJudgeVoiceTips = false;
    }
}
