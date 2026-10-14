package com.autonavi.base.amap.mapcore;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.amap.api.mapcore.util.e6;
import com.amap.api.mapcore.util.gb;
import com.amap.api.mapcore.util.m5;
import com.amap.api.mapcore.util.m8;
import com.amap.api.mapcore.util.n6;
import com.amap.api.mapcore.util.n8;
import com.amap.api.mapcore.util.p6;
import com.amap.api.mapcore.util.q8;
import com.amap.api.mapcore.util.r3;
import com.autonavi.amap.mapcore.MsgProcessor;
import com.autonavi.base.ae.gmap.GLMapEngine;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"NewApi"})
public class AeUtil {
    public static final String CONFIGNAME = "GNaviConfig.xml";
    public static final boolean IS_AE = true;
    public static final String RESZIPNAME = "res.zip";
    public static final String ROOTPATH = "/amap/";
    public static final String ROOT_DATA_PATH_NAME = "data_v6";
    public static final String ROOT_DATA_PATH_OLD_NAME = "data";
    public static final String SO_FILENAME = "AMapSDK_MAP_v7_4_0";
    public static final String SO_FILENAME_NAVI = "AMapSDK_NAVI_v6_5_0";
    public static boolean isNaviSoLoaded = false;

    private static boolean checkEngineRes(File file) {
        File[] fileArrListFiles = file.listFiles();
        return fileArrListFiles != null && fileArrListFiles.length > 0;
    }

    public static void initCrashHandle(Context context, boolean z) {
        m5 m5VarU0;
        p6.a().b(context);
        if (!n6.a(r3.u0()).c(context) || (m5VarU0 = r3.u0()) == null) {
            return;
        }
        MsgProcessor.nativeInitInfo(context, n6.a(m5VarU0).d(context), m5VarU0.a(), m5VarU0.e(), m5VarU0.g(), m5VarU0.k());
    }

    public static GLMapEngine.InitParam initResource(final Context context) {
        final String mapBaseStorage = FileUtil.getMapBaseStorage(context);
        String str = mapBaseStorage + "/" + ROOT_DATA_PATH_NAME + "/";
        File file = new File(mapBaseStorage);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdir();
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            try {
                m8.a(1).d(new n8() { // from class: com.autonavi.base.amap.mapcore.AeUtil.1
                    @Override // com.amap.api.mapcore.util.n8
                    public void runTask() {
                        AeUtil.loadEngineRes(mapBaseStorage, context);
                    }
                });
            } catch (gb e2) {
                e2.printStackTrace();
            }
        } else {
            loadEngineRes(mapBaseStorage, context);
        }
        GLMapEngine.InitParam initParam = new GLMapEngine.InitParam();
        byte[] fileContentsFromAssets = FileUtil.readFileContentsFromAssets(context, "ae/GNaviConfig.xml");
        initParam.mRootPath = mapBaseStorage;
        if (fileContentsFromAssets != null) {
            try {
                String str2 = new String(fileContentsFromAssets, "utf-8");
                initParam.mConfigContent = str2;
                if (!str2.contains(ROOT_DATA_PATH_NAME)) {
                    throw new Exception("GNaviConfig.xml 和数据目录data_v6不匹配");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        initParam.mOfflineDataPath = str + "/map/";
        initParam.mP3dCrossPath = str;
        return initParam;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public static void loadEngineRes(String str, Context context) {
        File file = new File(str, "res");
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        if (checkEngineRes(file)) {
            return;
        }
        ?? e2 = 0;
        e2 = 0;
        e2 = 0;
        try {
            try {
                try {
                    try {
                        e2 = context.getAssets().open("ae/res.zip");
                        FileUtil.decompress(e2, file.getAbsolutePath());
                        e2 = e2;
                        if (e2 != 0) {
                            e2.close();
                            e2 = e2;
                        }
                    } catch (OutOfMemoryError e3) {
                        e3.printStackTrace();
                        r3.J(e3);
                        if (e2 != 0) {
                            e2.close();
                            e2 = e2;
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    r3.J(e4);
                    if (e2 != 0) {
                        e2.close();
                        e2 = e2;
                    }
                }
            } catch (IOException e5) {
                e2 = e5;
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            if (e2 != 0) {
                try {
                    e2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean loadLib(Context context) {
        try {
            String str = SO_FILENAME;
            if (q8.f11106a) {
                str = q8.b;
                if (isNaviSoLoaded) {
                    return false;
                }
            }
            System.loadLibrary(str);
            if (q8.f11106a) {
                isNaviSoLoaded = true;
            }
            return true;
        } catch (Throwable th) {
            e6.r(th, "AeUtil", "loadLib");
            r3.J(th);
            return false;
        }
    }

    public static void readAssetsFileAndSave(String str, String str2, Context context) {
        FileOutputStream fileOutputStream;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStreamOpen = context.getAssets().open(str);
                try {
                    File file = new File(str2);
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i = inputStreamOpen.read(bArr, 0, 1024);
                            if (i <= 0) {
                                break;
                            } else {
                                fileOutputStream2.write(bArr, 0, i);
                            }
                        }
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        fileOutputStream2.close();
                    } catch (Throwable th) {
                        inputStream = inputStreamOpen;
                        fileOutputStream = fileOutputStream2;
                        th = th;
                        try {
                            th.printStackTrace();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            if (fileOutputStream == null) {
                            }
                        } finally {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStreamOpen;
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (IOException e6) {
        }
    }
}
