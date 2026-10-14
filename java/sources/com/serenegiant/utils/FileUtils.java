package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.serenegiant.media.Recorder;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class FileUtils {
    public static String DIR_NAME = "UsbWebCamera";
    private static final String TAG = "FileUtils";
    private static final SimpleDateFormat mDateTimeFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.US);
    public static float FREE_RATIO = 0.03f;
    public static float FREE_SIZE_OFFSET = 2.097152E7f;
    public static float FREE_SIZE = 3.145728E8f;
    public static float FREE_SIZE_MINUTE = 4.194304E7f;
    public static long CHECK_INTERVAL = Recorder.CHECK_INTERVAL;

    public static final boolean checkFreeSpace(Context context, long j, long j2, int i) {
        if (context == null) {
            return false;
        }
        return checkFreeSpace(context, FREE_RATIO, j > 0 ? (((j - (System.currentTimeMillis() - j2)) / 60000.0f) * FREE_SIZE_MINUTE) + FREE_SIZE_OFFSET : FREE_SIZE, i);
    }

    public static final long getAvailableFreeSpace(Context context, String str, int i) {
        File captureDir;
        if (context == null || (captureDir = getCaptureDir(context, str, i)) == null || !captureDir.canWrite()) {
            return 0L;
        }
        return captureDir.getUsableSpace();
    }

    @SuppressLint({"NewApi"})
    public static final File getCaptureDir(Context context, String str, int i) {
        File fileCreateStorageDir = (i <= 0 || !SAFUtils.hasStorageAccess(context, i)) ? null : SAFUtils.createStorageDir(context, i);
        File file = fileCreateStorageDir != null ? new File(fileCreateStorageDir, getDirName()) : new File(Environment.getExternalStoragePublicDirectory(str), getDirName());
        file.mkdirs();
        if (file.canWrite()) {
            return file;
        }
        return null;
    }

    public static final File getCaptureFile(Context context, String str, String str2, int i) {
        return getCaptureFile(context, str, null, str2, i);
    }

    public static final String getDateTimeString() {
        return mDateTimeFormat.format(new GregorianCalendar().getTime());
    }

    public static String getDirName() {
        return TextUtils.isEmpty(DIR_NAME) ? "Serenegiant" : DIR_NAME;
    }

    public static String getExternalMounts() {
        String[] strArrSplit;
        String str = null;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("mount").getInputStream()));
            String strConcat = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (!line.contains("secure") && !line.contains("asec")) {
                    if (line.contains("fat")) {
                        String[] strArrSplit2 = line.split(" ");
                        if (strArrSplit2 != null && strArrSplit2.length > 1 && !TextUtils.isEmpty(strArrSplit2[1])) {
                            str = strArrSplit2[1];
                            if (!str.endsWith("/")) {
                                str = str + "/";
                            }
                        }
                    } else if (line.contains("fuse") && (strArrSplit = line.split(" ")) != null && strArrSplit.length > 1) {
                        strConcat = strConcat.concat("[" + strArrSplit[1] + "]");
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return str;
    }

    public static final float getFreeRatio(Context context, String str, int i) {
        File captureDir;
        if (context != null && (captureDir = getCaptureDir(context, str, i)) != null) {
            float usableSpace = captureDir.canWrite() ? captureDir.getUsableSpace() : BitmapDescriptorFactory.HUE_RED;
            if (captureDir.getTotalSpace() > 0) {
                return usableSpace / captureDir.getTotalSpace();
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    public static StorageInfo getStorageInfo(Context context, String str, int i) {
        if (context == null) {
            return null;
        }
        try {
            File captureDir = getCaptureDir(context, str, i);
            if (captureDir != null) {
                return new StorageInfo(captureDir.getTotalSpace(), (long) (captureDir.canWrite() ? captureDir.getUsableSpace() : BitmapDescriptorFactory.HUE_RED));
            }
            return null;
        } catch (Exception e2) {
            Log.w("getStorageInfo:", e2);
            return null;
        }
    }

    public static final String removeFileExtension(String str) {
        int iLastIndexOf = !TextUtils.isEmpty(str) ? str.lastIndexOf(".") : -1;
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    public static final String replaceFileExtension(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf > 0) {
            return str.substring(0, iLastIndexOf) + str2;
        }
        return str + str2;
    }

    public static final File getCaptureFile(Context context, String str, String str2, String str3, int i) {
        String dateTimeString;
        File captureDir;
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            dateTimeString = getDateTimeString();
        } else {
            dateTimeString = str2 + getDateTimeString();
        }
        sb.append(dateTimeString);
        sb.append(str3);
        String string = sb.toString();
        File file = null;
        if (i > 0 && SAFUtils.hasStorageAccess(context, i)) {
            File fileCreateStorageDir = SAFUtils.createStorageDir(context, i);
            if (fileCreateStorageDir == null || !fileCreateStorageDir.canWrite()) {
                Log.w(TAG, "なんでか書き込めん");
            } else {
                file = fileCreateStorageDir;
            }
            if (file != null) {
                file = new File(file, getDirName());
            }
        }
        if (file == null && (captureDir = getCaptureDir(context, str, 0)) != null) {
            captureDir.mkdirs();
            if (captureDir.canWrite()) {
                file = captureDir;
            }
        }
        return file != null ? new File(file, string) : file;
    }

    public static final boolean checkFreeSpace(Context context, float f2, float f3, int i) {
        if (context == null) {
            return false;
        }
        try {
            File captureDir = getCaptureDir(context, Environment.DIRECTORY_DCIM, i);
            if (captureDir == null) {
                return false;
            }
            float usableSpace = captureDir.canWrite() ? captureDir.getUsableSpace() : BitmapDescriptorFactory.HUE_RED;
            if (captureDir.getTotalSpace() > 0) {
                return usableSpace / ((float) captureDir.getTotalSpace()) > f2 || usableSpace > f3;
            }
            return false;
        } catch (Exception e2) {
            Log.w("checkFreeSpace:", e2);
            return false;
        }
    }
}
