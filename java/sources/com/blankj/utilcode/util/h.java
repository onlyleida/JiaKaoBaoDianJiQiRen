package com.blankj.utilcode.util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f11615a = System.getProperty("line.separator");

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11616a;
        public String b;
        public String c;

        public a(int i, String str, String str2) {
            this.f11616a = i;
            this.b = str;
            this.c = str2;
        }

        public String toString() {
            return "result: " + this.f11616a + "\nsuccessMsg: " + this.b + "\nerrorMsg: " + this.c;
        }
    }

    public static a a(String str, boolean z) {
        return b(new String[]{str}, z, true);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x013d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0146  */
    /* JADX WARN: Code duplicated, block: B:108:0x0148  */
    /* JADX WARN: Code duplicated, block: B:111:0x014f  */
    /* JADX WARN: Code duplicated, block: B:131:0x0178  */
    /* JADX WARN: Code duplicated, block: B:135:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x016e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x0129 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0164 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x015a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static a b(String[] strArr, boolean z, boolean z2) throws Throwable {
        Process processExec;
        ?? bufferedReader;
        StringBuilder sb;
        ?? bufferedReader2;
        StringBuilder sb2;
        StringBuilder sb3;
        StringBuilder sb4;
        String string;
        ?? r6;
        int iWaitFor = -1;
        if (strArr == null || strArr.length == 0) {
            return new a(-1, "", "");
        }
        DataOutputStream dataOutputStream = null;
        ?? r3 = 0;
        dataOutputStream = null;
        try {
            processExec = Runtime.getRuntime().exec(z ? "su" : "sh");
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(processExec.getOutputStream());
                try {
                    try {
                        for (String str : strArr) {
                            if (str != null) {
                                dataOutputStream2.write(str.getBytes());
                                dataOutputStream2.writeBytes(f11615a);
                                dataOutputStream2.flush();
                            }
                        }
                        dataOutputStream2.writeBytes("exit" + f11615a);
                        dataOutputStream2.flush();
                        iWaitFor = processExec.waitFor();
                        if (z2) {
                            sb3 = new StringBuilder();
                            try {
                                sb4 = new StringBuilder();
                                try {
                                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream(), "UTF-8"));
                                    try {
                                        bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getErrorStream(), "UTF-8"));
                                        try {
                                            String line = bufferedReader.readLine();
                                            if (line != null) {
                                                sb3.append(line);
                                                while (true) {
                                                    String line2 = bufferedReader.readLine();
                                                    if (line2 == null) {
                                                        break;
                                                    }
                                                    sb3.append(f11615a);
                                                    sb3.append(line2);
                                                }
                                            }
                                            String line3 = bufferedReader2.readLine();
                                            if (line3 != null) {
                                                sb4.append(line3);
                                                while (true) {
                                                    String line4 = bufferedReader2.readLine();
                                                    if (line4 == null) {
                                                        break;
                                                    }
                                                    sb4.append(f11615a);
                                                    sb4.append(line4);
                                                }
                                            }
                                            r3 = bufferedReader;
                                            r6 = bufferedReader2;
                                        } catch (Exception e2) {
                                            e = e2;
                                            dataOutputStream = dataOutputStream2;
                                            sb = sb3;
                                            e = e;
                                            sb2 = sb4;
                                            bufferedReader = bufferedReader;
                                            bufferedReader2 = bufferedReader2;
                                            try {
                                                e.printStackTrace();
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                    } catch (IOException e3) {
                                                        e3.printStackTrace();
                                                    }
                                                }
                                                if (bufferedReader != 0) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (IOException e4) {
                                                        e4.printStackTrace();
                                                    }
                                                }
                                                if (bufferedReader2 != 0) {
                                                    try {
                                                        bufferedReader2.close();
                                                    } catch (IOException e5) {
                                                        e5.printStackTrace();
                                                    }
                                                }
                                                if (processExec != null) {
                                                    processExec.destroy();
                                                }
                                                sb3 = sb;
                                                sb4 = sb2;
                                            } catch (Throwable th) {
                                                th = th;
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                    } catch (IOException e6) {
                                                        e6.printStackTrace();
                                                    }
                                                }
                                                if (bufferedReader != 0) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (IOException e7) {
                                                        e7.printStackTrace();
                                                    }
                                                }
                                                if (bufferedReader2 != 0) {
                                                    try {
                                                        bufferedReader2.close();
                                                    } catch (IOException e8) {
                                                        e8.printStackTrace();
                                                    }
                                                }
                                                if (processExec == null) {
                                                    throw th;
                                                }
                                                processExec.destroy();
                                                throw th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            dataOutputStream = dataOutputStream2;
                                            if (dataOutputStream != null) {
                                                dataOutputStream.close();
                                            }
                                            if (bufferedReader != 0) {
                                                bufferedReader.close();
                                            }
                                            if (bufferedReader2 != 0) {
                                                bufferedReader2.close();
                                            }
                                            if (processExec == null) {
                                                throw th;
                                            }
                                            processExec.destroy();
                                            throw th;
                                        }
                                    } catch (Exception e9) {
                                        e = e9;
                                        bufferedReader2 = 0;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        bufferedReader2 = 0;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    bufferedReader = 0;
                                    bufferedReader2 = 0;
                                }
                            } catch (Exception e11) {
                                sb2 = null;
                                bufferedReader = 0;
                                bufferedReader2 = 0;
                                dataOutputStream = dataOutputStream2;
                                sb = sb3;
                                e = e11;
                            }
                        } else {
                            sb3 = null;
                            sb4 = null;
                            r6 = 0;
                        }
                        try {
                            dataOutputStream2.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                        if (r3 != 0) {
                            try {
                                r3.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (r6 != 0) {
                            try {
                                r6.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                        }
                        if (processExec != null) {
                            processExec.destroy();
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedReader = 0;
                        bufferedReader2 = 0;
                    }
                } catch (Exception e15) {
                    e = e15;
                    sb = null;
                    sb2 = null;
                    bufferedReader = 0;
                    bufferedReader2 = 0;
                    dataOutputStream = dataOutputStream2;
                }
            } catch (Exception e16) {
                e = e16;
                sb = null;
                sb2 = sb;
                StringBuilder sb5 = sb2;
                bufferedReader2 = sb5;
                bufferedReader = sb5;
                e.printStackTrace();
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                if (bufferedReader != 0) {
                    bufferedReader.close();
                }
                if (bufferedReader2 != 0) {
                    bufferedReader2.close();
                }
                if (processExec != null) {
                    processExec.destroy();
                }
                sb3 = sb;
                sb4 = sb2;
                if (sb3 == null) {
                    string = "";
                } else {
                    string = sb3.toString();
                }
                return new a(iWaitFor, string, sb4 != null ? sb4.toString() : "");
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = 0;
                bufferedReader2 = bufferedReader;
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                if (bufferedReader != 0) {
                    bufferedReader.close();
                }
                if (bufferedReader2 != 0) {
                    bufferedReader2.close();
                }
                if (processExec == null) {
                    throw th;
                }
                processExec.destroy();
                throw th;
            }
        } catch (Exception e17) {
            e = e17;
            processExec = null;
            sb = null;
        } catch (Throwable th6) {
            th = th6;
            processExec = null;
            bufferedReader = 0;
        }
        if (sb3 == null) {
            string = "";
        } else {
            string = sb3.toString();
        }
        return new a(iWaitFor, string, sb4 != null ? sb4.toString() : "");
    }
}
