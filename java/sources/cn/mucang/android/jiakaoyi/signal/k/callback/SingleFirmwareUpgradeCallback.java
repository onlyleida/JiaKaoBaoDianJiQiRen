package cn.mucang.android.jiakaoyi.signal.k.callback;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.j0;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeState;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeUploadModel;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.k.g0.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J(\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tH&J(\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH'J\u0018\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH'J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/SingleFirmwareUpgradeCallback;", "", "onFailOnTime", "", "info", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;", SocialConstants.PARAM_SEND_MSG, "", "time", "", "isRetry", "", "onHardwareUpgrading", "receiveUpgradingInfo", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveUpgradingInfo;", "onPackageUpdateFinish", "onProgress", "progress", "total", "onReportUpgradeState", "uuid", "state", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;", "extraInfo", "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;", "onRetry", "onStartOnTime", "onSuccessOnTime", "onUpgradeFail", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface SingleFirmwareUpgradeCallback {
    void a(String str, UpgradeInfoModel upgradeInfoModel, UpgradeState upgradeState, UpgradeUploadModel upgradeUploadModel);

    void b(UpgradeInfoModel upgradeInfoModel, j0 j0Var);

    void c(UpgradeInfoModel upgradeInfoModel, String str);

    void d(UpgradeInfoModel upgradeInfoModel, int i);

    void e(UpgradeInfoModel upgradeInfoModel, int i);

    void f(UpgradeInfoModel upgradeInfoModel, int i);

    void g(UpgradeInfoModel upgradeInfoModel, int i);

    void h(UpgradeInfoModel upgradeInfoModel, int i, int i2, int i3);

    void i(UpgradeInfoModel upgradeInfoModel, String str, int i, boolean z);
}
