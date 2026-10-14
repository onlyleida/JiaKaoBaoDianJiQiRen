package com.alivc.live.pusher.logreport.core;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ConfigurationInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class AliLiveInfoUtils {
    public static final String ALIVC_CONAN_VERSION = "2.0";
    private static final int MAX_WRITE_COUNT = 10;
    private static final String UUID_FILE = "alilive_data.txt";
    private static final String UUID_PROP = "UUID";
    private static ProcessCpuTracker mCpuTracker;
    private static Context sAppContext;
    private static String sCpuProcessorInfo;
    private static String sDeviceUUID;
    private static String sSessionId;
    private static int sWriteUUIDCount;
    public static final String DATA_DIRECTORY = "AliLiveData";
    public static final File ALIVC_DATA_FILE = new File(Environment.getExternalStorageDirectory(), DATA_DIRECTORY);

    static /* synthetic */ int access$008() {
        int i = sWriteUUIDCount;
        sWriteUUIDCount = i + 1;
        return i;
    }

    public static boolean checkNetworkPermission() {
        Context context = sAppContext;
        return context != null && context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0;
    }

    public static boolean checkWriteFilePermission() {
        Context context = sAppContext;
        return context != null && context.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == 0;
    }

    public static String generateNewSessionId() {
        String strReplace = UUID.randomUUID().toString().replace("-", "");
        sSessionId = strReplace;
        return strReplace;
    }

    public static String getCPUInfo() {
        String str;
        try {
            str = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class).invoke(null, "ro.board.platform", "");
        } catch (Exception e2) {
            e2.printStackTrace();
            str = "";
        }
        return str.equals("") ? Build.HARDWARE : str;
    }

    public static String getCPUProcessorInfo() throws Throwable {
        if (!TextUtils.isEmpty(sCpuProcessorInfo)) {
            return sCpuProcessorInfo;
        }
        requestCPUInfo();
        return sCpuProcessorInfo;
    }

    public static double getCPUUsageRatio() {
        if (mCpuTracker == null) {
            mCpuTracker = new ProcessCpuTracker();
        }
        mCpuTracker.updateCpuUsages(getSDKContext());
        return mCpuTracker.getMyPicCpuPercent();
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String getCurrentTimestamp() {
        return new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date());
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static synchronized String getDeviceUUID() {
        if (!TextUtils.isEmpty(sDeviceUUID)) {
            return sDeviceUUID;
        }
        File file = ALIVC_DATA_FILE;
        File file2 = new File(file, UUID_FILE);
        try {
            if (file.exists() || file.mkdir()) {
                Properties properties = new Properties();
                FileReader fileReader = new FileReader(file2);
                properties.load(fileReader);
                fileReader.close();
                sDeviceUUID = properties.getProperty(UUID_PROP);
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(sDeviceUUID)) {
            sWriteUUIDCount = 0;
            String strReplace = UUID.randomUUID().toString().replace("-", "");
            sDeviceUUID = strReplace;
            writeUUIDToFile(file2, strReplace);
        }
        return sDeviceUUID;
    }

    public static String getElectricUsageRatio() {
        if (sAppContext == null) {
            return "0";
        }
        try {
            Intent intentRegisterReceiver = sAppContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            return String.valueOf((int) (((intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, -1) : -1) / (intentRegisterReceiver != null ? intentRegisterReceiver.getIntExtra("scale", -1) : -1)) * 100.0f));
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static String getGPUInfo() {
        return "";
    }

    public static String getMemoryUsageRatio() {
        Context context = sAppContext;
        if (context == null) {
            return "0";
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return "0";
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            long j = memoryInfo.totalMem;
            return j > 0 ? String.valueOf((int) ((1.0f - ((memoryInfo.availMem * 1.0f) / j)) * 100.0f)) : "0";
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static String getOSVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getOpenGLVersion() {
        ConfigurationInfo deviceConfigurationInfo;
        Context context = sAppContext;
        if (context != null) {
            try {
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                if (activityManager != null && (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) != null) {
                    return Integer.toHexString(Integer.parseInt(deviceConfigurationInfo.reqGlEsVersion + ""));
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Context getSDKContext() {
        return sAppContext;
    }

    public static String getSDKVersion() {
        return String.valueOf(Build.VERSION.SDK_INT);
    }

    public static String getTerminalType() {
        try {
            Context context = sAppContext;
            return (context == null || context.getResources() == null || sAppContext.getResources().getConfiguration() == null || (sAppContext.getResources().getConfiguration().screenLayout & 15) < 3) ? "phone" : "pad";
        } catch (Throwable unused) {
            return "phone";
        }
    }

    private static void requestCPUInfo() throws Throwable {
        BufferedReader bufferedReader;
        FileReader fileReader = null;
        try {
            FileReader fileReader2 = new FileReader("/proc/cpuinfo");
            try {
                bufferedReader = new BufferedReader(fileReader2);
                try {
                    String line = bufferedReader.readLine();
                    int i = 0;
                    while (true) {
                        i++;
                        if (i < 30) {
                            String[] strArrSplit = line.split(":\\s+", 2);
                            if (strArrSplit.length > 1 && strArrSplit[0].contains("Processor")) {
                                sCpuProcessorInfo = strArrSplit[1];
                            }
                            if (!TextUtils.isEmpty(sCpuProcessorInfo)) {
                                break;
                            } else {
                                line = bufferedReader.readLine();
                            }
                        } else {
                            break;
                        }
                    }
                    try {
                        fileReader2.close();
                    } catch (IOException unused) {
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                    try {
                        fileReader2.close();
                    } catch (IOException unused3) {
                    }
                } catch (Exception unused4) {
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException unused5) {
                        }
                    }
                    if (bufferedReader == null) {
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (IOException unused7) {
                        throw th;
                    }
                }
            } catch (Exception unused8) {
                bufferedReader = null;
            } catch (Throwable th2) {
                bufferedReader = null;
                fileReader = fileReader2;
                th = th2;
            }
        } catch (Exception unused9) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused10) {
        }
    }

    public static void setSDKContext(Context context) {
        sAppContext = context != null ? context.getApplicationContext() : context;
        if (mCpuTracker == null) {
            mCpuTracker = new ProcessCpuTracker();
        }
        mCpuTracker.updateCpuUsages(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeUUIDToFile(final File file, final String str) {
        if (file == null || TextUtils.isEmpty(str)) {
            return;
        }
        new Timer().schedule(new TimerTask() { // from class: com.alivc.live.pusher.logreport.core.AliLiveInfoUtils.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                boolean z = true;
                try {
                    boolean z2 = file.exists() || file.createNewFile();
                    Properties properties = new Properties();
                    properties.setProperty(AliLiveInfoUtils.UUID_PROP, str);
                    if (z2) {
                        FileWriter fileWriter = new FileWriter(file);
                        properties.store(fileWriter, (String) null);
                        fileWriter.close();
                    } else {
                        z = false;
                    }
                } catch (Throwable unused) {
                }
                AliLiveInfoUtils.access$008();
                if (z || AliLiveInfoUtils.sWriteUUIDCount >= 10) {
                    return;
                }
                AliLiveInfoUtils.writeUUIDToFile(file, str);
            }
        }, 3000L);
    }
}
