package cn.mucang.sundial.library.util;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import cn.mucang.sundial.android.log.SundialLog;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\b¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/util/AppUtil;", "", "", "key", "getMateData", "(Ljava/lang/String;)Ljava/lang/String;", "", "isLuKaoYi", "()Z", "isCW", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class AppUtil {
    public static final AppUtil INSTANCE = new AppUtil();

    private AppUtil() {
    }

    public static final String getMateData(String key) {
        r.e(key, "key");
        if (key.length() == 0) {
            key = Constant.LOGIN_ACTIVITY_VENDOR_KEY;
        }
        try {
            Application context = com.blankj.utilcode.util.Utils.d();
            r.d(context, "context");
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            r.d(applicationInfo, "context.packageManager.g…T_META_DATA\n            )");
            String string = applicationInfo.metaData.getString(key);
            if (string == null) {
                string = "";
            }
            r.d(string, "info.metaData.getString(mKey) ?: \"\"");
            return string;
        } catch (PackageManager.NameNotFoundException e2) {
            SundialLog.normal("AppUtils: " + e2.getLocalizedMessage());
            return "";
        }
    }

    public static final boolean isCW() {
        return r.a("ChengWei", getMateData(""));
    }

    public static final boolean isLuKaoYi() {
        return r.a("LuKaoYi", getMateData(""));
    }
}
