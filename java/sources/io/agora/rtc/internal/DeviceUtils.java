package io.agora.rtc.internal;

import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class DeviceUtils {
    public static final int DEVICE_INFO_UNKNOWN = -1;
    private static final String TAG = "DeviceUtils";
    private static final String[] H264_HW_BLACKLIST = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final FileFilter CPU_FILTER = new FileFilter() { // from class: io.agora.rtc.internal.DeviceUtils.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i = 3; i < name.length(); i++) {
                if (!Character.isDigit(name.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    };

    private static int extractValue(byte[] bArr, int i) {
        while (i < bArr.length && bArr[i] != 10) {
            if (Character.isDigit(bArr[i])) {
                int i2 = i + 1;
                while (i2 < bArr.length && Character.isDigit(bArr[i2])) {
                    i2++;
                }
                return Integer.parseInt(new String(bArr, 0, i, i2 - i));
            }
            i++;
        }
        return -1;
    }

    public static int getCPUMaxFreqKHz() {
        int iIntValue = -1;
        for (int i = 0; i < getNumberOfCPUCores(); i++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i + "/cpufreq/cpuinfo_max_freq");
                if (file.exists()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i2 = 0;
                        while (Character.isDigit(bArr[i2]) && i2 < 128) {
                            i2++;
                        }
                        Integer numValueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i2)));
                        if (numValueOf.intValue() > iIntValue) {
                            iIntValue = numValueOf.intValue();
                        }
                    } catch (NumberFormatException unused) {
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                    fileInputStream.close();
                }
            } catch (IOException unused2) {
                return -1;
            }
        }
        if (iIntValue == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            try {
                int fileForValue = parseFileForValue("cpu MHz", fileInputStream2) * 1000;
                if (fileForValue > iIntValue) {
                    iIntValue = fileForValue;
                }
            } finally {
                fileInputStream2.close();
            }
        }
        return iIntValue;
    }

    private static int getCoresFromCPUFileList() {
        return new File("/sys/devices/system/cpu").listFiles(CPU_FILTER).length;
    }

    private static int getCoresFromFileInfo(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                String line = new BufferedReader(new InputStreamReader(fileInputStream2)).readLine();
                fileInputStream2.close();
                int coresFromFileString = getCoresFromFileString(line);
                try {
                    fileInputStream2.close();
                } catch (IOException e2) {
                    Logging.e(TAG, "close file stream", e2);
                }
                return coresFromFileString;
            } catch (IOException unused) {
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        Logging.e(TAG, "close file stream", e3);
                    }
                }
                return -1;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        Logging.e(TAG, "close file stream", e4);
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int getCoresFromFileString(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    public static String getCpuABI() {
        return Build.CPU_ABI;
    }

    public static String getCpuName() throws Throwable {
        FileReader fileReader;
        FileReader fileReader2 = null;
        try {
            try {
                try {
                    fileReader = new FileReader("/proc/cpuinfo");
                    try {
                        String[] strArrSplit = new BufferedReader(fileReader).readLine().split(":\\s+", 2);
                        for (int i = 0; i < strArrSplit.length; i++) {
                        }
                        fileReader.close();
                        String str = strArrSplit[1];
                        try {
                            fileReader.close();
                        } catch (IOException e2) {
                            Logging.e(TAG, "failed to close proc file", e2);
                        }
                        return str;
                    } catch (FileNotFoundException e3) {
                        e = e3;
                        Logging.e(TAG, "getCpuName failed, no /proc/cpuinfo found in system", e);
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return null;
                    } catch (IOException e4) {
                        e = e4;
                        Logging.e(TAG, "getCpuName failed,", e);
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return null;
                    }
                } catch (IOException e5) {
                    Logging.e(TAG, "failed to close proc file", e5);
                    return null;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                fileReader = null;
            } catch (IOException e7) {
                e = e7;
                fileReader = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        fileReader2.close();
                    } catch (IOException e8) {
                        Logging.e(TAG, "failed to close proc file", e8);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getDeviceId() {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER);
        sb.append("/");
        String str = Build.MODEL;
        sb.append(str);
        sb.append("/");
        String str2 = Build.PRODUCT;
        sb.append(str2);
        sb.append("/");
        String str3 = Build.DEVICE;
        sb.append(str3);
        sb.append("/");
        int i = Build.VERSION.SDK_INT;
        sb.append(i);
        sb.append("/");
        sb.append(System.getProperty("os.version"));
        String string = sb.toString();
        if (string != null) {
            string = string.toLowerCase();
        }
        Matcher matcher = Pattern.compile(".*[A-Z][A-M][0-9]$").matcher(Build.ID);
        if (!Build.BRAND.toLowerCase().equals("samsung") || !str3.toLowerCase().startsWith("cs02") || matcher.find() || i != 19) {
            return string;
        }
        return "yeshen/simulator/" + str + "/" + str2 + "/" + str3 + "/" + i + "/" + System.getProperty("os.version");
    }

    public static String getDeviceInfo() {
        String str = Build.MANUFACTURER + "/" + Build.MODEL + "/" + Build.HARDWARE;
        return str != null ? str.toLowerCase() : str;
    }

    public static int getNumberOfCPUCores() {
        if (Build.VERSION.SDK_INT <= 10) {
            return 1;
        }
        try {
            int coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/possible");
            if (coresFromFileInfo == -1) {
                coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/present");
            }
            return coresFromFileInfo == -1 ? getCoresFromCPUFileList() : coresFromFileInfo;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    public static int getNumberOfCameras() {
        try {
            return Camera.getNumberOfCameras();
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }

    public static int getRecommendedEncoderType() {
        List listAsList = Arrays.asList(H264_HW_BLACKLIST);
        String str = Build.MODEL;
        if (!listAsList.contains(str)) {
            return Build.VERSION.SDK_INT <= 18 ? 1 : 0;
        }
        Logging.w(TAG, "Model: " + str + " has black listed H.264 encoder.");
        return 1;
    }

    public static String getSystemInfo() {
        return "Android/" + Build.VERSION.RELEASE;
    }

    private static int parseFileForValue(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int i = fileInputStream.read(bArr);
            int i2 = 0;
            while (i2 < i) {
                if (bArr[i2] == 10 || i2 == 0) {
                    if (bArr[i2] == 10) {
                        i2++;
                    }
                    for (int i3 = i2; i3 < i; i3++) {
                        int i4 = i3 - i2;
                        if (bArr[i3] != str.charAt(i4)) {
                            break;
                        }
                        if (i4 == str.length() - 1) {
                            return extractValue(bArr, i3);
                        }
                    }
                }
                i2++;
            }
            return -1;
        } catch (IOException | NumberFormatException unused) {
            return -1;
        }
    }

    public static int selectFrontCamera() {
        try {
            return Camera.getNumberOfCameras() > 1 ? 1 : 0;
        } catch (Exception e2) {
            Log.e(TAG, e2.toString());
            return 0;
        }
    }
}
