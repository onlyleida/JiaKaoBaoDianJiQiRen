package cn.mucang.sundial.android.log;

import android.util.Log;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.g;
import cn.mucang.sundial.android.log.db.LogDb;
import cn.mucang.sundial.android.log.db.LogEntity;
import cn.mucang.sundial.android.log.prefix.DefaultWrapOutput;
import cn.mucang.sundial.android.log.upload.UploadLogApi;
import cn.mucang.sundial.android.log.write.LogDirectory;
import cn.mucang.sundial.android.log.write.LogExe;
import cn.mucang.sundial.android.log.write.LogWriter;
import cn.mucang.sundial.android.log.write.end.DefaultStopWriter;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class SundialLog {
    private static final String TAG = "LogsTag";
    private static final Map<LogType, LogWriter> writers = new HashMap();

    static {
        DefaultStopWriter defaultStopWriter = new DefaultStopWriter();
        DefaultWrapOutput defaultWrapOutput = new DefaultWrapOutput();
        for (LogType logType : LogType.values()) {
            writers.put(logType, new LogExe(new LogDirectory(logType, defaultStopWriter, defaultWrapOutput), logType));
        }
    }

    static /* synthetic */ void a(long j, LogType logType) {
        try {
            List<LogEntity> list = LogDb.list(j, logType.type);
            if (g.b(list)) {
                uploadFile(logType);
                return;
            }
            LogEntity logEntity = list.get(0);
            LogWriter logWriterWith = with(logType);
            if (logWriterWith != null && logWriterWith.entityId() == logEntity.getId().longValue()) {
                logWriterWith.stop();
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (logWriterWith.entityId() == logEntity.getId().longValue()) {
                    if (System.currentTimeMillis() - jCurrentTimeMillis > 10000) {
                        return;
                    } else {
                        Thread.yield();
                    }
                }
            }
            UploadLogApi.upload(logType, logEntity);
            LUtils.checkInValid(logType);
        } catch (Throwable th) {
            Log.e("TAG", "error = " + th.getMessage());
        }
    }

    static /* synthetic */ void b(LogType logType) {
        try {
            List<LogEntity> list = LogDb.list(logType.type);
            if (g.b(list)) {
                uploadFile(logType);
                return;
            }
            for (LogEntity logEntity : list) {
                LogWriter logWriterWith = with(logType);
                if (logWriterWith != null && logWriterWith.entityId() == logEntity.getId().longValue()) {
                    logWriterWith.stop();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (logWriterWith.entityId() == logEntity.getId().longValue()) {
                        if (System.currentTimeMillis() - jCurrentTimeMillis > 10000) {
                            return;
                        } else {
                            Thread.yield();
                        }
                    }
                }
                UploadLogApi.upload(logType, logEntity);
            }
            LUtils.checkInValid(logType);
        } catch (Throwable th) {
            Log.e("TAG", "error = " + th.getMessage());
        }
    }

    public static void com(Object obj) {
        try {
            with(LogType.Com).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e(TAG, "error com :" + obj + ":" + th);
        }
    }

    public static void gps(Object obj) {
        try {
            with(LogType.GPS).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e(TAG, "error gps :" + obj + ":" + th);
        }
    }

    public static void normal(Object obj) {
        try {
            with(LogType.Normal).write(obj, System.currentTimeMillis());
        } catch (Throwable th) {
            Log.e(TAG, "error normal :" + obj + ":" + th);
        }
    }

    public static void stop() {
        Iterator<Map.Entry<LogType, LogWriter>> it = writers.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().stop();
        }
    }

    public static void upload(final LogType logType, final long j) {
        new Thread(new Runnable() { // from class: cn.mucang.sundial.android.log.b
            @Override // java.lang.Runnable
            public final void run() {
                SundialLog.a(j, logType);
            }
        }).start();
    }

    public static void uploadAll() throws ApiException, IOException, InternalException, HttpException {
        for (LogType logType : LogType.values()) {
            if (logType.realTimeUpload) {
                List<LogEntity> list = LogDb.list(logType.type);
                if (g.b(list)) {
                    uploadFile(logType);
                } else {
                    for (LogEntity logEntity : list) {
                        if (logEntity.getId().longValue() != with(logType).entityId()) {
                            UploadLogApi.upload(logType, logEntity);
                        }
                    }
                }
            }
        }
    }

    private static void uploadFile(LogType logType) {
        File file = new File(LUtils.dir(logType));
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles.length > 0) {
                for (File file2 : fileArrListFiles) {
                    try {
                        if (file2.exists() && file2.length() != 0) {
                            LogEntity logEntity = new LogEntity();
                            logEntity.setDirName(logType.dirName);
                            logEntity.setTypeName(logType.typeName);
                            logEntity.setType(logType.type);
                            logEntity.setFile(file2.getAbsolutePath());
                            logEntity.setSize(file2.length());
                            logEntity.setState(0);
                            String name = file2.getName();
                            if (name.endsWith(".zip")) {
                                String strReplace = name.replace(".zip", "");
                                String strSubstring = strReplace.substring(0, 19);
                                String strSubstring2 = strReplace.substring(20);
                                logEntity.setStartTime(LUtils.convert(strSubstring));
                                logEntity.setEndTime(LUtils.convert(strSubstring2));
                            } else {
                                if (name.endsWith("." + logType.suffix)) {
                                    logEntity.setStartTime(LUtils.convert(name.replace("." + logType.suffix, "")));
                                }
                            }
                            UploadLogApi.upload(logType, logEntity);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private static LogWriter with(LogType logType) {
        return writers.get(logType);
    }

    public static void upload(final LogType logType) {
        new Thread(new Runnable() { // from class: cn.mucang.sundial.android.log.a
            @Override // java.lang.Runnable
            public final void run() {
                SundialLog.b(logType);
            }
        }).start();
    }

    public static void upload(long j) {
        for (LogType logType : LogType.values()) {
            upload(logType, j);
        }
    }
}
