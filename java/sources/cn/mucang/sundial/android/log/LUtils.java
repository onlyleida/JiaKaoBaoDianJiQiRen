package cn.mucang.sundial.android.log;

import android.os.Environment;
import android.util.Log;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.o;
import cn.mucang.sundial.android.log.db.LogDb;
import cn.mucang.sundial.android.log.db.LogEntity;
import cn.mucang.sundial.android.tcp.data.DataManager;
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

/* JADX INFO: loaded from: classes5.dex */
public class LUtils {
    private static final String Parent;

    static {
        String str;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            str = MucangConfig.getContext().getExternalCacheDir().getAbsolutePath() + "/sundiallogs";
        } else {
            str = MucangConfig.getContext().getCacheDir().getAbsolutePath() + "/sundiallogs";
        }
        Parent = str;
    }

    public static void checkInValid(LogType logType) {
        try {
            List<LogEntity> list = LogDb.list(logType.type);
            if (list != null && list.size() >= 2) {
                ArrayList<LogEntity> arrayList = new ArrayList();
                ArrayList<LogEntity> arrayList2 = new ArrayList();
                long size = 0;
                for (LogEntity logEntity : list) {
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
                if (size > logType.totalSize) {
                    for (LogEntity logEntity2 : list) {
                        size -= logEntity2.getSize();
                        arrayList.add(logEntity2);
                        if (size <= logType.totalSize) {
                            break;
                        }
                    }
                }
                if (g.d(arrayList)) {
                    for (LogEntity logEntity3 : arrayList) {
                        LogDb.delete(logEntity3);
                        logEntity3.setId(-1L);
                        File file2 = new File(logEntity3.getFile());
                        if (file2.exists()) {
                            file2.delete();
                        }
                    }
                }
                if (g.d(arrayList2)) {
                    for (LogEntity logEntity4 : arrayList2) {
                        if (logEntity4.getId().longValue() > 0) {
                            LogDb.update(logEntity4);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.e("LTAG", "checkInValid:" + th.getLocalizedMessage());
        }
    }

    public static boolean compressFile(String str, String str2) throws Throwable {
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                ZipOutputStream zipOutputStream2 = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
                try {
                    zipOFile(zipOutputStream2, new File(str));
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

    public static long convert(String str) throws ParseException {
        return new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.US).parse(str).getTime();
    }

    public static String dir(LogType logType) {
        return logType.dir(Parent);
    }

    public static String getBasicInfo() {
        return "" + DataManager.getInstance().getDeviceInfo();
    }

    public static String preTime(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS", Locale.US).format(Long.valueOf(j));
    }

    public static String time(long j) {
        return new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.US).format(Long.valueOf(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v9 */
    private static void zipOFile(ZipOutputStream zipOutputStream, File file) throws Throwable {
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

    public static String time() {
        return time(System.currentTimeMillis());
    }
}
