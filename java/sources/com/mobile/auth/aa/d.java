package com.mobile.auth.aa;

import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13082a = "";

    /* JADX WARN: Code duplicated, block: B:26:0x003e A[Catch: all -> 0x003a, Exception -> 0x004a, TRY_LEAVE, TryCatch #1 {Exception -> 0x004a, blocks: (B:22:0x0036, B:26:0x003e), top: B:42:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0053 A[Catch: Exception -> 0x0056, TRY_LEAVE, TryCatch #5 {Exception -> 0x0056, blocks: (B:35:0x004e, B:37:0x0053), top: B:50:0x004e }] */
    private String a(InputStream inputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i = inputStream.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                            th = th;
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } catch (Exception unused) {
                                }
                            } else if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                        String str = new String(byteArrayOutputStream.toByteArray());
                        try {
                            byteArrayOutputStream.close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (Exception unused2) {
                        }
                        return str;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } catch (Exception unused3) {
                                return null;
                            }
                        } else if (inputStream != null) {
                            inputStream.close();
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                } catch (Throwable th4) {
                    com.mobile.auth.gatewayauth.a.a(th4);
                    return null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            byteArrayOutputStream = null;
        } catch (Throwable th5) {
            byteArrayOutputStream = null;
            th = th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01a7  */
    public String a(String str, HashMap<String, String> map, Network network) throws Throwable {
        HttpsURLConnection httpsURLConnection;
        String[] strArrSplit;
        String str2;
        HttpsURLConnection httpsURLConnection2 = null;
        try {
            try {
                com.mobile.auth.ab.d.c(str);
                URL url = new URL(str);
                HttpsURLConnection httpsURLConnection3 = (HttpsURLConnection) ((network == null || Build.VERSION.SDK_INT < 21) ? url.openConnection() : network.openConnection(url));
                try {
                    httpsURLConnection3.setDoInput(true);
                    httpsURLConnection3.setDoOutput(false);
                    httpsURLConnection3.setUseCaches(false);
                    httpsURLConnection3.setInstanceFollowRedirects(false);
                    httpsURLConnection3.setReadTimeout(5000);
                    httpsURLConnection3.setConnectTimeout(5000);
                    httpsURLConnection3.setRequestMethod(Constants.HTTP_GET);
                    httpsURLConnection3.setHostnameVerifier(new HostnameVerifier() { // from class: com.mobile.auth.aa.d.1
                        @Override // javax.net.ssl.HostnameVerifier
                        public boolean verify(String str3, SSLSession sSLSession) {
                            try {
                                HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
                                boolean z = defaultHostnameVerifier.verify("wostore.cn", sSLSession) || defaultHostnameVerifier.verify("10010.com", sSLSession);
                                com.mobile.auth.ab.d.c("Hostname:" + str3 + " verify:" + z);
                                return z;
                            } catch (Throwable th) {
                                try {
                                    com.mobile.auth.gatewayauth.a.a(th);
                                    return false;
                                } catch (Throwable th2) {
                                    com.mobile.auth.gatewayauth.a.a(th2);
                                    return false;
                                }
                            }
                        }
                    });
                    if (map != null) {
                        for (String str3 : map.keySet()) {
                            httpsURLConnection3.setRequestProperty(str3, map.get(str3));
                        }
                    }
                    httpsURLConnection3.addRequestProperty(HttpHeaders.CONNECTION, "keep-alive");
                    httpsURLConnection3.connect();
                    if (httpsURLConnection3.getResponseCode() == 200) {
                        String strA = a(httpsURLConnection3.getInputStream());
                        if (httpsURLConnection3 != null) {
                            httpsURLConnection3.disconnect();
                        }
                        return strA;
                    }
                    if (httpsURLConnection3.getResponseCode() == 302) {
                        String headerField = httpsURLConnection3.getHeaderField(HttpHeaders.LOCATION);
                        if (!TextUtils.isEmpty(headerField)) {
                            String[] strArrSplit2 = headerField.split("\\?");
                            if (strArrSplit2 != null && strArrSplit2.length == 2 && (strArrSplit = strArrSplit2[1].split("&")) != null) {
                                for (int i = 0; i < strArrSplit.length; i++) {
                                    if (strArrSplit[i].contains("messageid=")) {
                                        String[] strArrSplit3 = strArrSplit[i].split("=");
                                        if (strArrSplit3.length == 2) {
                                            this.f13082a = strArrSplit3[1];
                                        }
                                    }
                                    if (strArrSplit[i].contains("err_code=")) {
                                        String[] strArrSplit4 = strArrSplit[i].split("=");
                                        if (strArrSplit4.length == 2) {
                                            String str4 = strArrSplit4[1];
                                            JSONObject jSONObject = new JSONObject();
                                            jSONObject.put("code", str4);
                                            if (str4.equals("-1")) {
                                                str2 = "(-1)ret_url长度超限(最大1024)";
                                            } else if (str4.equals("-2")) {
                                                str2 = "(-2)公网IP校验错误(未匹配到省分信息)";
                                            } else if (str4.equals("-4")) {
                                                str2 = "(-4)缺失APPID";
                                            } else if (str4.equals("-5")) {
                                                str2 = "(-5)当前省分暂不支持取号";
                                            } else if (str4.equals("-10")) {
                                                str2 = "(-10)系统内部错误";
                                            } else if (str4.equals("-11")) {
                                                str2 = "(-11)私网IP校验错误";
                                            } else {
                                                str2 = "(" + str4 + ")未知错误";
                                            }
                                            jSONObject.put(SocialConstants.PARAM_SEND_MSG, str2);
                                            jSONObject.put("data", this.f13082a);
                                            String string = jSONObject.toString();
                                            if (httpsURLConnection3 != null) {
                                                httpsURLConnection3.disconnect();
                                            }
                                            return string;
                                        }
                                    }
                                }
                            }
                            if (headerField.toLowerCase().startsWith("https")) {
                                String strA2 = a(headerField, null, network);
                                if (httpsURLConnection3 != null) {
                                    httpsURLConnection3.disconnect();
                                }
                                return strA2;
                            }
                            String strB = b(headerField, null, network);
                            if (httpsURLConnection3 != null) {
                                httpsURLConnection3.disconnect();
                            }
                            return strB;
                        }
                    }
                    if (httpsURLConnection3 != null) {
                        httpsURLConnection3.disconnect();
                    }
                    return null;
                } catch (Exception e2) {
                    httpsURLConnection = httpsURLConnection3;
                    e = e2;
                    try {
                        e.printStackTrace();
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        httpsURLConnection2 = httpsURLConnection;
                        if (httpsURLConnection2 != null) {
                            httpsURLConnection2.disconnect();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    httpsURLConnection2 = httpsURLConnection3;
                    th = th2;
                    if (httpsURLConnection2 != null) {
                        httpsURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                } catch (Throwable th4) {
                    com.mobile.auth.gatewayauth.a.a(th4);
                    return null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            httpsURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x019f  */
    public String b(String str, HashMap<String, String> map, Network network) throws Throwable {
        HttpURLConnection httpURLConnection;
        String[] strArrSplit;
        String str2;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                com.mobile.auth.ab.d.c(str);
                URL url = new URL(str);
                HttpURLConnection httpURLConnection3 = (HttpURLConnection) ((network == null || Build.VERSION.SDK_INT < 21) ? url.openConnection() : network.openConnection(url));
                try {
                    httpURLConnection3.setDoInput(true);
                    httpURLConnection3.setDoOutput(false);
                    httpURLConnection3.setUseCaches(false);
                    httpURLConnection3.setInstanceFollowRedirects(false);
                    httpURLConnection3.setReadTimeout(5000);
                    httpURLConnection3.setConnectTimeout(5000);
                    httpURLConnection3.setRequestMethod(Constants.HTTP_GET);
                    if (map != null) {
                        for (String str3 : map.keySet()) {
                            httpURLConnection3.setRequestProperty(str3, map.get(str3));
                        }
                    }
                    httpURLConnection3.addRequestProperty(HttpHeaders.CONNECTION, "keep-alive");
                    httpURLConnection3.connect();
                    if (httpURLConnection3.getResponseCode() == 200) {
                        String strA = a(httpURLConnection3.getInputStream());
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                        return strA;
                    }
                    if (httpURLConnection3.getResponseCode() == 302) {
                        String headerField = httpURLConnection3.getHeaderField(HttpHeaders.LOCATION);
                        if (!TextUtils.isEmpty(headerField)) {
                            String[] strArrSplit2 = headerField.split("\\?");
                            if (strArrSplit2 != null && strArrSplit2.length == 2 && (strArrSplit = strArrSplit2[1].split("&")) != null) {
                                for (int i = 0; i < strArrSplit.length; i++) {
                                    if (strArrSplit[i].contains("messageid=")) {
                                        String[] strArrSplit3 = strArrSplit[i].split("=");
                                        if (strArrSplit3.length == 2) {
                                            this.f13082a = strArrSplit3[1];
                                        }
                                    }
                                    if (strArrSplit[i].contains("err_code=")) {
                                        String[] strArrSplit4 = strArrSplit[i].split("=");
                                        if (strArrSplit4.length == 2) {
                                            String str4 = strArrSplit4[1];
                                            JSONObject jSONObject = new JSONObject();
                                            jSONObject.put("code", str4);
                                            if (str4.equals("-1")) {
                                                str2 = "(-1)ret_url长度超限(最大1024)";
                                            } else if (str4.equals("-2")) {
                                                str2 = "(-2)公网IP校验错误(未匹配到省分信息)";
                                            } else if (str4.equals("-4")) {
                                                str2 = "(-4)缺失APPID";
                                            } else if (str4.equals("-5")) {
                                                str2 = "(-5)当前省分暂不支持取号";
                                            } else if (str4.equals("-10")) {
                                                str2 = "(-10)系统内部错误";
                                            } else if (str4.equals("-11")) {
                                                str2 = "(-11)私网IP校验错误";
                                            } else {
                                                str2 = "(" + str4 + ")未知错误";
                                            }
                                            jSONObject.put(SocialConstants.PARAM_SEND_MSG, str2);
                                            jSONObject.put("data", this.f13082a);
                                            String string = jSONObject.toString();
                                            if (httpURLConnection3 != null) {
                                                httpURLConnection3.disconnect();
                                            }
                                            return string;
                                        }
                                    }
                                }
                            }
                            if (headerField.toLowerCase().startsWith("https")) {
                                String strA2 = a(headerField, null, network);
                                if (httpURLConnection3 != null) {
                                    httpURLConnection3.disconnect();
                                }
                                return strA2;
                            }
                            String strB = b(headerField, null, network);
                            if (httpURLConnection3 != null) {
                                httpURLConnection3.disconnect();
                            }
                            return strB;
                        }
                    }
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                    return null;
                } catch (Exception e2) {
                    httpURLConnection = httpURLConnection3;
                    e = e2;
                    try {
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection2 = httpURLConnection;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    httpURLConnection2 = httpURLConnection3;
                    th = th2;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                } catch (Throwable th4) {
                    com.mobile.auth.gatewayauth.a.a(th4);
                    return null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
