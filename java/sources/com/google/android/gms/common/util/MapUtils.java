package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.mobile.auth.BuildConfig;
import java.util.HashMap;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class MapUtils {
    @KeepForSdk
    public static void writeStringMapToJson(StringBuilder sb, HashMap<String, String> map) {
        sb.append(VectorFormat.DEFAULT_PREFIX);
        boolean z = true;
        for (String str : map.keySet()) {
            if (!z) {
                sb.append(",");
            }
            String str2 = map.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append(BuildConfig.COMMON_MODULE_COMMIT_ID);
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
            z = false;
        }
        sb.append(VectorFormat.DEFAULT_SUFFIX);
    }
}
