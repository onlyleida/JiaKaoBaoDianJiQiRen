package com.mobile.auth.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13136a = "d";

    static {
    }

    public d() {
    }

    public static String a(Context r16, String r17, Network r18) {
        int r8 = Build.VERSION.SDK_INT;
        String r10 = "";
        int r11 = com.mobile.auth.a.a.f13067d;     // Catch: Throwable -> L78
        int r12 = 3000;
        if (r11 > 0) goto L6;
        r11 = 3000;
    L6:
        int r13 = com.mobile.auth.a.a.f13068e;     // Catch: Throwable -> L78
        if (r13 <= 0) goto L98;
        r12 = r13;
    L98:
        URL r14 = new URL(r17);     // Catch: Throwable -> L51
        if (r18 == null) goto L15;
        if (r8 < 21) goto L15;
        URLConnection r15 = r18.openConnection(r14);     // Catch: Throwable -> L51
    L14:
        HttpsURLConnection r19 = (HttpsURLConnection) r15;     // Catch: Throwable -> L51
        r19.setRequestProperty("accept", "*/*");     // Catch: Throwable -> L51
        r19.setRequestProperty("connection", "Keep-Alive");     // Catch: Throwable -> L51
        r19.setRequestMethod(Constants.HTTP_GET);     // Catch: Throwable -> L51
        r19.setDoOutput(false);     // Catch: Throwable -> L51
        r19.setDoInput(true);     // Catch: Throwable -> L51
        r19.setConnectTimeout(r11);     // Catch: Throwable -> L51
        r19.setReadTimeout(r12);     // Catch: Throwable -> L51
        r19.setUseCaches(false);     // Catch: Throwable -> L51
        r19.addRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");     // Catch: Throwable -> L51
        r19.connect();     // Catch: Throwable -> L51
        if (r19.getResponseCode() != 302) goto L25;
        URL r110 = new URL(r19.getHeaderField(HttpHeaders.LOCATION));     // Catch: Throwable -> L51
        if (r18 == null) goto L22;
        if (r8 < 21) goto L22;
        URLConnection r0 = r18.openConnection(r110);     // Catch: Throwable -> L51
    L23:
        r19 = (HttpsURLConnection) r0;     // Catch: Throwable -> L51
        r19.setRequestProperty("accept", "*/*");     // Catch: Throwable -> L51
        r19.setRequestProperty("connection", "Keep-Alive");     // Catch: Throwable -> L51
        r19.setRequestMethod(Constants.HTTP_GET);     // Catch: Throwable -> L51
        r19.setDoOutput(false);     // Catch: Throwable -> L51
        r19.setDoInput(true);     // Catch: Throwable -> L51
        r19.setConnectTimeout(r11);     // Catch: Throwable -> L51
        r19.setReadTimeout(r12);     // Catch: Throwable -> L51
        r19.setUseCaches(false);     // Catch: Throwable -> L51
        r19.addRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");     // Catch: Throwable -> L51
        r19.connect();     // Catch: Throwable -> L51
    L22:
        r0 = r110.openConnection();     // Catch: Throwable -> L51
    L25:
        if (r19.getResponseCode() != 200) goto L39;
        InputStream r1 = r19.getInputStream();     // Catch: Throwable -> L51
        InputStreamReader r2 = new InputStreamReader(r1);     // Catch: Throwable -> L37
        BufferedReader r3 = new BufferedReader(r2);     // Catch: Throwable -> L35
    L96:
        String r4 = r3.readLine();     // Catch: Throwable -> L33
        if (r4 == null) goto L40;
        r10 = r10 + r4;     // Catch: Throwable -> L33
    L40:
        if (r3 != null) goto L92;
    L44:
        if (r2 == null) goto L46;
        r2.close();     // Catch: Exception -> L42 Throwable -> L78
    L46:
        if (r1 == null) goto L64;
        r1.close();     // Catch: Exception -> L42 Throwable -> L78
    L42:
        e = e;
    L49:
        e.printStackTrace();     // Catch: Throwable -> L78
    L64:
        return r10;
    L92:
        r3.close();     // Catch: Exception -> L42 Throwable -> L78
    L33:
        th = th;
    L94:
        com.mobile.auth.a.a.a(f13136a, "doGet error", th);     // Catch: Throwable -> L65
        if (r3 != null) goto L88;
    L60:
        if (r2 == null) goto L62;
        r2.close();     // Catch: Exception -> L58 Throwable -> L78
    L62:
        if (r1 == null) goto L64;
        r1.close();     // Catch: Exception -> L58 Throwable -> L78
    L58:
        e = e;
        goto L49
    L88:
        r3.close();     // Catch: Exception -> L58 Throwable -> L78
        goto L60
    L65:
        th = move-exception;
        if (r3 != null) goto L85;
    L71:
        if (r2 == null) goto L73;
        r2.close();     // Catch: Exception -> L69 Throwable -> L78
    L73:
        if (r1 == null) goto L106;
        r1.close();     // Catch: Exception -> L69 Throwable -> L78
    L69:
        e = move-exception;
        e.printStackTrace();     // Catch: Throwable -> L78
        throw th;     // Catch: Throwable -> L78
    L107:
        throw th;     // Catch: Throwable -> L78
    L106:
        throw th;     // Catch: Throwable -> L78
    L85:
        r3.close();     // Catch: Exception -> L69 Throwable -> L78
    L35:
        th = th;
    L54:
        r3 = null;
    L37:
        th = th;
    L53:
        r2 = null;
        goto L54
    L39:
        r1 = null;
        r2 = null;
        r3 = null;
    L15:
        r15 = r14.openConnection();     // Catch: Throwable -> L51
    L51:
        th = th;
        r1 = null;
    L78:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L82
        return null;
    L82:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.BufferedReader] */
    public static String a(Context r23, String r24, String r25, Network r26, String r27) {
        ?? r1 = r23;
        ?? r3 = Constants.HTTP_POST;
        int r4 = Build.VERSION.SDK_INT;
        int r10 = com.mobile.auth.a.a.f13067d;     // Catch: Throwable -> L136
        int r11 = 3000;
        if (r10 > 0) goto L6;
        r10 = 3000;
    L6:
        int r12 = com.mobile.auth.a.a.f13068e;     // Catch: Throwable -> L136
        if (r12 <= 0) goto L10;
        r11 = r12;
    L10:
        String r13 = "";
        URL r14 = new URL(r24);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        if (r26 == null) goto L16;
        if (r4 < 21) goto L16;
        URLConnection r15 = r26.openConnection(r14);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L15:
        HttpsURLConnection r16 = (HttpsURLConnection) r15;     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setRequestProperty("accept", "*/*");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setRequestMethod(Constants.HTTP_POST);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setDoOutput(true);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setDoInput(true);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setConnectTimeout(r10);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setReadTimeout(r11);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setUseCaches(false);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setHostnameVerifier(a());     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        if (r4 >= 21) goto L20;
        r16.setInstanceFollowRedirects(false);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L20:
        r16.addRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        if (TextUtils.isEmpty(r25) == true) goto L23;
        DataOutputStream r17 = new DataOutputStream(new BufferedOutputStream(r16.getOutputStream()));     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r17.write(r25.getBytes("UTF-8"));     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r17.flush();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r17.close();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L24:
        String r9 = HttpHeaders.LOCATION;
        if (r4 < 21) goto L27;
    L42:
        String r2 = HttpHeaders.ACCEPT_CHARSET;
        r9 = HttpHeaders.LOCATION;
        String r18 = "";
    L44:
        if (r16.getResponseCode() != 302) goto L53;
        URL r5 = new URL(r16.getHeaderField(r9));     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        if (r26 != null) goto L48;
    L50:
        URLConnection r6 = r5.openConnection();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L51:
        r16 = (HttpsURLConnection) r6;     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setRequestProperty("accept", "*/*");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setRequestMethod(Constants.HTTP_GET);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setConnectTimeout(r10);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setReadTimeout(r11);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setUseCaches(false);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.addRequestProperty(r2, "UTF-8");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.connect();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        goto L53
    L48:
        if (r4 < 21) goto L50;
        r6 = r26.openConnection(r5);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L53:
        if (r16.getResponseCode() != 200) goto L81;
        InputStream r7 = r16.getInputStream();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L159:
        StringBuilder r8 = new StringBuilder();     // Catch: Throwable -> L71 IOException -> L73 SSLPeerUnverifiedException -> L75 UnknownHostException -> L77 SocketTimeoutException -> L79
        BufferedReader r19 = new BufferedReader(new InputStreamReader(r7));     // Catch: Throwable -> L71 IOException -> L73 SSLPeerUnverifiedException -> L75 UnknownHostException -> L77 SocketTimeoutException -> L79
    L157:
        String r20 = r19.readLine();     // Catch: Throwable -> L61 IOException -> L63 SSLPeerUnverifiedException -> L65 UnknownHostException -> L67 SocketTimeoutException -> L69
        if (r20 == null) goto L59;
        r8.append(r20);     // Catch: Throwable -> L61 IOException -> L63 SSLPeerUnverifiedException -> L65 UnknownHostException -> L67 SocketTimeoutException -> L69
        r8.append("\n");     // Catch: Throwable -> L61 IOException -> L63 SSLPeerUnverifiedException -> L65 UnknownHostException -> L67 SocketTimeoutException -> L69
        goto L157
    L59:
        r13 = r8.toString();     // Catch: Throwable -> L61 IOException -> L63 SSLPeerUnverifiedException -> L65 UnknownHostException -> L67 SocketTimeoutException -> L69
        com.mobile.auth.c.e.a(r27).g(a(r23, r16));     // Catch: Throwable -> L61 IOException -> L63 SSLPeerUnverifiedException -> L65 UnknownHostException -> L67 SocketTimeoutException -> L69
        InputStream r110 = r7;
        BufferedReader r21 = r19;
    L82:
        if (r21 == null) goto L84;
        r21.close();     // Catch: Throwable -> L144
    L84:
        if (r110 == null) goto L128;
        r110.close();     // Catch: Throwable -> L144
        goto L128
    L69:
        e = move-exception;
        SocketTimeoutException r22 = e;
        r1 = r7;
        r3 = r19;
    L123:
        r13 = "{\"result\":80005,\"msg\":\"Socket超时异常\"}";
        com.mobile.auth.a.a.a(f13136a, "sendRequest SocketTimeoutException-preauth-" + r22.getMessage(), r22);     // Catch: Throwable -> L129
        com.mobile.auth.c.e.a(r27).h("doPost SocketTimeoutException -- " + r22.getMessage());     // Catch: Throwable -> L129
        if (r3 == 0) goto L126;
        r3.close();     // Catch: Throwable -> L144
    L126:
        if (r1 == 0) goto L147;
    L94:
        r1.close();     // Catch: Throwable -> L144
    L147:
    L67:
        e = move-exception;
        UnknownHostException r28 = e;
        r1 = r7;
        r3 = r19;
    L115:
        r13 = "{\"result\":80006,\"msg\":\"域名解析异常\"}";
        com.mobile.auth.a.a.a(f13136a, "sendRequest UnknownHostException-preauth-" + r28.getMessage(), r28);     // Catch: Throwable -> L129
        com.mobile.auth.c.e.a(r27).h("doPost UnknownHostException -- " + r28.getMessage());     // Catch: Throwable -> L129
        if (r3 == 0) goto L118;
        r3.close();     // Catch: Throwable -> L144
    L118:
        if (r1 == 0) goto L147;
    L65:
        e = move-exception;
        SSLPeerUnverifiedException r29 = e;
        r1 = r7;
        r3 = r19;
    L107:
        r13 = "{\"result\":80013,\"msg\":\"域名校验未通过\"}";
        com.mobile.auth.a.a.a(f13136a, "sendRequest SSLPeerUnverifiedException-preauth-" + r29.getMessage(), r29);     // Catch: Throwable -> L129
        com.mobile.auth.c.e.a(r27).h("doPost SSLPeerUnverifiedException -- " + r29.getMessage());     // Catch: Throwable -> L129
        if (r3 == 0) goto L110;
        r3.close();     // Catch: Throwable -> L144
    L110:
        if (r1 == 0) goto L147;
    L63:
        e = move-exception;
        IOException r30 = e;
        r1 = r7;
        r3 = r19;
    L99:
        r13 = "{\"result\":80007,\"msg\":\"IO异常\"}";
        com.mobile.auth.a.a.a(f13136a, "sendRequest IOException-preauth-" + r30.getMessage(), r30);     // Catch: Throwable -> L129
        com.mobile.auth.c.e.a(r27).h("doPost IOException -- " + r30.getMessage());     // Catch: Throwable -> L129
        if (r3 == 0) goto L102;
        r3.close();     // Catch: Throwable -> L144
    L102:
        if (r1 == 0) goto L147;
    L61:
        th = move-exception;
        Throwable r31 = th;
        r1 = r7;
        r3 = r19;
    L90:
        r13 = "{\"result\":80001,\"msg\":\"请求异常\"}";
        com.mobile.auth.a.a.a(f13136a, "sendRequest Throwable-preauth-" + r31.getMessage(), r31);     // Catch: Throwable -> L129
        com.mobile.auth.c.e.a(r27).h("doPost Throwable -- " + r31.getMessage());     // Catch: Throwable -> L129
        if (r3 == 0) goto L93;
        r3.close();     // Catch: Throwable -> L144
    L93:
        if (r1 == 0) goto L147;
    L79:
        e = move-exception;
        r22 = e;
        InputStream r32 = r7;
    L122:
        r3 = 0;
        r1 = r32;
    L77:
        e = move-exception;
        r28 = e;
        InputStream r33 = r7;
    L114:
        r3 = 0;
        r1 = r33;
    L75:
        e = move-exception;
        r29 = e;
        InputStream r34 = r7;
    L106:
        r3 = 0;
        r1 = r34;
    L73:
        e = move-exception;
        r30 = e;
        InputStream r35 = r7;
    L98:
        r3 = 0;
        r1 = r35;
    L71:
        th = move-exception;
        r31 = th;
        InputStream r36 = r7;
    L89:
        r3 = 0;
        r1 = r36;
        goto L90
    L81:
        r13 = r18;
        r21 = null;
        r110 = null;
        goto L82
    L27:
        if (r16.getResponseCode() != 302) goto L42;
        String r111 = r16.getHeaderField(HttpHeaders.LOCATION);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        if (TextUtils.isEmpty(r111) == true) goto L34;
        ConnectivityManager r112 = (ConnectivityManager) r1.getSystemService("connectivity");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r18 = "";
        if (r112.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) != 0) goto L35;
        int r113 = e.a(e.b(r111));     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        Class<?> r114 = Class.forName("android.net.ConnectivityManager");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        Class<?> r210 = Integer.TYPE;     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r114.getMethod("requestRouteToHost", new Class[]{r210, r210}).invoke(r112, new Object[]{5, Integer.valueOf(r113)});     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L35:
        URL r37 = new URL(r111);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        if (r26 != null) goto L38;
    L40:
        URLConnection r38 = r37.openConnection();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L41:
        r16 = (HttpsURLConnection) r38;     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setRequestProperty("accept", "*/*");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setRequestMethod(Constants.HTTP_POST);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setDoOutput(true);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setDoInput(true);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setConnectTimeout(r10);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setReadTimeout(r11);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.setUseCaches(false);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r2 = HttpHeaders.ACCEPT_CHARSET;
        r16.addRequestProperty(r2, "UTF-8");     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        r16.connect();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        goto L44
    L38:
        if (r4 < 21) goto L40;
        r38 = r26.openConnection(r37);     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
        goto L41
    L34:
        r18 = "";
        goto L35
    L23:
        r16.connect();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L16:
        r15 = r14.openConnection();     // Catch: Throwable -> L87 IOException -> L96 SSLPeerUnverifiedException -> L104 UnknownHostException -> L112 SocketTimeoutException -> L120
    L120:
        e = move-exception;
        r22 = e;
        r32 = null;
    L112:
        e = move-exception;
        r28 = e;
        r33 = null;
    L104:
        e = move-exception;
        r29 = e;
        r34 = null;
    L96:
        e = move-exception;
        r30 = e;
        r35 = null;
    L87:
        th = move-exception;
        r31 = th;
        r36 = null;
    L128:
        return r13;
    L129:
        th = move-exception;
        if (r3 != 0) goto L150;
    L133:
        if (r1 == 0) goto L162;
        r1.close();     // Catch: Throwable -> L145
        throw th;     // Catch: Throwable -> L136
    L163:
        throw th;     // Catch: Throwable -> L136
    L162:
        throw th;     // Catch: Throwable -> L136
    L150:
        r3.close();     // Catch: Throwable -> L145
    L136:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L141
        return null;
    L141:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public static String a(Context r6, HttpsURLConnection r7) {
        Map r8 = r7.getHeaderFields();     // Catch: Throwable -> L21
        List r1 = (List) r8.get("Log-Level");     // Catch: Throwable -> L21
        if (r1 != null) goto L6;
    L14:
        List r9 = (List) r8.get("p-ikgx");     // Catch: Throwable -> L21
        if (r9 != null) goto L17;
    L23:
        return null;
    L17:
        if (r9.isEmpty() == true) goto L23;
        String r10 = (String) r9.get(0);     // Catch: Throwable -> L21
        if (TextUtils.isEmpty(r10) == true) goto L23;
        return r10;
    L6:
        if (r1.isEmpty() == true) goto L14;
        int r3 = 0;
    L9:
        if (r3 >= r1.size()) goto L14;
        String r4 = (String) r1.get(0);     // Catch: Throwable -> L21
        if (TextUtils.isEmpty(r4) == true) goto L13;
        com.mobile.auth.c.e.b(r6, r4);     // Catch: Throwable -> L21
    L13:
        r3 = r3 + 1;     // Catch: Throwable -> L21
    L21:
        th = move-exception;
        th.printStackTrace();     // Catch: Throwable -> L24
    L24:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L27
        return null;
    L27:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }

    public static final HostnameVerifier a() {
        return new AnonymousClass1();
    L4:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);     // Catch: Throwable -> L8
        return null;
    L8:
        th = move-exception;
        com.mobile.auth.gatewayauth.a.a(th);
        return null;
    }
}
