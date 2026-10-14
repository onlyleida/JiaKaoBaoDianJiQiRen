package com.mobile.auth.gatewayauth.manager;

import android.text.TextUtils;
import com.mobile.auth.gatewayauth.annotations.AuthNumber;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
@AuthNumber
public class FeatureManager {
    public static final String FEATURE_KEY_CRASH = "CRASH_SDK";
    protected static final String FEATURE_KEY_SWITCH_CELLULAR = "switchCellularEnable";
    public static final String FEATURE_KEY_UC_CRASH = "UC_CRASH";
    protected static final String FEATURE_KEY_WHITE_CHECK = "whiteFileCheck";
    private static volatile FeatureManager mInstance;
    private HashMap<String, Object> mConfigs = new HashMap<>(5);

    private FeatureManager() {
    }

    public static FeatureManager getInstance() {
        try {
            if (mInstance == null) {
                synchronized (FeatureManager.class) {
                    if (mInstance == null) {
                        mInstance = new FeatureManager();
                    }
                }
            }
            return mInstance;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public Object get(String str) {
        try {
            HashMap<String, Object> map = this.mConfigs;
            if (map != null) {
                return map.get(str);
            }
            return null;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public void put(String str, Object obj) {
        HashMap<String, Object> map;
        try {
            if (TextUtils.isEmpty(str) || (map = this.mConfigs) == null) {
                return;
            }
            map.put(str, obj);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
