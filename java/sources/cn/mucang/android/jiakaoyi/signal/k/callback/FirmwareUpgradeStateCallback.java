package cn.mucang.android.jiakaoyi.signal.k.callback;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeStateModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.k.g0.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H'J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H'¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;", "", "onHardwareUpgrading", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", "receiveUpgradingInfo", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveUpgradingInfo;", "onReportUpgradeState", "uuid", "", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "onUpgradeProgress", "progress", "", "curIndex", "total", "onUpgradeState", "stateModel", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface FirmwareUpgradeStateCallback {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.k.g0.d$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        public static void a(FirmwareUpgradeStateCallback firmwareUpgradeStateCallback, UpgradeInfoModel info, j0 receiveUpgradingInfo) {
            r.e(firmwareUpgradeStateCallback, "this");
            r.e(info, "info");
            r.e(receiveUpgradingInfo, "receiveUpgradingInfo");
        }
    }

    void a(String str, UpgradeInfoModel upgradeInfoModel, UpgradeState upgradeState, UpgradeUploadModel upgradeUploadModel);

    void b(UpgradeInfoModel upgradeInfoModel, j0 j0Var);

    void c(UpgradeStateModel upgradeStateModel);

    void d(int i, int i2, int i3);
}
