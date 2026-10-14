package com.sixents.sdk.utils;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class LogUtils {
    public static final int DEBUG = 2;
    public static final int ERROR = 5;
    private static final String GLOBAL = "GLOBAL";
    public static final int INFO = 3;
    public static final String TAGPENG = "TAGPENG";
    public static final int VERBOSE = 1;
    public static final int WARN = 4;
    public static boolean isDebug = true;
    private static SimpleDateFormat mSdf = new SimpleDateFormat("yyyyMMdd");
    private static BlockingQueue<Runnable> workQueue = new LinkedBlockingQueue();
    private static ExecutorService executorService = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, workQueue, new ThreadFactory() { // from class: com.sixents.sdk.utils.LogUtils.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable);
        }
    });
    public static final SimpleDateFormat TIME_FORMAT = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    public static final SimpleDateFormat TIME_FORMAT_LOG = new SimpleDateFormat("MM_dd_HH_mm_ss");

    public enum CodeLocationStyle {
        FIRST(true, true),
        SUBSEQUENT(true, true);

        private boolean isAt;
        private boolean isSimpleClassName;

        CodeLocationStyle(boolean z, boolean z2) {
            this.isAt = z;
            this.isSimpleClassName = z2;
        }

        public boolean isAt() {
            return this.isAt;
        }

        public boolean isSimpleClassName() {
            return this.isSimpleClassName;
        }
    }

    private static final class FilePrintRunnableError implements Runnable {
        private static PrintWriter printWriter;
        private int level;
        private String msg;
        private Throwable t;
        private String tag;

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            PrintWriter printWriter2;
            try {
                if (printWriter == null) {
                    String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
                    Log.i("LOGUTILS = ", absolutePath);
                    File file = new File(absolutePath + "/Rtcm");
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    printWriter = new PrintWriter(new FileOutputStream(new File(file.getAbsolutePath() + File.separator + "RtcmErrLog.log"), true));
                }
                printWriter.print("|");
                printWriter.print(LogUtils.levelName(this.level));
                printWriter.print("|");
                printWriter.print(LogUtils.TIME_FORMAT.format(new Date()));
                printWriter.print("|");
                printWriter.print(this.tag);
                printWriter.print("|");
                printWriter.print(this.msg);
                Throwable th = this.t;
                if (th != null) {
                    th.printStackTrace(printWriter);
                }
                printWriter.println();
                printWriter.flush();
                z = false;
            } catch (IOException e2) {
                e2.printStackTrace();
                z = true;
            }
            if ((LogUtils.workQueue.size() < 1 || z) && (printWriter2 = printWriter) != null) {
                printWriter2.close();
                printWriter = null;
            }
        }

        private FilePrintRunnableError(int i, String str, String str2, Throwable th) {
            this.level = i;
            this.tag = str;
            this.msg = str2;
            this.t = th;
        }
    }

    private static final class FilePrintRunnableLog implements Runnable {
        private static PrintWriter printWriter;
        private int level;
        private String msg;
        private Throwable t;
        private String tag;

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            PrintWriter printWriter2;
            try {
                if (printWriter == null) {
                    File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Rtcm");
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    printWriter = new PrintWriter(new FileOutputStream(new File(file.getAbsolutePath() + File.separator + "printlog.log"), true));
                }
                printWriter.print("|");
                printWriter.print(LogUtils.levelName(this.level));
                printWriter.print("|");
                printWriter.print(LogUtils.TIME_FORMAT.format(new Date()));
                printWriter.print("|");
                printWriter.print(this.tag);
                printWriter.print("|");
                printWriter.print(this.msg);
                Throwable th = this.t;
                if (th != null) {
                    th.printStackTrace(printWriter);
                }
                printWriter.println();
                printWriter.flush();
                z = false;
            } catch (IOException e2) {
                e2.printStackTrace();
                z = true;
            }
            if ((LogUtils.workQueue.size() < 1 || z) && (printWriter2 = printWriter) != null) {
                printWriter2.close();
                printWriter = null;
            }
        }

        private FilePrintRunnableLog(int i, String str, String str2, Throwable th) {
            this.level = i;
            this.tag = str;
            this.msg = str2;
            this.t = th;
        }
    }

    private static final class FileSaveRunnableData implements Runnable {
        private static PrintWriter printWriter;
        private String msg;
        private Throwable t;
        private String tag;

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (printWriter == null) {
                    File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Rtcm");
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    printWriter = new PrintWriter(new FileOutputStream(new File(file.getAbsolutePath() + File.separator + "GGAData" + LogUtils.TIME_FORMAT_LOG.format(new Date()) + ".log"), true));
                }
                printWriter.print("|");
                printWriter.print(LogUtils.TIME_FORMAT.format(new Date()));
                printWriter.print("|");
                printWriter.print(this.msg);
                Throwable th = this.t;
                if (th != null) {
                    th.printStackTrace(printWriter);
                }
                printWriter.println();
                printWriter.flush();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        private FileSaveRunnableData(String str, String str2, Throwable th) {
            this.tag = str;
            this.msg = str2;
            this.t = th;
        }
    }

    private static final class FileSaveRunnableRTCM implements Runnable {
        private static BufferedOutputStream bufferedWriter;
        private byte[] bytes;

        @Override // java.lang.Runnable
        public void run() {
            if (bufferedWriter == null) {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Rtcm");
                if (!file.exists()) {
                    file.mkdir();
                    Log.i("LOGUTILS", "11111111111111");
                }
                FileOutputStream fileOutputStream = null;
                try {
                    fileOutputStream = new FileOutputStream(new File(file.getAbsolutePath() + File.separator + "RtcmData" + LogUtils.TIME_FORMAT_LOG.format(new Date()) + ".log"));
                } catch (FileNotFoundException e2) {
                    Log.i("LOGUTILS", "222222222222222222");
                    e2.printStackTrace();
                }
                bufferedWriter = new BufferedOutputStream(fileOutputStream);
            }
            try {
                bufferedWriter.write(this.bytes);
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            try {
                bufferedWriter.flush();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }

        private FileSaveRunnableRTCM(byte[] bArr) {
            this.bytes = bArr;
        }
    }

    public static void d(String str, String str2) {
        printLog(2, str, str2, null, false);
    }

    public static void ds(String str, String str2) {
        printLog(2, str, str2, null, true);
    }

    public static void e(String str) {
        e(TAGPENG, str);
    }

    public static void filePrintError(int i, String str, String str2, Throwable th) {
        executorService.submit(new FilePrintRunnableError(i, str, str2, th));
    }

    public static void filePrintLog(int i, String str, String str2, Throwable th) {
        executorService.submit(new FilePrintRunnableLog(i, str, str2, th));
    }

    public static void fileSaveData(String str, String str2, Throwable th) {
        executorService.submit(new FileSaveRunnableData(str, str2, th));
    }

    public static void fileSaveRtcm(byte[] bArr) {
        executorService.submit(new FileSaveRunnableRTCM(bArr));
    }

    private static StringBuilder getCodeLocation(CodeLocationStyle codeLocationStyle, Thread thread, StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        int lineNumber = stackTraceElement.getLineNumber();
        String methodName = stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        StringBuilder sb = new StringBuilder();
        if (codeLocationStyle.isAt()) {
            sb.append("\tat ");
        }
        if (codeLocationStyle.isSimpleClassName()) {
            sb.append(getSimpleName(className));
        } else {
            sb.append(className);
        }
        sb.append(".");
        sb.append(methodName);
        sb.append("(");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(")");
        return sb;
    }

    private static String getSimpleName(String str) {
        String[] strArrSplit = str.split("\\.");
        return strArrSplit[strArrSplit.length - 1];
    }

    public static void i(String str, String str2) {
        printLog(3, str, str2, null, false);
    }

    public static void ii(String str, String str2) {
        printLoger(3, str, str2, null, false);
    }

    public static void is(String str, String str2) {
        printLog(3, str, str2, null, true);
    }

    public static boolean isLoggable(String str, int i) {
        return isDebug;
    }

    public static String levelName(int i) {
        if (i == 1) {
            return "VERBOSE";
        }
        if (i == 2) {
            return "DEBUG";
        }
        if (i == 3) {
            return "INFO";
        }
        if (i != 4) {
            return i != 5 ? "DEFAULT" : "ERROR";
        }
        return "WARN";
    }

    private static void print(int i, String str, String str2, Throwable th) {
        if (i == 1) {
            if (th != null) {
                Log.v(str, str2, th);
                return;
            } else {
                Log.v(str, str2);
                return;
            }
        }
        if (i == 2) {
            if (th != null) {
                Log.d(str, str2, th);
                return;
            } else {
                Log.d(str, str2);
                return;
            }
        }
        if (i == 3) {
            if (th != null) {
                Log.i(str, str2, th);
                return;
            } else {
                Log.i(str, str2);
                return;
            }
        }
        if (i == 4) {
            if (th != null) {
                Log.w(str, str2, th);
                return;
            } else {
                Log.w(str, str2);
                return;
            }
        }
        if (i != 5) {
            return;
        }
        if (th != null) {
            Log.e(str, str2, th);
        } else {
            Log.e(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printError(int i, String str, String str2, Throwable th, boolean z) {
        Thread threadCurrentThread = Thread.currentThread();
        StackTraceElement[] stackTrace = threadCurrentThread.getStackTrace();
        String str3 = threadCurrentThread.getId() + "|" + ((CharSequence) getCodeLocation(CodeLocationStyle.FIRST, null, stackTrace[4])) + "|" + str2;
        print(i, str, str3, th);
        filePrintError(i, str, str3, th);
        for (int i2 = 5; z && i2 < stackTrace.length; i2++) {
            String string = getCodeLocation(CodeLocationStyle.SUBSEQUENT, threadCurrentThread, stackTrace[i2]).toString();
            print(i, str, string, null);
            filePrintError(i, str, string, null);
        }
    }

    private static void printLog(int i, String str, String str2, Throwable th, boolean z) {
        if (isLoggable(str, i)) {
            Thread threadCurrentThread = Thread.currentThread();
            String str3 = threadCurrentThread.getId() + "|" + ((CharSequence) getCodeLocation(CodeLocationStyle.FIRST, null, threadCurrentThread.getStackTrace()[4])) + "|" + str2;
            print(i, str, str3, th);
            filePrintLog(i, str, str3, th);
        }
    }

    private static void printLoger(int i, String str, String str2, Throwable th, boolean z) {
        if (isLoggable(str, i)) {
            String str3 = str2;
            print(i, str, str3, th);
            filePrintLog(i, str, str3, th);
        }
    }

    public static void registerUncaughtExceptionHandler() {
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.sixents.sdk.utils.LogUtils.2
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                LogUtils.printError(5, LogUtils.GLOBAL, "uncaughtException", th, false);
                defaultUncaughtExceptionHandler.uncaughtException(thread, th);
            }
        });
    }

    public static void savaData(String str, String str2) {
        fileSaveData(str, str2, null);
    }

    public static void savaRtcm(byte[] bArr) {
        fileSaveRtcm(bArr);
    }

    public static void v(String str, String str2) {
        printLog(1, str, str2, null, false);
    }

    public static void vs(String str, String str2) {
        printLog(1, str, str2, null, true);
    }

    public static void w(String str, String str2) {
        printLog(4, str, str2, null, false);
    }

    public static void writeLog(Context context) {
        try {
            String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Rtcm/";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = str + "log_" + mSdf.format(Long.valueOf(System.currentTimeMillis())) + ".txt";
            Runtime.getRuntime().exec("logcat -v long -f " + str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void ws(String str, String str2) {
        printLog(4, str, str2, null, true);
    }

    public static void d(String str, String str2, Throwable th) {
        printLog(2, str, str2, th, false);
    }

    public static void e(String str, String str2) {
        printLog(5, str, str2, null, false);
    }

    public static void i(String str, String str2, Throwable th) {
        printLog(3, str, str2, th, false);
    }

    public static void ii(String str, String str2, Throwable th) {
        printLoger(3, str, str2, th, false);
    }

    public static void v(String str, String str2, Throwable th) {
        printLog(1, str, str2, th, false);
    }

    public static void w(String str, String str2, Throwable th) {
        printLog(4, str, str2, th, false);
    }

    public static void e(String str, String str2, Throwable th) {
        printLog(5, str, str2, th, false);
    }
}
