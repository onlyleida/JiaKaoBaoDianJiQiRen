package cn.mucang.jiakaoyi.uilib.unityres;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.jiakaoyi.framework.consts.BoxVersion;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.jiakaoyi.uilib.upgrade.d;
import cn.mucang.jiakaoyi.uilib.upgrade.model.UpgradeParameterV2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f10310a = 1;
    public static int b = 2;
    public static final SparseArray<Integer> c = new C0164a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f10311d = 101;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.unityres.a$a, reason: collision with other inner class name */
    static class C0164a extends SparseArray<Integer> {
        C0164a() {
            put(3, 3);
            put(4, 4);
            put(5, 5);
            put(6, 6);
            put(7, 7);
            put(8, 8);
        }
    }

    public interface b {
        void a(float f2);

        void b(String str);

        void c(String str);
    }

    @SuppressLint({"RestrictedApi"})
    public static List<UpgradeInfoModel> a(boolean z, boolean z2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        UpgradeParameterV2 upgradeParameterV2 = new UpgradeParameterV2();
        upgradeParameterV2.type = f10310a;
        upgradeParameterV2.version = DeviceUtils.i();
        upgradeParameterV2.hardwarePlatform = DeviceUtils.f();
        arrayList.add(upgradeParameterV2);
        if (z) {
            return new d().n(arrayList);
        }
        if (z2) {
            UpgradeParameterV2 upgradeParameterV3 = new UpgradeParameterV2();
            upgradeParameterV3.type = b;
            upgradeParameterV3.version = DeviceUtils.h();
            arrayList.add(upgradeParameterV3);
            return new d().n(arrayList);
        }
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.f3433a.a(AbsSignalProvider.class, null);
        if (absSignalProvider != null && absSignalProvider.useNonOldProtocol()) {
            int i = 0;
            while (true) {
                SparseArray<Integer> sparseArray = c;
                if (i >= sparseArray.size()) {
                    break;
                }
                UpgradeParameterV2 upgradeParameterV4 = new UpgradeParameterV2();
                int iIntValue = sparseArray.valueAt(i).intValue();
                upgradeParameterV4.type = sparseArray.keyAt(i);
                upgradeParameterV4.version = DeviceUtils.l(iIntValue);
                upgradeParameterV4.hardwarePlatform = DeviceUtils.k(iIntValue);
                if (upgradeParameterV4.version > 0) {
                    arrayList.add(upgradeParameterV4);
                }
                i++;
            }
        } else if (AppUtils.c() || AppUtils.b()) {
            UpgradeParameterV2 upgradeParameterV5 = new UpgradeParameterV2();
            upgradeParameterV5.type = 7;
            upgradeParameterV5.version = DeviceUtils.l(7);
            upgradeParameterV5.hardwarePlatform = DeviceUtils.k(7);
            if (upgradeParameterV5.version > 0) {
                arrayList.add(upgradeParameterV5);
            }
        } else {
            BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
            if (boxVersion != null && boxVersion.hasOBD()) {
                UpgradeParameterV2 upgradeParameterV6 = new UpgradeParameterV2();
                upgradeParameterV6.type = b;
                upgradeParameterV6.version = DeviceUtils.h();
                arrayList.add(upgradeParameterV6);
            }
        }
        UpgradeParameterV2 upgradeParameterV7 = new UpgradeParameterV2();
        upgradeParameterV7.type = f10311d;
        upgradeParameterV7.version = o0.t();
        arrayList.add(upgradeParameterV7);
        List<UpgradeInfoModel> listM = new d().m(arrayList);
        for (UpgradeInfoModel upgradeInfoModel : listM) {
            if (upgradeInfoModel.getType() == f10311d) {
                return Collections.singletonList(upgradeInfoModel);
            }
        }
        return listM;
    }
}
