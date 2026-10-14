package com.mobile.auth.gatewayauth.network;

import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.utils.g;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class TopRequestUtils {
    private static final String APP_KEY = "25331768";
    private static final String CHARSET_UTF8 = "utf-8";
    private static final String CONTENT_ENCODING_GZIP = "gzip";
    private static final String SERVER_URL_HOST;
    private static final String SIGN_METHOD_HMAC = "hmac";
    private static final String SIGN_METHOD_MD5 = "md5";
    private static final HostnameVerifier mHostVerifier;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        SERVER_URL_HOST = g.a(BuildConfig.SERVER_URL);
        mHostVerifier = new HostnameVerifier() { // from class: com.mobile.auth.gatewayauth.network.TopRequestUtils.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                try {
                    return HttpsURLConnection.getDefaultHostnameVerifier().verify(TopRequestUtils.SERVER_URL_HOST, sSLSession);
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
        };
    }

    private static native Map<String, String> assembleTopParameter(String str) throws IOException;

    private static native String buildQuery(Map<String, String> map, String str) throws IOException;

    private static native String byte2hex(byte[] bArr);

    private static native String callApi(URL url, Map<String, String> map) throws IOException;

    private static native String callHttpsApi(URL url, Map<String, String> map) throws IOException;

    private static native byte[] encryptHMAC(String str, String str2) throws IOException;

    private static native byte[] encryptMD5(String str) throws IOException;

    private static native byte[] encryptMD5(byte[] bArr) throws IOException;

    public static native String getLifeBodyVerifyCertifyID(String str) throws IOException;

    private static native String getResponseAsString(HttpURLConnection httpURLConnection) throws IOException;

    private static native String getResponseCharset(String str);

    public static native String getSDKConfig(String str) throws IOException;

    private static native String getSecret1();

    private static native String getSecret2();

    private static native String getSecret3();

    private static native String getSecret4();

    private static native String getStreamAsString(InputStream inputStream, String str) throws IOException;

    public static native String getVendorList(String str, String str2) throws IOException;

    private static native boolean isNotEmpty(String str);

    private static native String signTopRequest(Map<String, String> map, String str, String str2) throws IOException;

    public static native String uploadUserTrackInfo(String str) throws IOException;
}
