package cn.mucang.android.jiakaoyi.teachingk2.provider;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.teachingk2.safe.Safer;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.RemoteSocketManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.ui.settings.CheckModuleManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\fH\u0016¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "drawFence", "", "getCheckList", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "getCheckModuleStatus", "initBrakeGlobalMonitor", "", "initRemoteSocket", "initSafe", "setupSafe", "uploadCheckConfig", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class TeachSafeProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TeachSafeProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    public boolean drawFence() {
        return true;
    }

    public List<CheckModuleStatus> getCheckList() {
        List<CheckModuleStatus> checkModuleStatus = getCheckModuleStatus();
        ArrayList arrayList = new ArrayList();
        for (Object obj : checkModuleStatus) {
            CheckModuleStatus checkModuleStatus2 = (CheckModuleStatus) obj;
            if (!CheckModuleManager.a(checkModuleStatus2.getModule(), checkModuleStatus2.getCode()) && checkModuleStatus2.getLevel() <= 2) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public List<CheckModuleStatus> getCheckModuleStatus() {
        return CheckModuleStatus.INSTANCE.a();
    }

    public void initBrakeGlobalMonitor() {
        BrakeGlobalMonitor.c();
    }

    public void initRemoteSocket() {
        RemoteSocketManager.e();
    }

    public void initSafe() {
        Safer.e();
        SafeModeManager.i();
    }

    public boolean setupSafe() {
        return true;
    }

    public void uploadCheckConfig() {
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = "";
            List<CheckModuleStatus> checkModuleStatus = getCheckModuleStatus();
            ArrayList arrayList = new ArrayList();
            for (Object obj : checkModuleStatus) {
                CheckModuleStatus checkModuleStatus2 = (CheckModuleStatus) obj;
                if (CheckModuleManager.a(checkModuleStatus2.getModule(), checkModuleStatus2.getCode())) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                str = str + ((CheckModuleStatus) it.next()).getCode() + ',';
            }
            new CheckModuleManager.a().m(StringsKt__StringsKt.k0(str, ","));
            Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }
}
