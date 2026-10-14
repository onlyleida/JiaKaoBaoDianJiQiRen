package com.autonavi.base.amap.mapcore;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.amap.api.mapcore.util.e6;
import com.amap.api.mapcore.util.r3;
import com.amap.api.maps.MapsInitializer;
import com.google.common.primitives.UnsignedBytes;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class FileUtil {
    private static final int BUFFER = 1024;
    private static final String FILE_PATH_ENTRY_BACK = "..";
    private static final String FILE_PATH_ENTRY_SEPARATOR = "/";
    private static final String FILE_PATH_ENTRY_SEPARATOR1 = "\\";
    private static final String FILE_PATH_ENTRY_SEPARATOR2 = "%";
    private static final String TAG = "FileUtil";
    private static final char UNIX_SEPARATOR = '/';
    private static final char WINDOWS_SEPARATOR = '\\';

    public static class UnZipFileBrake {
        public boolean mIsAborted = false;
    }

    public interface ZipCompressProgressListener {
        void onFinishProgress(long j);
    }

    public static boolean checkCanWrite(File file) {
        if (file == null || !file.canWrite()) {
            return false;
        }
        File file2 = new File(file, "amap.tmp");
        try {
            file2.createNewFile();
            if (!file2.exists()) {
                return false;
            }
            try {
                file2.delete();
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static byte[] compress(String str, String str2) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes(str2));
            gZIPOutputStream.close();
        } catch (IOException e2) {
            Log.e("gzip compress error.", e2.getMessage());
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void copy(Context context, String str, File file) throws Exception {
        file.delete();
        InputStream inputStreamOpen = context.getAssets().open(str);
        byte[] bArr = new byte[inputStreamOpen.available()];
        inputStreamOpen.read(bArr);
        inputStreamOpen.close();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(bArr);
        fileOutputStream.close();
    }

    public static void createNoMediaFileIfNotExist(String str) {
    }

    public static void decompress(InputStream inputStream, String str) throws Exception {
        decompress(inputStream, str, 0L, null);
    }

    private static int decompressFile(File file, ZipInputStream zipInputStream, long j, long j2, ZipCompressProgressListener zipCompressProgressListener, UnZipFileBrake unZipFileBrake) throws Exception {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        byte[] bArr = new byte[1024];
        int i = 0;
        while (true) {
            int i2 = zipInputStream.read(bArr, 0, 1024);
            if (i2 == -1) {
                bufferedOutputStream.close();
                return i;
            }
            if (unZipFileBrake != null && unZipFileBrake.mIsAborted) {
                bufferedOutputStream.close();
                return i;
            }
            bufferedOutputStream.write(bArr, 0, i2);
            i += i2;
            if (j2 > 0 && zipCompressProgressListener != null) {
                long j3 = ((((long) i) + j) * 100) / j2;
                if (unZipFileBrake == null || !unZipFileBrake.mIsAborted) {
                    zipCompressProgressListener.onFinishProgress(j3);
                }
            }
        }
    }

    public static boolean deleteFile(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isFile()) {
                    if (!fileArrListFiles[i].delete()) {
                        return false;
                    }
                } else {
                    if (!deleteFile(fileArrListFiles[i])) {
                        return false;
                    }
                    fileArrListFiles[i].delete();
                }
            }
        }
        file.delete();
        return true;
    }

    private static void fileProber(File file) {
        File parentFile = file.getParentFile();
        if (parentFile.exists()) {
            return;
        }
        fileProber(parentFile);
        parentFile.mkdir();
    }

    public static String getExternalStroragePath(Context context) {
        int i;
        String absolutePath;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 12) {
            try {
                StorageManager storageManager = (StorageManager) context.getSystemService("storage");
                Method method = StorageManager.class.getMethod("getVolumeList", new Class[0]);
                Method method2 = StorageManager.class.getMethod("getVolumeState", String.class);
                Object[] objArr = (Object[]) method.invoke(storageManager, new Object[0]);
                int length = objArr.length;
                String str = "";
                String str2 = "";
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i = 18;
                        absolutePath = null;
                        break;
                    }
                    Object obj = objArr[i3];
                    Method method3 = obj.getClass().getMethod("getPath", new Class[0]);
                    Method method4 = obj.getClass().getMethod("isRemovable", new Class[0]);
                    absolutePath = (String) method3.invoke(obj, new Object[0]);
                    Object[] objArr2 = objArr;
                    String str3 = (String) method2.invoke(storageManager, method3.invoke(obj, new Object[0]));
                    Boolean bool = (Boolean) method4.invoke(obj, new Object[0]);
                    if (TextUtils.isEmpty(absolutePath) || !absolutePath.toLowerCase().contains("private")) {
                        if (!bool.booleanValue()) {
                            str2 = str3;
                            str = absolutePath;
                        } else if (absolutePath != null && str3 != null && str3.equals("mounted")) {
                            if (i2 > 18) {
                                try {
                                    File[] externalFilesDirs = context.getExternalFilesDirs(null);
                                    if (externalFilesDirs == null) {
                                        absolutePath = null;
                                    } else if (externalFilesDirs.length > 1) {
                                        absolutePath = externalFilesDirs[1].getAbsolutePath();
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            i = 18;
                            break;
                        }
                        i3++;
                        objArr = objArr2;
                    }
                    i3++;
                    objArr = objArr2;
                }
                if (i2 <= i) {
                    return (absolutePath != null || str == null || str2 == null || !str2.equals("mounted")) ? absolutePath : str;
                }
                return (str == null || str2 == null || !str2.equals("mounted")) ? absolutePath : str;
            } catch (Throwable unused2) {
            }
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            return Environment.getExternalStorageDirectory().toString();
        }
        return null;
    }

    public static String getMapBaseStorage(Context context) {
        String string;
        if (context == null) {
            return null;
        }
        String str = Build.VERSION.SDK_INT > 18 ? "map_base_path_v44" : "map_base_path";
        SharedPreferences sharedPreferences = context.getSharedPreferences("base_path", 0);
        String str2 = MapsInitializer.sdcardDir;
        if (str2 == null || str2.trim().length() <= 0) {
            string = sharedPreferences.getString(str, "");
        } else {
            string = MapsInitializer.sdcardDir + File.separatorChar;
        }
        if (string != null && string.length() > 2) {
            File file = new File(string);
            if (!file.exists()) {
                file.mkdir();
            }
            if (file.isDirectory()) {
                if (checkCanWrite(file)) {
                    return string;
                }
                String str3 = context.getCacheDir().toString() + AeUtil.ROOTPATH;
                if (str3 != null && str3.length() > 2) {
                    File file2 = new File(str3);
                    if (!file2.exists()) {
                        file2.mkdir();
                    }
                    if (file2.isDirectory()) {
                        return str3;
                    }
                }
            }
        }
        String str4 = getExternalStroragePath(context) + AeUtil.ROOTPATH;
        if (str4 != null && str4.length() > 2) {
            File file3 = new File(str4);
            if (!file3.exists()) {
                file3.mkdir();
            }
            if (file3.isDirectory() && file3.canWrite()) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(str, str4);
                editorEdit.commit();
                createNoMediaFileIfNotExist(str4);
                return str4;
            }
        }
        String str5 = context.getCacheDir().toString() + AeUtil.ROOTPATH;
        if (str5 != null && str5.length() > 2) {
            File file4 = new File(str5);
            if (!file4.exists()) {
                file4.mkdir();
            }
            if (file4.isDirectory()) {
            }
        }
        return str5;
    }

    public static String getName(String str) {
        if (str == null) {
            return null;
        }
        return str.substring(indexOfLastSeparator(str) + 1);
    }

    private static InputStream getZipInputStream(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        return isGzip(bArr) ? new GZIPInputStream(byteArrayInputStream) : new ZipInputStream(byteArrayInputStream);
    }

    public static int indexOfLastSeparator(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    public static boolean isGzip(byte[] bArr) {
        return ((bArr[1] & UnsignedBytes.MAX_VALUE) | (bArr[0] << 8)) == 8075;
    }

    public static boolean isSafeEntryName(String str) {
        return (str.contains(FILE_PATH_ENTRY_BACK) || str.contains(FILE_PATH_ENTRY_SEPARATOR) || str.contains(FILE_PATH_ENTRY_SEPARATOR1) || str.contains(FILE_PATH_ENTRY_SEPARATOR2)) ? false : true;
    }

    private static byte[] readByteByStream(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static byte[] readFileContents(String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th) {
            e6.r(th, TAG, "readFileContents");
            r3.J(th);
            return null;
        }
    }

    public static byte[] readFileContentsFromAssets(Context context, String str) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            int iAvailable = inputStreamOpen.available();
            if (iAvailable == 0) {
                return null;
            }
            byte[] bArr = new byte[iAvailable];
            for (int i = 0; i < iAvailable; i += inputStreamOpen.read(bArr, i, iAvailable - i)) {
            }
            inputStreamOpen.close();
            return bArr;
        } catch (IOException | OutOfMemoryError unused) {
            return null;
        }
    }

    private static void safelyCloseFile(InputStream inputStream) {
        if (inputStream != null) {
            try {
                if (inputStream instanceof ZipInputStream) {
                    ((ZipInputStream) inputStream).closeEntry();
                }
                inputStream.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void saveFile(String str, String str2, boolean z) {
        try {
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + FILE_PATH_ENTRY_SEPARATOR + str2);
            if (!file.exists()) {
                new File(file.getParent()).mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, z);
            fileOutputStream.write(str.getBytes("utf-8"));
            fileOutputStream.close();
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public static Pair<String, byte[]> uncompressToByte(byte[] bArr) {
        InputStream zipInputStream;
        String name;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            zipInputStream = getZipInputStream(bArr);
            try {
                if (zipInputStream instanceof ZipInputStream) {
                    name = ((ZipInputStream) zipInputStream).getNextEntry().getName();
                    if (!isSafeEntryName(name)) {
                        Log.e("gzip compress error.", "gzip name contains ../ " + name);
                        safelyCloseFile(zipInputStream);
                        return null;
                    }
                } else {
                    name = "";
                }
                if (zipInputStream != null) {
                    byte[] bArr2 = new byte[256];
                    while (true) {
                        int i = zipInputStream.read(bArr2);
                        if (i < 0) {
                            Pair<String, byte[]> pair = new Pair<>(name, byteArrayOutputStream.toByteArray());
                            safelyCloseFile(zipInputStream);
                            return pair;
                        }
                        byteArrayOutputStream.write(bArr2, 0, i);
                    }
                }
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("gzip compress error.", th.getMessage());
                } finally {
                    safelyCloseFile(zipInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            zipInputStream = null;
        }
        return null;
    }

    public static Map<String, byte[]> uncompressToByteWithKeys(byte[] bArr, String[] strArr) {
        HashMap map = new HashMap();
        if (bArr == null || bArr.length == 0) {
            return map;
        }
        InputStream inputStream = null;
        try {
            InputStream zipInputStream = getZipInputStream(bArr);
            try {
                if (zipInputStream instanceof ZipInputStream) {
                    ZipInputStream zipInputStream2 = (ZipInputStream) zipInputStream;
                    while (true) {
                        ZipEntry nextEntry = zipInputStream2.getNextEntry();
                        if (nextEntry == null) {
                            break;
                        }
                        if (!nextEntry.isDirectory()) {
                            try {
                                String name = nextEntry.getName();
                                if (!isSafeEntryName(name)) {
                                    Log.e("gzip compress error.", "gzip name contains ../ " + name);
                                    safelyCloseFile(zipInputStream);
                                    return null;
                                }
                                for (String str : strArr) {
                                    if (name.equals(str)) {
                                        byte[] byteByStream = readByteByStream(zipInputStream2);
                                        if (byteByStream == null) {
                                            break;
                                        }
                                        map.put(str, byteByStream);
                                        break;
                                    }
                                }
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        zipInputStream2.closeEntry();
                    }
                }
                safelyCloseFile(zipInputStream);
            } catch (Throwable th) {
                th = th;
                inputStream = zipInputStream;
                try {
                    Log.e("gzip compress error.", th.getMessage());
                    return map;
                } finally {
                    safelyCloseFile(inputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return map;
    }

    public static String uncompressToString(byte[] bArr) {
        return uncompressToString(bArr, "UTF-8");
    }

    public static void writeDatasToFile(String str, byte[] bArr) {
        ReentrantReadWriteLock.WriteLock writeLock = new ReentrantReadWriteLock().writeLock();
        writeLock.lock();
        try {
            if (bArr != null) {
                try {
                    if (bArr.length != 0) {
                        File file = new File(str);
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(bArr);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } finally {
            writeLock.unlock();
        }
    }

    private static void decompress(InputStream inputStream, String str, long j, ZipCompressProgressListener zipCompressProgressListener) throws Exception {
        CheckedInputStream checkedInputStream = new CheckedInputStream(inputStream, new CRC32());
        ZipInputStream zipInputStream = new ZipInputStream(checkedInputStream);
        decompress(null, new File(str), zipInputStream, j, zipCompressProgressListener, null);
        zipInputStream.close();
        checkedInputStream.close();
    }

    public static String uncompressToString(byte[] bArr, String str) throws Throwable {
        InputStream zipInputStream;
        InputStream inputStream = null;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            zipInputStream = getZipInputStream(bArr);
            if (zipInputStream != null) {
                try {
                    try {
                        byte[] bArr2 = new byte[256];
                        while (true) {
                            int i = zipInputStream.read(bArr2);
                            if (i < 0) {
                                String string = byteArrayOutputStream.toString(str);
                                safelyCloseFile(zipInputStream);
                                return string;
                            }
                            byteArrayOutputStream.write(bArr2, 0, i);
                            th = th;
                            inputStream = zipInputStream;
                            safelyCloseFile(inputStream);
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        Log.e("gzip compress error.", e.getMessage());
                        safelyCloseFile(zipInputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = zipInputStream;
                }
            }
        } catch (IOException e3) {
            e = e3;
            zipInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        safelyCloseFile(zipInputStream);
        return null;
    }

    private static void decompress(File file, File file2, ZipInputStream zipInputStream, long j, ZipCompressProgressListener zipCompressProgressListener, UnZipFileBrake unZipFileBrake) throws Exception {
        boolean z = false;
        int iDecompressFile = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                break;
            }
            if (unZipFileBrake != null && unZipFileBrake.mIsAborted) {
                zipInputStream.closeEntry();
                return;
            }
            String name = nextEntry.getName();
            if (TextUtils.isEmpty(name) || !isSafeEntryName(name)) {
                z = true;
                break;
            }
            File file3 = new File(file2.getPath() + File.separator + name);
            fileProber(file3);
            if (nextEntry.isDirectory()) {
                file3.mkdirs();
            } else {
                iDecompressFile += decompressFile(file3, zipInputStream, iDecompressFile, j, zipCompressProgressListener, unZipFileBrake);
            }
            zipInputStream.closeEntry();
        }
        if (!z || file == null) {
            return;
        }
        try {
            file.delete();
        } catch (Exception unused) {
        }
    }
}
