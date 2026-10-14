package cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_LuKouZuoZhuan_108117_Event extends d<K3LuKouZuoZhuanStepConfig> {
    private final cn.mucang.android.jiakaoyi.exam.a.d leftLightBuDaHelper;
    private float lightOffDistance;
    private long lightOffTime;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;
    private float runOverBanMaLineDistance;
    private long runOverBanMaLineTime;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_LuKouZuoZhuan_108117_Event(K3LuKouZuoZhuanStepConfig k3LuKouZuoZhuanStepConfig, Deduct deduct) {
        super(k3LuKouZuoZhuanStepConfig, deduct);
        this.runOverBanMaLineChecker = null;
        this.lightOffTime = 0L;
        this.lightOffDistance = BitmapDescriptorFactory.HUE_RED;
        this.runOverBanMaLineTime = 0L;
        this.runOverBanMaLineDistance = BitmapDescriptorFactory.HUE_RED;
        this.leftLightBuDaHelper = new cn.mucang.android.jiakaoyi.exam.a.d(Light.TurnLeftLight, ((Integer) k3LuKouZuoZhuanStepConfig.p208120.value).intValue() * 1000);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x009b, code lost:
    
        if ((r9 - r10) < 0.5d) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean handleSuccess(cn.mucang.android.jiakaoyi.signal.c.e r9, cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor r10, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b r11) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.exam.k3.rule.lukouzuozhuan.K3_LuKouZuoZhuan_108117_Event.handleSuccess(cn.mucang.android.jiakaoyi.signal.c.e, cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b):boolean");
    }
}
