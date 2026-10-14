package com.mobile.auth.c;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    /* JADX WARN: Code duplicated, block: B:28:0x009c A[Catch: Exception -> 0x0098, all -> 0x00cb, TRY_LEAVE, TryCatch #5 {Exception -> 0x0098, blocks: (B:24:0x0094, B:28:0x009c), top: B:68:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b4 A[Catch: Exception -> 0x00b0, all -> 0x00cb, TRY_LEAVE, TryCatch #1 {Exception -> 0x00b0, blocks: (B:36:0x00ac, B:40:0x00b4), top: B:60:0x00ac }] */
    public static String a(Context context, String str, String str2) {
        InputStream inputStream;
        BufferedReader bufferedReader;
        InputStream inputStream2;
        String string = "";
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestProperty("accept", "*/*");
                httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.addRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");
                if (TextUtils.isEmpty(str2)) {
                    httpURLConnection.connect();
                } else {
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream()));
                    dataOutputStream.write(str2.getBytes("UTF-8"));
                    dataOutputStream.flush();
                    dataOutputStream.close();
                }
                if (httpURLConnection.getResponseCode() == 200) {
                    inputStream2 = httpURLConnection.getInputStream();
                    try {
                        StringBuilder sb = new StringBuilder();
                        bufferedReader = new BufferedReader(new InputStreamReader(inputStream2));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb.append(line);
                                sb.append("\n");
                            } catch (Throwable th) {
                                th = th;
                                Throwable th2 = th;
                                inputStream = inputStream2;
                                th = th2;
                                try {
                                    th.printStackTrace();
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                        } catch (Exception e2) {
                                            e = e2;
                                            e.printStackTrace();
                                        }
                                    } else if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    return string;
                                } catch (Throwable th3) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e3) {
                                            e3.printStackTrace();
                                            throw th3;
                                        }
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    throw th3;
                                }
                            }
                            e.printStackTrace();
                            return string;
                        }
                        string = sb.toString();
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedReader = null;
                    }
                } else {
                    inputStream2 = null;
                    bufferedReader = null;
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                    }
                } else if (inputStream2 != null) {
                    inputStream2.close();
                }
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                bufferedReader = null;
            }
            return string;
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
}
