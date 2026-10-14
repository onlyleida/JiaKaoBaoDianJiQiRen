package com.mobile.auth.c;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static String a(Context context) {
        InputStreamReader inputStreamReader;
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        try {
            File fileC = c(context);
            StringBuilder sb = new StringBuilder();
            if (fileC == null || !fileC.exists()) {
                return "";
            }
            try {
                fileInputStream = new FileInputStream(fileC);
                try {
                    inputStreamReader = new InputStreamReader(fileInputStream);
                    try {
                        bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line != null) {
                                    sb.append(line);
                                } else {
                                    try {
                                        break;
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    th.printStackTrace();
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e3) {
                                            e3.printStackTrace();
                                        }
                                    }
                                    if (inputStreamReader != null) {
                                        try {
                                            inputStreamReader.close();
                                        } catch (Exception e4) {
                                            e4.printStackTrace();
                                        }
                                    }
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (Exception e5) {
                                            e = e5;
                                            e.printStackTrace();
                                        }
                                    }
                                } catch (Throwable th2) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e6) {
                                            e6.printStackTrace();
                                        }
                                    }
                                    if (inputStreamReader != null) {
                                        try {
                                            inputStreamReader.close();
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                        }
                                    }
                                    if (fileInputStream == null) {
                                        throw th2;
                                    }
                                    try {
                                        fileInputStream.close();
                                        throw th2;
                                    } catch (Exception e8) {
                                        e8.printStackTrace();
                                        throw th2;
                                    }
                                }
                            }
                        }
                        bufferedReader.close();
                        try {
                            inputStreamReader.close();
                        } catch (Exception e9) {
                            e9.printStackTrace();
                        }
                        try {
                            fileInputStream.close();
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamReader = null;
                    bufferedReader = null;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = null;
                fileInputStream = null;
                bufferedReader = null;
            }
            return sb.toString();
        } catch (Throwable th6) {
            try {
                com.mobile.auth.gatewayauth.a.a(th6);
                return null;
            } catch (Throwable th7) {
                com.mobile.auth.gatewayauth.a.a(th7);
                return null;
            }
        }
    }

    public static void a(Context context, String str) {
        try {
            File fileC = c(context);
            if (fileC == null || !fileC.exists()) {
                a(b(context), str);
            } else {
                a(fileC, str);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v9 */
    private static void a(File file, String str) {
        FileWriter fileWriter;
        if (file != null) {
            try {
                if (file.exists()) {
                    ?? IsEmpty = 0;
                    IsEmpty = 0;
                    IsEmpty = 0;
                    IsEmpty = 0;
                    try {
                        try {
                            fileWriter = new FileWriter(file, false);
                            try {
                                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                                try {
                                    IsEmpty = TextUtils.isEmpty(str);
                                    if (IsEmpty != 0) {
                                        str = "";
                                    }
                                    bufferedWriter.write(str);
                                    bufferedWriter.flush();
                                    try {
                                        bufferedWriter.close();
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                    try {
                                        fileWriter.close();
                                    } catch (Exception e3) {
                                        e = e3;
                                        e.printStackTrace();
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    IsEmpty = bufferedWriter;
                                    e.printStackTrace();
                                    if (IsEmpty != 0) {
                                        try {
                                            IsEmpty.close();
                                        } catch (Exception e5) {
                                            e5.printStackTrace();
                                        }
                                    }
                                    if (fileWriter != null) {
                                        try {
                                            fileWriter.close();
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    IsEmpty = bufferedWriter;
                                    if (IsEmpty != 0) {
                                        try {
                                            IsEmpty.close();
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                        }
                                    }
                                    if (fileWriter == null) {
                                        throw th;
                                    }
                                    try {
                                        fileWriter.close();
                                        throw th;
                                    } catch (Exception e8) {
                                        e8.printStackTrace();
                                        throw th;
                                    }
                                }
                            } catch (Exception e9) {
                                e = e9;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        fileWriter = null;
                    } catch (Throwable th3) {
                        th = th3;
                        fileWriter = null;
                    }
                }
            } catch (Throwable th4) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th4);
                } catch (Throwable th5) {
                    com.mobile.auth.gatewayauth.a.a(th5);
                }
            }
        }
    }

    private static File b(Context context) {
        if (context != null) {
            try {
                try {
                    File file = new File(context.getFilesDir() + "/eAccount/Log/");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file2 = new File(file, "ipa_ol.ds");
                    if (file2.exists()) {
                        file2.delete();
                    }
                    file2.createNewFile();
                    return file2;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return null;
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
        return null;
    }

    private static File c(Context context) {
        try {
            if (context != null) {
                try {
                    File file = new File(context.getFilesDir() + "/eAccount/Log/");
                    if (!file.exists()) {
                        return null;
                    }
                    File file2 = new File(file, "ipa_ol.ds");
                    if (file2.exists()) {
                        return file2;
                    }
                    return null;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
