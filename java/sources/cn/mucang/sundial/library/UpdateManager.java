package cn.mucang.sundial.library;

import android.app.Application;
import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.PreferenceUtils;
import cn.mucang.sundial.android.tcp.utils.UtilsKt;
import cn.mucang.sundial.android.timer.SundialTimer;
import cn.mucang.sundial.library.device.DeviceHelper;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.entity.UpdateInfo;
import cn.mucang.sundial.library.http.UpdateApi;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.LoginUtil;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\r\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\u0004J\r\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcn/mucang/sundial/library/UpdateManager;", "Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;", "Lkotlin/v;", "checkUpdate", "()V", "Lcom/blankj/utilcode/util/a$a;", "info", "Ljava/io/File;", "updateApk", "upgradeApk", "(Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V", "startCheckUpdate", "stopCheckUpdate", "uploadCurrentVersionIfNeed", "", "elapsedTime", "onTick", "(J)V", "", "KEY_VERSION_CODE", "Ljava/lang/String;", "KEY_VERSION_NAME", "PREF_NAME", "Lcn/mucang/sundial/android/timer/SundialTimer;", "timer", "Lcn/mucang/sundial/android/timer/SundialTimer;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class UpdateManager implements SundialTimer.OnTickListener {
    public static final UpdateManager INSTANCE = new UpdateManager();
    private static final String KEY_VERSION_CODE = "version_code";
    private static final String KEY_VERSION_NAME = "version_name";
    private static final String PREF_NAME = "update_version";
    private static SundialTimer timer;

    private UpdateManager() {
    }

    private final void checkUpdate() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.library.UpdateManager.checkUpdate.1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                String url;
                UpdateApi updateApi = new UpdateApi();
                String strF = a.f();
                r.d(strF, "AppUtils.getAppVersionName()");
                int iD = a.d();
                String imei = DeviceUtils.getImei();
                r.d(imei, "DeviceUtils.getImei()");
                UpdateInfo updateInfoCheck = updateApi.check(strF, iD, imei);
                if (updateInfoCheck == null || !updateInfoCheck.isNeedUpdate() || (url = updateInfoCheck.getUrl()) == null) {
                    return;
                }
                if (url.length() > 0) {
                    File file = new File(Environment.getExternalStorageDirectory(), "update.apk");
                    if (file.exists()) {
                        a.C0191a c0191aA = a.a(file);
                        if (c0191aA != null && c0191aA.c().equals(MucangConfig.r()) && c0191aA.e() > a.d()) {
                            UpdateManager.INSTANCE.upgradeApk(c0191aA, file);
                            return;
                        }
                        file.delete();
                    }
                    try {
                        u.h("开始下载");
                        UtilsKt.downloadURLToFile(updateInfoCheck.getUrl(), file, updateInfoCheck.getMd5());
                        a.C0191a c0191aA2 = a.a(file);
                        if (c0191aA2 != null) {
                            UpdateManager.INSTANCE.upgradeApk(c0191aA2, file);
                        } else {
                            SundialLog.normal("Apk升级文件可能被删除");
                        }
                    } catch (Exception e2) {
                        String localizedMessage = e2.getLocalizedMessage();
                        if (localizedMessage != null && !StringsKt__StringsKt.G(localizedMessage, "qcom.android.receiver", false, 2, null)) {
                            SundialLog.normal("删除APK文件");
                            file.delete();
                        }
                        SundialLog.normal("升级失败 " + e2.getLocalizedMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void upgradeApk(a.C0191a info, File updateApk) {
        u.h("开始更新" + info.b() + " v" + info.f());
        SundialLog.normal("静默安装");
        SundialDevice device = GlobalData.INSTANCE.getDevice();
        Application applicationD = Utils.d();
        r.d(applicationD, "Utils.getApp()");
        DeviceHelper deviceHelper = device.deviceHelper(applicationD);
        String strC = info.c();
        r.d(strC, "info.packageName");
        deviceHelper.silentInstall(updateApk, strC);
    }

    @Override // cn.mucang.sundial.android.timer.SundialTimer.OnTickListener
    public void onTick(long elapsedTime) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!LoginUtil.INSTANCE.studentLoginSuccess()) {
                INSTANCE.checkUpdate();
            }
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    public final void startCheckUpdate() {
        if (timer == null) {
            SundialTimer sundialTimer = new SundialTimer(600000L, 600000L, this);
            sundialTimer.start();
            timer = sundialTimer;
        }
    }

    public final void stopCheckUpdate() {
        SundialTimer sundialTimer = timer;
        if (sundialTimer != null) {
            sundialTimer.stop();
            timer = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a  */
    public final void uploadCurrentVersionIfNeed() {
        boolean z;
        final String string = PreferenceUtils.getString(PREF_NAME, KEY_VERSION_NAME, null);
        final int i = PreferenceUtils.getInt(PREF_NAME, KEY_VERSION_CODE, -1);
        final String strU = o0.u();
        final int iT = o0.t();
        boolean z2 = true;
        if (i >= 0) {
            z = string == null || string.length() == 0;
        }
        if (!(!r.a(strU, string)) && iT == i) {
            z2 = z;
        }
        if (z2) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.library.UpdateManager.uploadCurrentVersionIfNeed.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        UpdateApi updateApi = new UpdateApi();
                        String str = string;
                        if (str == null) {
                            str = "";
                        }
                        int i2 = i;
                        String imei = DeviceUtils.getImei();
                        if (imei == null) {
                            imei = "";
                        }
                        String str2 = strU;
                        if (str2 == null) {
                            str2 = "";
                        }
                        boolean zRecord = updateApi.record(str, i2, imei, str2, iT);
                        SundialLog.normal("UpdateApi().record上报：" + zRecord);
                        if (zRecord) {
                            PreferenceUtils.putString(UpdateManager.PREF_NAME, UpdateManager.KEY_VERSION_NAME, strU);
                            PreferenceUtils.putInt(UpdateManager.PREF_NAME, UpdateManager.KEY_VERSION_CODE, iT);
                        }
                        Result.m139constructorimpl(v.f15822a);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m139constructorimpl(k.a(th));
                    }
                }
            });
        }
    }
}
