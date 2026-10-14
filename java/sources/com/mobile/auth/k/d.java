package com.mobile.auth.k;

import android.content.Context;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.mucang.android.core.api.upload.FileUploadApi;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.BuildConfig;
import com.tencent.connect.common.Constants;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONException;
import org.json.JSONObject;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Network f13490a;
    private String b;
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13491d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13492e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.cmic.sso.sdk.a f13493f;

    class a implements z.b {
        a() {
        }

        @Override // com.mobile.auth.k.z.b
        public void a(Network network) {
            d.this.f13490a = network;
            f.b("HttpUtils", "onAvailable");
        }
    }

    public interface b {
        void a(String str, String str2);

        void a(String str, String str2, String str3);
    }

    private void a(com.mobile.auth.h.c cVar, com.cmic.sso.sdk.a aVar) {
        String strA = x.a(true);
        String strA2 = x.a(true, "1".equals(aVar.a("operatorType", "")));
        aVar.b("ipv4_list", strA);
        aVar.b("ipv6_list", strA2);
        com.mobile.auth.h.c.a aVarB = cVar.b();
        if (!aVar.a("isCloseIpv4", false)) {
            aVarB.b(strA);
        }
        if (!aVar.a("isCloseIpv6", false)) {
            aVarB.c(strA2);
        }
        aVarB.u(aVarB.v(aVar.c("appkey")));
        cVar.a(aVarB);
    }

    private void a(String str, int i, b bVar, HttpURLConnection httpURLConnection, Network network, String str2, String str3, String str4) throws Throwable {
        String str5;
        String str6;
        String str7;
        com.cmic.sso.sdk.a aVar;
        String str8;
        String str9;
        String str10;
        String str11 = str;
        try {
            if (i == 302 || i == 301) {
                String strA = this.f13493f.a("interfacecode", "");
                this.f13493f.b("interfacecode", strA + i + VoiceWakeuperAidl.PARAMS_SEPARATE);
                String headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                f.b("HttpUtils", "Location head =" + headerField);
                if (this.f13492e == null) {
                    this.f13492e = httpURLConnection.getHeaderField("pplocation");
                }
                if (!TextUtils.isEmpty(headerField) && this.f13492e != null) {
                    String strA2 = this.f13493f.a("interfacetype", "");
                    if ("2".equals(this.f13493f.a("operatorType", "0"))) {
                        aVar = this.f13493f;
                        str8 = strA2 + "getUnicomMobile;";
                    } else {
                        aVar = this.f13493f;
                        str8 = strA2 + "getTelecomMobile;";
                    }
                    aVar.b("interfacetype", str8);
                    a(headerField, "", bVar, network, Constants.HTTP_POST);
                    return;
                }
                str5 = "200021";
                str6 = "数据解析异常";
                str7 = this.c;
            } else if (i != 200) {
                f.a("HttpUtils", "http response code is not 200 ---" + i);
                int i2 = this.f13491d + 1;
                this.f13491d = i2;
                if (i2 <= 3 && (!i.a(this.b) || str3.contains("logReport"))) {
                    a(str3, str2, bVar, network, str4);
                    return;
                }
                if (i != 0) {
                    if (i == Integer.valueOf("200050").intValue()) {
                        bVar.a("200050", "EOF异常", this.c);
                        return;
                    }
                    if (i == Integer.valueOf("200072").intValue()) {
                        bVar.a("200072", "ca根证书校验失败", this.c);
                        return;
                    }
                    if (i != Integer.valueOf("102507").intValue()) {
                        bVar.a("200028", TextUtils.isEmpty(str) ? "网络异常" : str11, this.c);
                        return;
                    }
                    bVar.a(i + "", str11, this.c);
                    return;
                }
                str5 = i + "";
                str6 = "请求出错";
                str7 = this.c;
            } else {
                if (TextUtils.isEmpty(this.f13492e)) {
                    bVar.a(str11, this.c);
                    return;
                }
                try {
                    f.c("HttpUtils", "异网取号结果 = " + str11);
                    JSONObject jSONObject = new JSONObject(str11);
                    String strOptString = jSONObject.optString(SpeechUtility.TAG_RESOURCE_RESULT, "0");
                    String strA3 = this.f13493f.a("interfacecode", "");
                    this.f13493f.b("interfacecode", strA3 + strOptString + VoiceWakeuperAidl.PARAMS_SEPARATE);
                    if (TextUtils.isEmpty(jSONObject.getString(SpeechUtility.TAG_RESOURCE_RESULT)) || !"0".equals(jSONObject.getString(SpeechUtility.TAG_RESOURCE_RESULT))) {
                        str9 = "取号接口失败";
                        str10 = "200039";
                        try {
                            bVar.a(str10, str9, this.c);
                        } catch (JSONException e2) {
                            e = e2;
                            com.mobile.auth.j.a.f13479a.add(e);
                            bVar.a(str10, str9, this.c);
                            return;
                        }
                    } else {
                        f.c("HttpUtils", "pplocation=" + this.f13492e);
                        String str12 = this.f13492e;
                        String strSubstring = str12.substring(str12.indexOf("?") + 1);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(strSubstring.split("=")[0], strSubstring.split("=")[1]);
                        jSONObject2.put("data", str11);
                        String str13 = this.f13492e;
                        this.f13492e = str13.substring(1, str13.lastIndexOf("?"));
                        String str14 = "http://" + this.f13493f.a().b() + "/unisdk/" + this.f13492e;
                        String strA4 = this.f13493f.a("interfacetype", "");
                        this.f13493f.b("interfacetype", strA4 + "getNewTelecomPhoneNumberNotify;");
                        this.f13492e = null;
                        f.c("HttpUtils", "location" + str14);
                        a(str14, jSONObject2.toString(), bVar, network, Constants.HTTP_POST);
                    }
                    return;
                } catch (JSONException e3) {
                    e = e3;
                    str9 = "取号接口失败";
                    str10 = "200039";
                }
            }
            bVar.a(str5, str6, str7);
        } catch (Exception e4) {
            com.mobile.auth.j.a.f13479a.add(e4);
            if (TextUtils.isEmpty(str)) {
                str11 = "网络异常";
            }
            bVar.a("200028", str11, this.c);
        }
    }

    private <T extends com.mobile.auth.h.f> void a(String str, T t, b bVar, String str2) throws Throwable {
        String str3;
        String string;
        Network network;
        f.b("HttpUtils", "in  wifiNetwork");
        z zVarA = z.a((Context) null);
        int i = 0;
        if (Build.VERSION.SDK_INT >= 21) {
            this.f13490a = null;
            zVarA.a(new a());
            while (this.f13490a == null) {
                i++;
                SystemClock.sleep(50L);
                f.b("HttpUtils", "waiting for newtwork");
                if (i > 60) {
                    bVar.a("200024", "数据网络切换失败", this.c);
                    return;
                }
            }
            this.c = v.a();
            if (str.contains("getPrePhonescrip")) {
                a((com.mobile.auth.h.c) t, this.f13493f);
            }
            string = t.a().toString();
            network = this.f13490a;
            a(str, string, bVar, network, str2);
        }
        z.f13514a.startUsingNetworkFeature(0, "enableHIPRI");
        while (i < 30) {
            try {
                if (z.f13514a.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                    break;
                }
                SystemClock.sleep(1000L);
                i++;
            } catch (Exception e2) {
                com.mobile.auth.j.a.f13479a.add(e2);
                str3 = "check hipri failed";
            }
        }
        boolean zRequestRouteToHost = z.f13514a.requestRouteToHost(5, z.a(z.b(str)));
        f.a("HttpUtils", "切换数据网络结果 >>> " + zRequestRouteToHost);
        if (!zRequestRouteToHost) {
            str3 = "切换网络失败or无数据网络";
            f.a("HttpUtils", str3);
            bVar.a("200024", "数据网络切换失败", this.c);
            return;
        }
        f.a("HttpUtils", "切换网络成功");
        this.c = v.a();
        if (str.contains("getPrePhonescrip")) {
            a((com.mobile.auth.h.c) t, this.f13493f);
        }
        string = t.a().toString();
        network = null;
        a(str, string, bVar, network, str2);
    }

    /* JADX WARN: Code duplicated, block: B:108:0x021d A[Catch: IOException -> 0x0219, TRY_LEAVE, TryCatch #0 {IOException -> 0x0219, blocks: (B:104:0x0215, B:108:0x021d), top: B:112:0x0215 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0215 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x01d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0196 A[Catch: all -> 0x020f, TryCatch #10 {all -> 0x020f, blocks: (B:75:0x018a, B:77:0x0196, B:78:0x01b4, B:80:0x01b8, B:91:0x01f5), top: B:124:0x018a }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01b8 A[Catch: all -> 0x020f, TRY_LEAVE, TryCatch #10 {all -> 0x020f, blocks: (B:75:0x018a, B:77:0x0196, B:78:0x01b4, B:80:0x01b8, B:91:0x01f5), top: B:124:0x018a }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01d9 A[Catch: IOException -> 0x01d5, TRY_LEAVE, TryCatch #5 {IOException -> 0x01d5, blocks: (B:82:0x01d1, B:86:0x01d9), top: B:118:0x01d1 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:97:0x0202 A[Catch: IOException -> 0x01fe, TRY_LEAVE, TryCatch #9 {IOException -> 0x01fe, blocks: (B:93:0x01fa, B:97:0x0202), top: B:122:0x01fa }] */
    private void a(String str, String str2, b bVar, Network network, String str3) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        DataOutputStream dataOutputStream;
        HttpURLConnection httpURLConnection;
        String str4;
        DataOutputStream dataOutputStream2;
        if (i.a(this.b) && !str.contains("logReport") && !str.contains("Config")) {
            return;
        }
        DataOutputStream dataOutputStream3 = null;
        try {
            try {
                f.a("HttpUtils", "try " + this.f13491d + " http reqeust, url: " + str);
                URL url = new URL(str);
                if (Build.VERSION.SDK_INT < 21 || network == null) {
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                    str4 = "is network null?为空";
                } else {
                    httpURLConnection = (HttpURLConnection) network.openConnection(url);
                    str4 = "is network null?不为空";
                }
                f.c("HttpUtils", str4);
                if (str.startsWith("https")) {
                    a(httpURLConnection, this.f13493f, str);
                }
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(Videoio.CAP_PROP_IMAGES_LAST);
                httpURLConnection.addRequestProperty("traceId", this.b);
                com.cmic.sso.sdk.a aVar = this.f13493f;
                if (aVar != null) {
                    httpURLConnection.addRequestProperty("appid", aVar.a("appid", ""));
                    httpURLConnection.addRequestProperty("interfaceVersion", this.f13493f.a("interfaceVersion", ""));
                }
                httpURLConnection.addRequestProperty("sdkVersion", BuildConfig.CMCC_SDK_VERSION);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, FileUploadApi.TYPE_APPLICATION_JSON);
                if (str.contains("preGetMobile")) {
                    httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
                }
                if (str.contains("getPrePhonescrip") || str.contains("getPrePhonescripForHttps")) {
                    httpURLConnection.setRequestProperty("defendEOF", "1");
                }
                httpURLConnection.setRequestProperty("Charset", "UTF-8");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setInstanceFollowRedirects(false);
                if (str3.equals(Constants.HTTP_POST)) {
                    httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                    httpURLConnection.setDoOutput(true);
                    dataOutputStream2 = new DataOutputStream(httpURLConnection.getOutputStream());
                    try {
                        byte[] bytes = str2.getBytes("UTF-8");
                        dataOutputStream2.write(bytes, 0, bytes.length);
                        dataOutputStream2.flush();
                    } catch (Exception e2) {
                        e = e2;
                        dataOutputStream = dataOutputStream2;
                        bufferedReader = null;
                        try {
                            e.printStackTrace();
                            com.mobile.auth.j.a.f13479a.add(e);
                            if (e instanceof SSLHandshakeException) {
                                this.f13493f.b("is_need_to_get_cert", true);
                                a(null, Integer.parseInt("200072"), bVar, null, network, str2, str, str3);
                            }
                            if (e instanceof EOFException) {
                                a(null, Integer.parseInt("200050"), bVar, null, network, str2, str, str3);
                                if (dataOutputStream != null) {
                                    try {
                                        dataOutputStream.close();
                                    } catch (IOException e3) {
                                        com.mobile.auth.j.a.f13479a.add(e3);
                                        e3.printStackTrace();
                                        return;
                                    }
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                    return;
                                }
                                return;
                            }
                            a(null, -1, bVar, null, network, str2, str, str3);
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                } catch (IOException e4) {
                                    com.mobile.auth.j.a.f13479a.add(e4);
                                    e4.printStackTrace();
                                    return;
                                }
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream3 = dataOutputStream;
                            if (dataOutputStream3 != null) {
                                try {
                                    dataOutputStream3.close();
                                } catch (IOException e5) {
                                    com.mobile.auth.j.a.f13479a.add(e5);
                                    e5.printStackTrace();
                                    throw th;
                                }
                            }
                            if (bufferedReader == null) {
                                throw th;
                            }
                            bufferedReader.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                        dataOutputStream3 = dataOutputStream2;
                        th = th;
                        if (dataOutputStream3 != null) {
                            dataOutputStream3.close();
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        bufferedReader.close();
                        throw th;
                    }
                } else {
                    try {
                        if (str3.equals(Constants.HTTP_GET)) {
                            httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                        }
                        dataOutputStream2 = null;
                    } catch (Exception e6) {
                        e = e6;
                        bufferedReader = null;
                        dataOutputStream = null;
                        e.printStackTrace();
                        com.mobile.auth.j.a.f13479a.add(e);
                        if (e instanceof SSLHandshakeException) {
                            this.f13493f.b("is_need_to_get_cert", true);
                            a(null, Integer.parseInt("200072"), bVar, null, network, str2, str, str3);
                        }
                        if (e instanceof EOFException) {
                            a(null, Integer.parseInt("200050"), bVar, null, network, str2, str, str3);
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                                return;
                            }
                            return;
                        }
                        a(null, -1, bVar, null, network, str2, str, str3);
                        if (dataOutputStream != null) {
                            dataOutputStream.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                    }
                }
                int responseCode = httpURLConnection.getResponseCode();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                try {
                    StringBuilder sb = new StringBuilder("");
                    while (true) {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(new String(line.getBytes(), "utf-8"));
                        }
                    }
                    String string = sb.toString();
                    if (dataOutputStream2 != null) {
                        try {
                            dataOutputStream2.close();
                        } catch (IOException e7) {
                            com.mobile.auth.j.a.f13479a.add(e7);
                            e7.printStackTrace();
                        }
                    }
                    bufferedReader2.close();
                    a(string, responseCode, bVar, httpURLConnection, network, str2, str, str3);
                } catch (Exception e8) {
                    e = e8;
                    dataOutputStream = dataOutputStream2;
                    bufferedReader = bufferedReader2;
                    e.printStackTrace();
                    com.mobile.auth.j.a.f13479a.add(e);
                    if (e instanceof SSLHandshakeException) {
                        this.f13493f.b("is_need_to_get_cert", true);
                        a(null, Integer.parseInt("200072"), bVar, null, network, str2, str, str3);
                    }
                    if (e instanceof EOFException) {
                        a(null, Integer.parseInt("200050"), bVar, null, network, str2, str, str3);
                        if (dataOutputStream != null) {
                            dataOutputStream.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                            return;
                        }
                        return;
                    }
                    a(null, -1, bVar, null, network, str2, str, str3);
                    if (dataOutputStream != null) {
                        dataOutputStream.close();
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                } catch (Throwable th4) {
                    th = th4;
                    dataOutputStream3 = dataOutputStream2;
                    bufferedReader = bufferedReader2;
                    th = th;
                    if (dataOutputStream3 != null) {
                        dataOutputStream3.close();
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    bufferedReader.close();
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
        }
    }

    private void a(HttpURLConnection httpURLConnection, com.cmic.sso.sdk.a aVar, String str) {
        if (!(httpURLConnection instanceof HttpsURLConnection) || aVar.a("CLOSE_CERT_VERIFY", true) || str.contains("uniConfig") || str.contains("logReport")) {
            return;
        }
        f.b("HttpUtils", "开启证书校验");
        String strA = this.f13493f.a().a();
        f.b("HttpUtils", "cer: " + strA);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(new com.cmic.sso.sdk.c(strA).a().getSocketFactory());
    }

    public <T extends com.mobile.auth.h.f> void a(String str, T t, boolean z, b bVar, String str2, String str3, com.cmic.sso.sdk.a aVar) {
        this.f13493f = aVar;
        this.b = str3;
        if (!i.a(str3) || str.contains("logReport") || str.contains("Config")) {
            f.c("HttpUtils", "使用wifi下取号？？？？？？？" + z);
            if (z) {
                a(str, t, bVar, str2);
                return;
            }
            if (str.contains("getPrePhonescrip")) {
                a((com.mobile.auth.h.c) t, aVar);
            }
            a(str, t.a().toString(), bVar, null, str2);
        }
    }
}
