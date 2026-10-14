package cn.mucang.android.jiakaoyi.framework.log;

import android.os.Environment;
import android.util.Log;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.log.db.LogEntity;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f3466a;

    static {
        String str;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            str = MucangConfig.getContext().getExternalCacheDir().getAbsolutePath() + "/jkylogs";
        } else {
            str = MucangConfig.getContext().getCacheDir().getAbsolutePath() + "/jkylogs";
        }
        f3466a = str;
    }

    public static void a(i iVar) {
        try {
            List<LogEntity> listD = cn.mucang.android.jiakaoyi.framework.log.db.a.d(iVar.f3470f);
            if (listD != null && listD.size() >= 2) {
                ArrayList<LogEntity> arrayList = new ArrayList();
                ArrayList<LogEntity> arrayList2 = new ArrayList();
                long size = 0;
                for (LogEntity logEntity : listD) {
                    if (logEntity.getSize() <= 0) {
                        File file = new File(logEntity.getFile());
                        if (!file.exists() || file.length() <= 0) {
                            arrayList.add(logEntity);
                        } else {
                            logEntity.setSize(file.length());
                            arrayList2.add(logEntity);
                        }
                    }
                    size += logEntity.getSize();
                }
                if (size > iVar.f3469e) {
                    for (LogEntity logEntity2 : listD) {
                        size -= logEntity2.getSize();
                        arrayList.add(logEntity2);
                        if (size <= iVar.f3469e) {
                            break;
                        }
                    }
                }
                if (cn.mucang.android.core.utils.g.d(arrayList)) {
                    for (LogEntity logEntity3 : arrayList) {
                        cn.mucang.android.jiakaoyi.framework.log.db.a.b(logEntity3);
                        logEntity3.setId(-1L);
                        File file2 = new File(logEntity3.getFile());
                        if (file2.exists()) {
                            file2.delete();
                        }
                    }
                }
                if (cn.mucang.android.core.utils.g.d(arrayList2)) {
                    for (LogEntity logEntity4 : arrayList2) {
                        if (logEntity4.getId().longValue() > 0) {
                            cn.mucang.android.jiakaoyi.framework.log.db.a.f(logEntity4);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.e("LTAG", "checkInValid:" + th.getLocalizedMessage());
        }
    }

    public static boolean b(String str, String str2) throws Throwable {
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
                try {
                    i(zipOutputStream2, new File(str));
                    zipOutputStream2.flush();
                    zipOutputStream2.closeEntry();
                    o.a(zipOutputStream2);
                    return true;
                } catch (Exception e2) {
                    e = e2;
                    zipOutputStream = zipOutputStream2;
                    e.printStackTrace();
                    o.a(zipOutputStream);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    zipOutputStream = zipOutputStream2;
                    o.a(zipOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static long c(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.US).parse(str).getTime();
    }

    public static String d(i iVar) {
        return iVar.a(f3466a);
    }

    public static String e() {
        String strC = DeviceUtils.c();
        String str = "";
        if (n0.g(strC)) {
            str = "deviceNum:" + strC;
        }
        if (AccountManager.h().l()) {
            str = str + ",  authToken:" + AccountManager.h().g().getAuthToken();
        }
        String str2 = str + ",  pkgCreateTime:2023/10/12 17:54:03";
        HardwareInfo hardwareInfoD = DeviceUtils.d();
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(",  hardwareInfo:");
        sb.append(hardwareInfoD == null ? "空" : hardwareInfoD.string());
        return (sb.toString() + ",  isDebug:" + MucangConfig.v()) + ",  city:" + CityCodeManager.a();
    }

    public static String f(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS", Locale.US).format(Long.valueOf(j));
    }

    public static String g(long j) {
        return new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.US).format(Long.valueOf(j));
    }

    public static boolean h(File file) {
        return file != null && file.exists() && file.length() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v9 */
    private static void i(ZipOutputStream zipOutputStream, File file) throws Throwable {
        int i;
        ?? r0 = 0;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
                try {
                    byte[] bArr = new byte[131072];
                    while (true) {
                        i = bufferedInputStream2.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            zipOutputStream.write(bArr, 0, i);
                        }
                    }
                    o.a(bufferedInputStream2);
                    r0 = i;
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = bufferedInputStream2;
                    e.printStackTrace();
                    o.a(bufferedInputStream);
                    r0 = bufferedInputStream;
                } catch (Throwable th) {
                    th = th;
                    r0 = bufferedInputStream2;
                    o.a(r0);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }
}
