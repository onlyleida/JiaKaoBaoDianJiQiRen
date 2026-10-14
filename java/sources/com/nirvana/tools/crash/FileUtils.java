package com.nirvana.tools.crash;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes6.dex */
class FileUtils {
    FileUtils() {
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1048576];
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static void copyFile(File file, String str) throws IOException {
        File fileCreateFileIfUnExist = createFileIfUnExist(str);
        if (fileCreateFileIfUnExist == null) {
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateFileIfUnExist);
        try {
            byte[] bArr = new byte[1048576];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable th) {
            fileInputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            throw th;
        }
    }

    private static File createFileIfUnExist(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file;
        }
        File file2 = new File(file.getParent());
        if (!file2.exists()) {
            file2.mkdirs();
        }
        try {
            if (file.createNewFile()) {
                return file;
            }
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void deleteFile(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        file.delete();
    }

    private static String fillContent(Context context, String str, String str2, String str3, long j, SdkInfo sdkInfo, String str4, Map<String, String> map, Thread thread, Throwable th) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nBasic Information: 'pid: ");
            sb.append(Process.myPid());
            sb.append("/tid: ");
            sb.append(Process.myTid());
            sb.append("/time: ");
            sb.append(str);
            sb.append("'\nCpu Information: 'abi: ");
            sb.append(str2);
            sb.append("/processor: ");
            sb.append(CrashUploadUtils.getFieldFromCpuinfo("Processor"));
            sb.append("/hardware: ");
            sb.append(Build.HARDWARE);
            sb.append("'\nMobile Information: 'model: ");
            sb.append(Build.MODEL);
            sb.append("/version: ");
            sb.append(Build.VERSION.RELEASE);
            sb.append("/sdk: ");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("'\nBuild fingerprint: '");
            sb.append(Build.FINGERPRINT);
            sb.append("'\nRuntime Information: 'start: ");
            sb.append(str3);
            sb.append("/maxheap: ");
            sb.append(j);
            sb.append("/primaryabi: ");
            String str5 = Build.CPU_ABI;
            sb.append(str5);
            sb.append("/ground: fg'\nApplication Information: 'version: ");
            sb.append(CrashUploadUtils.getVersion(context));
            sb.append("/subversion: release'\nCrashSDK Information: 'version:");
            sb.append(sdkInfo.getSdkVersion());
            sb.append("/arch: ");
            sb.append(str5);
            sb.append("/target: ");
            sb.append(CrashUploadUtils.apkInDebugRelease(context));
            sb.append("'\nReport Name: ");
            sb.append(str4);
            sb.append("\nLog Type: java\ncrash_shield_version: 2.0.3\ncustom_uc_upload: true");
            if (map != null && !map.isEmpty()) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    sb.append("\n");
                    sb.append(entry.getKey());
                    sb.append(":");
                    sb.append(entry.getValue());
                }
            }
            sb.append("\nActivity: (none)\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\nProcess Name: '");
            sb.append(CrashUploadUtils.getCurProcessName(context));
            sb.append("'\nThread Name: '");
            sb.append(thread.getName());
            sb.append("\nk_ac: ");
            sb.append(sdkInfo.getSdkName());
            sb.append("\nBack traces starts.\n");
            sb.append(Log.getStackTraceString(th));
            sb.append("\nBack traces ends.\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\nmeminfo:\n");
            sb.append(CrashUploadUtils.getMeminfo());
            sb.append("\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
            return sb.toString();
        } catch (IOException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String getName(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.substring(str.lastIndexOf(File.separatorChar) + 1);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0047 A[Catch: IOException -> 0x0058, PHI: r1 r4
      0x0047: PHI (r1v5 java.io.FileInputStream) = (r1v3 java.io.FileInputStream), (r1v6 java.io.FileInputStream) binds: [B:34:0x0045, B:42:0x0055] A[DONT_GENERATE, DONT_INLINE]
      0x0047: PHI (r4v8 ??) = (r4v6 ??), (r4v9 ??) binds: [B:34:0x0045, B:42:0x0055] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {IOException -> 0x0058, blocks: (B:33:0x0042, B:35:0x0047, B:41:0x0052), top: B:54:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0061 A[Catch: IOException -> 0x0064, TRY_LEAVE, TryCatch #6 {IOException -> 0x0064, blocks: (B:47:0x005c, B:49:0x0061), top: B:56:0x005c }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16, types: [java.io.OutputStream, java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static boolean gzipCompress(File file, String str) throws Throwable {
        File fileCreateFileIfUnExist = createFileIfUnExist(str);
        if (fileCreateFileIfUnExist == null) {
            return false;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream((File) file);
                    try {
                        file = new GZIPOutputStream(new FileOutputStream(fileCreateFileIfUnExist));
                        try {
                            copy(fileInputStream2, file);
                            file.flush();
                            try {
                                fileInputStream2.close();
                                file.close();
                                return true;
                            } catch (IOException unused) {
                                return true;
                            }
                        } catch (FileNotFoundException e2) {
                            e = e2;
                            fileInputStream = fileInputStream2;
                            file = file;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (file != 0) {
                                file.close();
                            }
                            return false;
                        } catch (IOException e3) {
                            e = e3;
                            fileInputStream = fileInputStream2;
                            file = file;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (file != 0) {
                                file.close();
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    if (file != 0) {
                                        file.close();
                                    }
                                } catch (IOException unused2) {
                                    throw th;
                                }
                            } else if (file != 0) {
                                file.close();
                            }
                            throw th;
                        }
                    } catch (FileNotFoundException e4) {
                        e = e4;
                        file = 0;
                    } catch (IOException e5) {
                        e = e5;
                        file = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        file = 0;
                    }
                } catch (IOException unused3) {
                    return false;
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                file = 0;
            } catch (IOException e7) {
                e = e7;
                file = 0;
            } catch (Throwable th3) {
                th = th3;
                file = 0;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0056 A[Catch: IOException -> 0x0052, TRY_LEAVE, TryCatch #5 {IOException -> 0x0052, blocks: (B:31:0x004e, B:35:0x0056), top: B:66:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0073 A[Catch: IOException -> 0x006f, TRY_LEAVE, TryCatch #6 {IOException -> 0x006f, blocks: (B:44:0x006b, B:48:0x0073), top: B:68:0x006b }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x008a A[Catch: IOException -> 0x0086, TRY_LEAVE, TryCatch #9 {IOException -> 0x0086, blocks: (B:55:0x0082, B:59:0x008a), top: B:72:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.BufferedReader] */
    public static String readStringFromFile(File file) {
        ?? r6;
        FileInputStream fileInputStream;
        IOException e2;
        BufferedReader bufferedReader;
        FileNotFoundException e3;
        FileInputStream fileInputStream2 = null;
        if (file == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                stringBuffer.append(line);
                            } else {
                                try {
                                    break;
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                        } catch (FileNotFoundException e5) {
                            e3 = e5;
                            e3.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                    return stringBuffer.toString();
                                }
                            } else if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return stringBuffer.toString();
                        } catch (IOException e7) {
                            e2 = e7;
                            e2.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                    return stringBuffer.toString();
                                }
                            } else if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return stringBuffer.toString();
                        }
                    }
                    fileInputStream.close();
                    bufferedReader.close();
                    return stringBuffer.toString();
                } catch (FileNotFoundException e9) {
                    e3 = e9;
                    bufferedReader = null;
                } catch (IOException e10) {
                    e2 = e10;
                    bufferedReader = null;
                } catch (Throwable unused) {
                    file = null;
                    fileInputStream2 = fileInputStream;
                    r6 = file;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                            if (r6 != 0) {
                                r6.close();
                            }
                        } catch (IOException e11) {
                            e11.printStackTrace();
                            return stringBuffer.toString();
                        }
                    } else if (r6 != 0) {
                        r6.close();
                    }
                    return stringBuffer.toString();
                }
            } catch (Throwable unused2) {
            }
        } catch (FileNotFoundException e12) {
            fileInputStream = null;
            e3 = e12;
            bufferedReader = null;
        } catch (IOException e13) {
            fileInputStream = null;
            e2 = e13;
            bufferedReader = null;
        } catch (Throwable unused3) {
            r6 = 0;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
                if (r6 != 0) {
                    r6.close();
                }
            } else if (r6 != 0) {
                r6.close();
            }
            return stringBuffer.toString();
        }
    }

    public static void renameFile(String str, String str2) {
        new File(str).renameTo(new File(str2));
    }

    public static String writeSelfJavaLog(Context context, SdkInfo sdkInfo, Thread thread, Throwable th, String str, String str2, String str3, Map<String, String> map) {
        String absolutePath = new File(context.getCacheDir(), "crash/".concat(String.valueOf(str3))).getAbsolutePath();
        createFileIfUnExist(absolutePath);
        long jMaxMemory = Runtime.getRuntime().maxMemory();
        String strJoin = Build.VERSION.SDK_INT >= 21 ? TextUtils.join(",", Build.SUPPORTED_ABIS) : Build.CPU_ABI;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(absolutePath);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
            outputStreamWriter.append((CharSequence) fillContent(context, str, strJoin, str2, jMaxMemory, sdkInfo, str3, map, thread, th));
            outputStreamWriter.close();
            fileOutputStream.close();
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        return absolutePath;
    }
}
