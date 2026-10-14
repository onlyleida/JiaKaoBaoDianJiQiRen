package cn.mucang.jiakaoyi.uilib.manager;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.config.a;
import cn.mucang.jiakaoyi.uilib.api.SignalReverseDownApi;
import cn.mucang.jiakaoyi.uilib.api.SignalReverseUpApi;
import cn.mucang.jiakaoyi.uilib.model.ReverseSignalRecord;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.p.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u0012\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0004H\u0007¨\u0006\b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/manager/SignalValueManager;", "", "()V", "isSetupDefaultValue", "", "loadReverseSignals", "uploadReverseSignals", "canTry", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalValueManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SignalValueManager f9459a = new SignalValueManager();

    private SignalValueManager() {
    }

    public static /* synthetic */ boolean d(SignalValueManager signalValueManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return signalValueManager.c(z);
    }

    public final boolean a() {
        return AppUtils.h() || AppUtils.d();
    }

    public final boolean b() {
        try {
            List<ReverseSignalRecord> listM = new SignalReverseDownApi().m();
            if (listM.isEmpty()) {
                return false;
            }
            Set<CarSignal> setI = a.h().i();
            r.d(setI, "getInstance().reverseConfig");
            for (ReverseSignalRecord reverseSignalRecord : listM) {
                CarSignal carSignal = CarSignal.parse(reverseSignalRecord.getSignalId());
                if (carSignal != null) {
                    if (reverseSignalRecord.getStatus() != setI.contains(carSignal)) {
                        a.h().c(carSignal);
                    } else {
                        continue;
                    }
                }
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o("获取反转配置数据失败：" + ((Object) e2.getMessage()) + ' ' + ((Object) t.g(e2)));
            return false;
        }
    }

    public final boolean c(boolean z) throws InterruptedException {
        try {
            CarSignal[] carSignalArrValues = CarSignal.values();
            ArrayList arrayList = new ArrayList();
            int length = carSignalArrValues.length;
            int i = 0;
            while (i < length) {
                CarSignal carSignal = carSignalArrValues[i];
                i++;
                ReverseSignalRecord reverseSignalRecord = new ReverseSignalRecord();
                String str = carSignal.signalName;
                r.d(str, "carSignal.signalName");
                reverseSignalRecord.setName(str);
                reverseSignalRecord.setSignalId(carSignal.id);
                reverseSignalRecord.setStatus(a.h().m(carSignal));
                arrayList.add(reverseSignalRecord);
            }
            return new SignalReverseUpApi().m(arrayList);
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o(r.m("上传反转信号失败 ：", t.g(e2)));
            if (z) {
                Thread.sleep(10000L);
                c(false);
            }
            return false;
        }
    }
}
