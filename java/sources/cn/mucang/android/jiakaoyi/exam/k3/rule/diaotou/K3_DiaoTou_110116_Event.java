package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.RunOverBanMaLineChecker;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110116_Event extends d<K3DiaoTouStepConfig> {
    private cn.mucang.android.jiakaoyi.exam.a.d lightBuDaHelper;
    private float lightOffDistance;
    private long lightOffTime;
    private RunOverBanMaLineChecker runOverBanMaLineChecker;
    private float runOverBanMaLineDistance;
    private long runOverBanMaLineTime;

    public K3_DiaoTou_110116_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
        this.runOverBanMaLineChecker = null;
        this.lightOffTime = 0L;
        this.lightOffDistance = BitmapDescriptorFactory.HUE_RED;
        this.runOverBanMaLineTime = 0L;
        this.runOverBanMaLineDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e6, code lost:
    
        if ((r9 - r10) < 0.5d) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean handleSuccess(cn.mucang.android.jiakaoyi.signal.c.e r9, cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor r10, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b r11) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou.K3_DiaoTou_110116_Event.handleSuccess(cn.mucang.android.jiakaoyi.signal.c.e, cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b):boolean");
    }
}
