package com.iflytek.cloud.util;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.text.TextUtils;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class ResourceUtil {
    public static final String ASR_RES_PATH = "asr_res_path";
    public static final String ENGINE_DESTROY = "engine_destroy";
    public static final String ENGINE_START = "engine_start";
    public static final String GRM_BUILD_PATH = "grm_build_path";
    public static final String IVW_RES_PATH = "ivw_res_path";
    public static final String TTS_RES_PATH = "tts_res_path";

    public enum RESOURCE_TYPE {
        assets,
        res,
        path
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v8, types: [android.content.res.AssetFileDescriptor] */
    private static String a(Context context, RESOURCE_TYPE resource_type, String str) throws Throwable {
        long startOffset;
        long length;
        String str2 = null;
        str2 = null;
        str2 = null;
        AssetFileDescriptor assetFileDescriptor = 0;
        if (TextUtils.isEmpty(str) || context == 0) {
            return null;
        }
        String packageResourcePath = context.getPackageResourcePath();
        try {
            try {
                try {
                    try {
                        if (resource_type == RESOURCE_TYPE.assets) {
                            AssetFileDescriptor assetFileDescriptorOpenFd = context.getAssets().openFd(str);
                            startOffset = assetFileDescriptorOpenFd.getStartOffset();
                            length = assetFileDescriptorOpenFd.getLength();
                            context = assetFileDescriptorOpenFd;
                        } else {
                            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = context.getResources().openRawResourceFd(Integer.valueOf(str).intValue());
                            startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
                            length = assetFileDescriptorOpenRawResourceFd.getLength();
                            context = assetFileDescriptorOpenRawResourceFd;
                        }
                        str2 = "fo|" + packageResourcePath + "|" + startOffset + "|" + length;
                        context.close();
                    } catch (Exception e2) {
                        e = e2;
                        DebugLog.LogE(e);
                        if (context != 0) {
                            context.close();
                        }
                        return str2;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e4) {
                e = e4;
                context = 0;
            } catch (Throwable th) {
                th = th;
                if (assetFileDescriptor != 0) {
                    try {
                        assetFileDescriptor.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
            return str2;
        } catch (Throwable th2) {
            th = th2;
            assetFileDescriptor = context;
        }
    }

    public static String generateResourcePath(Context context, RESOURCE_TYPE resource_type, String str) {
        return resource_type == RESOURCE_TYPE.path ? a(str) : a(context, resource_type, str);
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        return "fo|" + str + "|0|" + file.length();
    }
}
