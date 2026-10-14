package com.tencent.open.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.tauth.IRequestListener;
import java.io.ByteArrayOutputStream;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.util.InvalidPropertiesFormatException;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class HttpUtils {

    public static class HttpStatusException extends Exception {
        public static final String ERROR_INFO = "http status code error:";

        public HttpStatusException(String str) {
            super(str);
        }
    }

    public static class NetworkUnavailableException extends Exception {
        public static final String ERROR_INFO = "network unavailable";

        public NetworkUnavailableException(String str) {
            super(str);
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f14143a;
        public final int b;

        private a(String str, int i) {
            this.f14143a = str;
            this.b = i;
        }
    }

    private HttpUtils() {
    }

    private static void a(Context context, QQToken qQToken, String str) {
        if (str.indexOf("add_share") > -1 || str.indexOf("upload_pic") > -1 || str.indexOf("add_topic") > -1 || str.indexOf("set_user_face") > -1 || str.indexOf("add_t") > -1 || str.indexOf("add_pic_t") > -1 || str.indexOf("add_pic_url") > -1 || str.indexOf("add_video") > -1) {
            com.tencent.connect.a.a.a(context, qQToken, "requireApi", str);
        }
    }

    private static String b(Context context) {
        if (Build.VERSION.SDK_INT >= 11) {
            return System.getProperty("http.proxyHost");
        }
        if (context == null) {
            return Proxy.getDefaultHost();
        }
        String host = Proxy.getHost(context);
        return TextUtils.isEmpty(host) ? Proxy.getDefaultHost() : host;
    }

    public static String encodePostBody(Bundle bundle, String str) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = -1;
        int size = bundle.size();
        for (String str2 : bundle.keySet()) {
            i++;
            Object obj = bundle.get(str2);
            if (obj instanceof String) {
                sb.append("Content-Disposition: form-data; name=\"" + str2 + "\"\r\n\r\n" + ((String) obj));
                if (i < size - 1) {
                    sb.append("\r\n--" + str + "\r\n");
                }
            }
        }
        return sb.toString();
    }

    public static String encodeUrl(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if ((obj instanceof String) || (obj instanceof String[])) {
                if (obj instanceof String[]) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str) + "=");
                    String[] stringArray = bundle.getStringArray(str);
                    if (stringArray != null) {
                        for (int i = 0; i < stringArray.length; i++) {
                            if (i == 0) {
                                sb.append(URLEncoder.encode(stringArray[i]));
                            } else {
                                sb.append(URLEncoder.encode("," + stringArray[i]));
                            }
                        }
                    }
                } else {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(bundle.getString(str)));
                }
            }
        }
        return sb.toString();
    }

    public static int getErrorCodeFromException(IOException iOException) {
        if (iOException instanceof CharConversionException) {
            return -20;
        }
        if (iOException instanceof MalformedInputException) {
            return -21;
        }
        if (iOException instanceof UnmappableCharacterException) {
            return -22;
        }
        if (iOException instanceof HttpResponseException) {
            return -23;
        }
        if (iOException instanceof ClosedChannelException) {
            return -24;
        }
        if (iOException instanceof ConnectionClosedException) {
            return -25;
        }
        if (iOException instanceof EOFException) {
            return -26;
        }
        if (iOException instanceof FileLockInterruptionException) {
            return -27;
        }
        if (iOException instanceof FileNotFoundException) {
            return -28;
        }
        if (iOException instanceof HttpRetryException) {
            return -29;
        }
        if (iOException instanceof ConnectTimeoutException) {
            return -7;
        }
        if (iOException instanceof SocketTimeoutException) {
            return -8;
        }
        if (iOException instanceof InvalidPropertiesFormatException) {
            return -30;
        }
        if (iOException instanceof MalformedChunkCodingException) {
            return -31;
        }
        if (iOException instanceof MalformedURLException) {
            return -3;
        }
        if (iOException instanceof NoHttpResponseException) {
            return -32;
        }
        if (iOException instanceof InvalidClassException) {
            return -33;
        }
        if (iOException instanceof InvalidObjectException) {
            return -34;
        }
        if (iOException instanceof NotActiveException) {
            return -35;
        }
        if (iOException instanceof NotSerializableException) {
            return -36;
        }
        if (iOException instanceof OptionalDataException) {
            return -37;
        }
        if (iOException instanceof StreamCorruptedException) {
            return -38;
        }
        if (iOException instanceof WriteAbortedException) {
            return -39;
        }
        if (iOException instanceof ProtocolException) {
            return -40;
        }
        if (iOException instanceof SSLHandshakeException) {
            return -41;
        }
        if (iOException instanceof SSLKeyException) {
            return -42;
        }
        if (iOException instanceof SSLPeerUnverifiedException) {
            return -43;
        }
        if (iOException instanceof SSLProtocolException) {
            return -44;
        }
        if (iOException instanceof BindException) {
            return -45;
        }
        if (iOException instanceof ConnectException) {
            return -46;
        }
        if (iOException instanceof NoRouteToHostException) {
            return -47;
        }
        if (iOException instanceof PortUnreachableException) {
            return -48;
        }
        if (iOException instanceof SyncFailedException) {
            return -49;
        }
        if (iOException instanceof UTFDataFormatException) {
            return -50;
        }
        if (iOException instanceof UnknownHostException) {
            return -51;
        }
        if (iOException instanceof UnknownServiceException) {
            return -52;
        }
        if (iOException instanceof UnsupportedEncodingException) {
            return -53;
        }
        return iOException instanceof ZipException ? -54 : -2;
    }

    public static HttpClient getHttpClient(Context context, String str, String str2) {
        int iA;
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
                socketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                schemeRegistry.register(new Scheme("https", socketFactory, 443));
            } else {
                schemeRegistry.register(new Scheme("https", new k(), 443));
            }
        } catch (Exception unused) {
            schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        g gVarA = context != null ? g.a(context, str) : null;
        int iA2 = 0;
        if (gVarA != null) {
            iA2 = gVarA.a("Common_HttpConnectionTimeout");
            iA = gVarA.a("Common_SocketConnectionTimeout");
        } else {
            iA = 0;
        }
        if (iA2 == 0) {
            iA2 = 15000;
        }
        if (iA == 0) {
            iA = CMAESOptimizer.DEFAULT_MAXITERATIONS;
        }
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, iA2);
        HttpConnectionParams.setSoTimeout(basicHttpParams, iA);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpProtocolParams.setUserAgent(basicHttpParams, "AndroidSDK_" + Build.VERSION.SDK + "_" + Build.DEVICE + "_" + Build.VERSION.RELEASE);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        a proxy = getProxy(context);
        if (proxy != null) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(proxy.f14143a, proxy.b));
        }
        return defaultHttpClient;
    }

    public static a getProxy(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() == 0) {
            String strB = b(context);
            int iA = a(context);
            if (!TextUtils.isEmpty(strB) && iA >= 0) {
                return new a(strB, iA);
            }
        }
        return null;
    }

    public static l.a openUrl2(Context context, String str, String str2, Bundle bundle) throws IOException, NetworkUnavailableException, HttpStatusException {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && ((activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable())) {
            throw new NetworkUnavailableException(NetworkUnavailableException.ERROR_INFO);
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        String string = bundle2.getString("appid_for_getting_config");
        bundle2.remove("appid_for_getting_config");
        HttpClient httpClient = getHttpClient(context, string, str);
        HttpUriRequest httpUriRequest = null;
        int length = 0;
        int i = -1;
        if (str2.equals(Constants.HTTP_GET)) {
            String strEncodeUrl = encodeUrl(bundle2);
            length = 0 + strEncodeUrl.length();
            SLog.v("openSDK_LOG.HttpUtils", "-->openUrl2 before url =" + str);
            String str3 = str.indexOf("?") == -1 ? str + "?" : str + "&";
            Bundle bundleB = com.tencent.open.log.d.b(bundle2);
            if (bundleB != bundle2) {
                SLog.i("openSDK_LOG.HttpUtils", "-->openUrl2 encodedParam =" + encodeUrl(bundleB) + " -- url = " + str3);
            } else {
                SLog.i("openSDK_LOG.HttpUtils", "-->openUrl2 encodedParam =" + strEncodeUrl + " -- url = " + str3);
            }
            HttpGet httpGet = new HttpGet(str3 + strEncodeUrl);
            httpGet.addHeader(HttpHeaders.ACCEPT_ENCODING, "gzip");
            httpUriRequest = httpGet;
        } else if (str2.equals(Constants.HTTP_POST)) {
            HttpPost httpPost = new HttpPost(str);
            httpPost.addHeader(HttpHeaders.ACCEPT_ENCODING, "gzip");
            Bundle bundle3 = new Bundle();
            for (String str4 : bundle2.keySet()) {
                Object obj = bundle2.get(str4);
                if (obj instanceof byte[]) {
                    bundle3.putByteArray(str4, (byte[]) obj);
                }
            }
            if (!bundle2.containsKey("method")) {
                bundle2.putString("method", str2);
            }
            httpPost.setHeader(HttpHeaders.CONTENT_TYPE, "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            httpPost.setHeader(HttpHeaders.CONNECTION, "Keep-Alive");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(l.i("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
            byteArrayOutputStream.write(l.i(encodePostBody(bundle2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f")));
            if (!bundle3.isEmpty()) {
                int size = bundle3.size();
                byteArrayOutputStream.write(l.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
                for (String str5 : bundle3.keySet()) {
                    i++;
                    byteArrayOutputStream.write(l.i("Content-Disposition: form-data; name=\"" + str5 + "\"; filename=\"" + str5 + "\"\r\n"));
                    byteArrayOutputStream.write(l.i("Content-Type: content/unknown\r\n\r\n"));
                    byte[] byteArray = bundle3.getByteArray(str5);
                    if (byteArray != null) {
                        byteArrayOutputStream.write(byteArray);
                    }
                    if (i < size - 1) {
                        byteArrayOutputStream.write(l.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
                    }
                }
            }
            byteArrayOutputStream.write(l.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"));
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            length = 0 + byteArray2.length;
            byteArrayOutputStream.close();
            httpPost.setEntity(new ByteArrayEntity(byteArray2));
            httpUriRequest = httpPost;
        }
        HttpResponse httpResponseExecute = httpClient.execute(httpUriRequest);
        int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
        SLog.i("openSDK_LOG.HttpUtils", "-->openUrl2 response cdoe =" + statusCode);
        if (statusCode == 200) {
            return new l.a(a(httpResponseExecute), length);
        }
        throw new HttpStatusException(HttpStatusException.ERROR_INFO + statusCode);
    }

    public static JSONObject request(QQToken qQToken, Context context, String str, Bundle bundle, String str2) throws JSONException, IOException, HttpStatusException, NetworkUnavailableException {
        String str3;
        String str4;
        int i;
        JSONObject jSONObject;
        long j;
        int i2;
        int i3;
        int i4;
        SLog.i("openSDK_LOG.HttpUtils", "OpenApi request");
        if (str.toLowerCase().startsWith("http")) {
            str3 = str;
            str4 = str3;
        } else {
            str3 = h.a().a(context, "https://openmobile.qq.com/") + str;
            str4 = h.a().a(context, "https://openmobile.qq.com/") + str;
        }
        a(context, qQToken, str);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i5 = 0;
        int iA = g.a(context, qQToken.getAppId()).a("Common_HttpRetryCount");
        SLog.v("OpenConfig_test", "config 1:Common_HttpRetryCount            config_value:" + iA + "   appid:" + qQToken.getAppId() + "     url:" + str4);
        if (iA == 0) {
            iA = 3;
        }
        SLog.v("OpenConfig_test", "config 1:Common_HttpRetryCount            result_value:" + iA + "   appid:" + qQToken.getAppId() + "     url:" + str4);
        JSONObject jSONObject2 = null;
        do {
            i5++;
            long j2 = 0;
            try {
                try {
                    l.a aVarOpenUrl2 = openUrl2(context, str3, str2, bundle);
                    JSONObject jSONObjectD = l.d(aVarOpenUrl2.f14174a);
                    try {
                        i4 = jSONObjectD.getInt(SpeechUtility.TAG_RESOURCE_RET);
                    } catch (JSONException unused) {
                        i4 = -4;
                    }
                    long j3 = aVarOpenUrl2.b;
                    j2 = aVarOpenUrl2.c;
                    jSONObject = jSONObjectD;
                    i2 = i4;
                    j = j3;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    com.tencent.open.a.g.a().a(str4, jElapsedRealtime, 0L, 0L, -4);
                    throw e2;
                }
            } catch (HttpStatusException e3) {
                e3.printStackTrace();
                try {
                    i3 = Integer.parseInt(e3.getMessage().replace(HttpStatusException.ERROR_INFO, ""));
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i3 = -9;
                }
                com.tencent.open.a.g.a().a(str4, jElapsedRealtime, 0L, 0L, i3);
                throw e3;
            } catch (NetworkUnavailableException e5) {
                e5.printStackTrace();
                throw e5;
            } catch (MalformedURLException e6) {
                e6.printStackTrace();
                com.tencent.open.a.g.a().a(str4, jElapsedRealtime, 0L, 0L, -3);
                throw e6;
            } catch (SocketTimeoutException e7) {
                e7.printStackTrace();
                i = -8;
                if (i5 >= iA) {
                    com.tencent.open.a.g.a().a(str4, jElapsedRealtime, 0L, 0L, -8);
                    throw e7;
                }
                jElapsedRealtime = SystemClock.elapsedRealtime();
            } catch (ConnectTimeoutException e8) {
                e8.printStackTrace();
                i = -7;
                if (i5 >= iA) {
                    com.tencent.open.a.g.a().a(str4, jElapsedRealtime, 0L, 0L, -7);
                    throw e8;
                }
                jElapsedRealtime = SystemClock.elapsedRealtime();
            } catch (IOException e9) {
                e9.printStackTrace();
                com.tencent.open.a.g.a().a(str4, jElapsedRealtime, 0L, 0L, getErrorCodeFromException(e9));
                throw e9;
            }
            com.tencent.open.a.g.a().a(str4, jElapsedRealtime, j, j2, i2);
            return jSONObject;
        } while (i5 < iA);
        jSONObject = jSONObject2;
        j = 0;
        i2 = i;
        com.tencent.open.a.g.a().a(str4, jElapsedRealtime, j, j2, i2);
        return jSONObject;
    }

    public static void requestAsync(final QQToken qQToken, final Context context, final String str, final Bundle bundle, final String str2, final IRequestListener iRequestListener) {
        SLog.i("openSDK_LOG.HttpUtils", "OpenApi requestAsync");
        new Thread() { // from class: com.tencent.open.utils.HttpUtils.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObjectRequest = HttpUtils.request(qQToken, context, str, bundle, str2);
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onComplete(jSONObjectRequest);
                        SLog.i("openSDK_LOG.HttpUtils", "OpenApi onComplete");
                    }
                } catch (HttpStatusException e2) {
                    IRequestListener iRequestListener3 = iRequestListener;
                    if (iRequestListener3 != null) {
                        iRequestListener3.onHttpStatusException(e2);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync onHttpStatusException" + e2.toString());
                    }
                } catch (NetworkUnavailableException e3) {
                    IRequestListener iRequestListener4 = iRequestListener;
                    if (iRequestListener4 != null) {
                        iRequestListener4.onNetworkUnavailableException(e3);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync onNetworkUnavailableException" + e3.toString());
                    }
                } catch (MalformedURLException e4) {
                    IRequestListener iRequestListener5 = iRequestListener;
                    if (iRequestListener5 != null) {
                        iRequestListener5.onMalformedURLException(e4);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync MalformedURLException" + e4.toString());
                    }
                } catch (SocketTimeoutException e5) {
                    IRequestListener iRequestListener6 = iRequestListener;
                    if (iRequestListener6 != null) {
                        iRequestListener6.onSocketTimeoutException(e5);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync onSocketTimeoutException" + e5.toString());
                    }
                } catch (ConnectTimeoutException e6) {
                    IRequestListener iRequestListener7 = iRequestListener;
                    if (iRequestListener7 != null) {
                        iRequestListener7.onConnectTimeoutException(e6);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync onConnectTimeoutException" + e6.toString());
                    }
                } catch (IOException e7) {
                    IRequestListener iRequestListener8 = iRequestListener;
                    if (iRequestListener8 != null) {
                        iRequestListener8.onIOException(e7);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync IOException" + e7.toString());
                    }
                } catch (JSONException e8) {
                    IRequestListener iRequestListener9 = iRequestListener;
                    if (iRequestListener9 != null) {
                        iRequestListener9.onJSONException(e8);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync JSONException" + e8.toString());
                    }
                } catch (Exception e9) {
                    IRequestListener iRequestListener10 = iRequestListener;
                    if (iRequestListener10 != null) {
                        iRequestListener10.onUnknowException(e9);
                        SLog.e("openSDK_LOG.HttpUtils", "OpenApi requestAsync onUnknowException" + e9.toString());
                    }
                }
            }
        }.start();
    }

    private static String a(HttpResponse httpResponse) throws IllegalStateException, IOException {
        InputStream content = httpResponse.getEntity().getContent();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Header firstHeader = httpResponse.getFirstHeader(HttpHeaders.CONTENT_ENCODING);
        if (firstHeader != null && firstHeader.getValue().toLowerCase().indexOf("gzip") > -1) {
            content = new GZIPInputStream(content);
        }
        byte[] bArr = new byte[512];
        while (true) {
            int i = content.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                String str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                content.close();
                return str;
            }
        }
    }

    private static int a(Context context) {
        if (Build.VERSION.SDK_INT < 11) {
            if (context != null) {
                int port = Proxy.getPort(context);
                return port < 0 ? Proxy.getDefaultPort() : port;
            }
            return Proxy.getDefaultPort();
        }
        String property = System.getProperty("http.proxyPort");
        if (!TextUtils.isEmpty(property)) {
            try {
                return Integer.parseInt(property);
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }
}
