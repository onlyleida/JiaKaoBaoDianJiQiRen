package com.alivc.live.utils;

import com.alivc.live.pusher.LogUtil;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class HttpClientHelper {
    private static final String TAG = "HttpClientHelper";
    private static final int TIMEOUT = 10000;
    private static ExecutorService sThreadCachePool = Executors.newCachedThreadPool();
    private String mUrl;
    private URLConnection urlConnection = null;
    private String mReferer = null;
    private int mNetworkTimeout = 10000;
    private String mHttpProxy = null;
    private String mUserAgent = null;
    private String[] mCustomHeaders = null;
    private String mHttpResponse = null;
    private boolean mTrustAllCert = true;

    public HttpClientHelper(String str) {
        this.mUrl = null;
        this.mUrl = str;
    }

    private InputStream getErrorStream() {
        URLConnection uRLConnection = this.urlConnection;
        if (uRLConnection instanceof HttpsURLConnection) {
            return ((HttpsURLConnection) uRLConnection).getErrorStream();
        }
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getErrorStream();
        }
        return null;
    }

    public static HostnameVerifier getHostnameVerifier() {
        return new HostnameVerifier() { // from class: com.alivc.live.utils.HttpClientHelper.3
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        };
    }

    private URLConnection getHttpUrlConnection(String str, String str2, byte[] bArr) {
        Exception e2;
        Proxy proxy;
        URLConnection uRLConnection = null;
        try {
            if (this.mHttpProxy != null) {
                try {
                    URL url = new URL(this.mHttpProxy);
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(url.getHost(), url.getPort()));
                } catch (Exception e3) {
                    e3.printStackTrace();
                    proxy = null;
                }
            } else {
                proxy = null;
            }
            URL url2 = new URL(str);
            URLConnection uRLConnectionOpenConnection = proxy != null ? url2.openConnection(proxy) : url2.openConnection();
            try {
                if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                    return null;
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setRequestMethod(str2);
                httpURLConnection.setConnectTimeout(this.mNetworkTimeout);
                httpURLConnection.setReadTimeout(this.mNetworkTimeout);
                if (str2 == Constants.HTTP_POST) {
                    boolean z = bArr != null;
                    httpURLConnection.setDoOutput(z);
                    httpURLConnection.setDoInput(true);
                    if (z) {
                        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                        httpURLConnection.connect();
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(bArr);
                        outputStream.close();
                    } else {
                        httpURLConnection.connect();
                    }
                }
                return uRLConnectionOpenConnection;
            } catch (Exception e4) {
                e2 = e4;
                uRLConnection = uRLConnectionOpenConnection;
                e2.printStackTrace();
                return uRLConnection;
            }
        } catch (Exception e5) {
            e2 = e5;
        }
    }

    private URLConnection getHttpsUrlConnection(String str, String str2, byte[] bArr) {
        Exception e2;
        Proxy proxy;
        URLConnection uRLConnection = null;
        try {
            if (this.mHttpProxy != null) {
                try {
                    URL url = new URL(this.mHttpProxy);
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(url.getHost(), url.getPort()));
                } catch (Exception e3) {
                    e3.printStackTrace();
                    proxy = null;
                }
            } else {
                proxy = null;
            }
            URL url2 = new URL(str);
            URLConnection uRLConnectionOpenConnection = proxy != null ? url2.openConnection(proxy) : url2.openConnection();
            try {
                if (!(uRLConnectionOpenConnection instanceof HttpsURLConnection)) {
                    return null;
                }
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                httpsURLConnection.setRequestMethod(str2);
                httpsURLConnection.setConnectTimeout(this.mNetworkTimeout);
                httpsURLConnection.setReadTimeout(this.mNetworkTimeout);
                if (str2 == Constants.HTTP_POST) {
                    boolean z = bArr != null;
                    httpsURLConnection.setDoOutput(z);
                    httpsURLConnection.setDoInput(true);
                    if (z) {
                        httpsURLConnection.setFixedLengthStreamingMode(bArr.length);
                        httpsURLConnection.connect();
                        OutputStream outputStream = httpsURLConnection.getOutputStream();
                        outputStream.write(bArr);
                        outputStream.close();
                    } else {
                        httpsURLConnection.connect();
                    }
                }
                if (!this.mTrustAllCert) {
                    return uRLConnectionOpenConnection;
                }
                SSLSocketFactory sSLSocketFactory = getSSLSocketFactory();
                if (sSLSocketFactory != null) {
                    httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
                }
                HostnameVerifier hostnameVerifier = getHostnameVerifier();
                if (hostnameVerifier == null) {
                    return uRLConnectionOpenConnection;
                }
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
                return uRLConnectionOpenConnection;
            } catch (Exception e4) {
                e2 = e4;
                uRLConnection = uRLConnectionOpenConnection;
                e2.printStackTrace();
                return uRLConnection;
            }
        } catch (Exception e5) {
            e2 = e5;
        }
    }

    private int getResponseCode() {
        URLConnection uRLConnection = this.urlConnection;
        if (uRLConnection instanceof HttpsURLConnection) {
            return ((HttpsURLConnection) uRLConnection).getResponseCode();
        }
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    public static SSLSocketFactory getSSLSocketFactory() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, getTrustManager(), new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static TrustManager[] getTrustManager() {
        return new TrustManager[]{new X509TrustManager() { // from class: com.alivc.live.utils.HttpClientHelper.2
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }};
    }

    /* JADX WARN: Code duplicated, block: B:116:0x015d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x015f A[Catch: IOException -> 0x015b, TryCatch #18 {IOException -> 0x015b, blocks: (B:113:0x0157, B:117:0x015f, B:119:0x0164), top: B:162:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0164 A[Catch: IOException -> 0x015b, TRY_LEAVE, TryCatch #18 {IOException -> 0x015b, blocks: (B:113:0x0157, B:117:0x015f, B:119:0x0164), top: B:162:0x0157 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x016f  */
    /* JADX WARN: Code duplicated, block: B:126:0x0173  */
    /* JADX WARN: Code duplicated, block: B:127:0x0179  */
    /* JADX WARN: Code duplicated, block: B:129:0x017d  */
    /* JADX WARN: Code duplicated, block: B:12:0x002e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:139:0x018f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    /* JADX WARN: Code duplicated, block: B:140:0x0191 A[Catch: IOException -> 0x018d, TryCatch #8 {IOException -> 0x018d, blocks: (B:136:0x0189, B:140:0x0191, B:142:0x0196), top: B:158:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0196 A[Catch: IOException -> 0x018d, TRY_LEAVE, TryCatch #8 {IOException -> 0x018d, blocks: (B:136:0x0189, B:140:0x0191, B:142:0x0196), top: B:158:0x0189 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:149:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:151:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:152:0x01af  */
    /* JADX WARN: Code duplicated, block: B:156:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x0189 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    /* JADX WARN: Code duplicated, block: B:160:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x0157 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x008d A[EDGE_INSN: B:180:0x008d->B:38:0x008d BREAK  A[LOOP:1: B:35:0x0083->B:37:0x0089], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x00eb A[EDGE_INSN: B:181:0x00eb->B:73:0x00eb BREAK  A[LOOP:2: B:70:0x00e1->B:72:0x00e7], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:31:0x006e A[Catch: all -> 0x0147, Exception -> 0x014c, TRY_LEAVE, TryCatch #18 {Exception -> 0x014c, all -> 0x0147, blocks: (B:29:0x0066, B:31:0x006e, B:66:0x00ce), top: B:166:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0089 A[Catch: all -> 0x00bb, Exception -> 0x00be, LOOP:1: B:35:0x0083->B:37:0x0089, LOOP_END, TryCatch #15 {Exception -> 0x00be, all -> 0x00bb, blocks: (B:34:0x007e, B:35:0x0083, B:37:0x0089, B:38:0x008d), top: B:171:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ce A[Catch: all -> 0x0147, Exception -> 0x014c, TRY_ENTER, TRY_LEAVE, TryCatch #18 {Exception -> 0x014c, all -> 0x0147, blocks: (B:29:0x0066, B:31:0x006e, B:66:0x00ce), top: B:166:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00e7 A[Catch: all -> 0x012c, Exception -> 0x0131, LOOP:2: B:70:0x00e1->B:72:0x00e7, LOOP_END, TryCatch #16 {Exception -> 0x0131, all -> 0x012c, blocks: (B:69:0x00dc, B:70:0x00e1, B:72:0x00e7, B:73:0x00eb, B:75:0x00f7), top: B:169:0x00dc }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0118  */
    /* JADX WARN: Code duplicated, block: B:86:0x011c  */
    /* JADX WARN: Code duplicated, block: B:87:0x0122  */
    /* JADX WARN: Code duplicated, block: B:89:0x0126  */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x0048, please report this as an issue */
    public boolean doGet() throws Throwable {
        URLConnection httpUrlConnection;
        URLConnection uRLConnection;
        String str;
        String str2;
        String[] strArr;
        Throwable th;
        InputStream inputStream;
        Exception e2;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        Exception e3;
        URLConnection uRLConnection2;
        URLConnection uRLConnection3;
        int responseCode;
        InputStream errorStream;
        StringBuilder sb;
        String line;
        URLConnection uRLConnection4;
        StringBuilder sb2;
        String line2;
        URLConnection uRLConnection5;
        int i;
        String[] strArrSplit;
        InputStreamReader inputStreamReader2 = null;
        BufferedReader bufferedReader2 = null;
        if (!this.mUrl.startsWith("https://")) {
            if (this.mUrl.startsWith("http://")) {
                httpUrlConnection = getHttpUrlConnection(this.mUrl, Constants.HTTP_GET, null);
            } else {
                this.urlConnection = null;
            }
            uRLConnection = this.urlConnection;
            if (uRLConnection == null) {
                return false;
            }
            str = this.mReferer;
            if (str != null) {
                uRLConnection.setRequestProperty(HttpHeaders.REFERER, str);
            }
            str2 = this.mUserAgent;
            if (str2 != null) {
                this.urlConnection.addRequestProperty(HttpHeaders.USER_AGENT, str2);
            }
            strArr = this.mCustomHeaders;
            if (strArr != null) {
                for (String str3 : strArr) {
                    if (str3 != null) {
                        strArrSplit = str3.split(":");
                        if (strArrSplit.length == 2) {
                            this.urlConnection.addRequestProperty(strArrSplit[0], strArrSplit[1]);
                        }
                    }
                }
            }
            try {
                responseCode = getResponseCode();
                if (responseCode == 200) {
                    inputStream = this.urlConnection.getInputStream();
                    try {
                        inputStreamReader = new InputStreamReader(inputStream);
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            try {
                                sb2 = new StringBuilder();
                                while (true) {
                                    line2 = bufferedReader.readLine();
                                    if (line2 != null) {
                                        break;
                                    }
                                    sb2.append(line2);
                                }
                                this.mHttpResponse = sb2.toString();
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                inputStreamReader.close();
                                bufferedReader.close();
                                uRLConnection5 = this.urlConnection;
                                if (uRLConnection5 != null) {
                                    if (uRLConnection5 instanceof HttpURLConnection) {
                                        ((HttpURLConnection) uRLConnection5).disconnect();
                                    } else if (uRLConnection5 instanceof HttpsURLConnection) {
                                        ((HttpsURLConnection) uRLConnection5).disconnect();
                                    }
                                }
                                return true;
                            } catch (Exception e5) {
                                e3 = e5;
                                try {
                                    e3.printStackTrace();
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            if (inputStreamReader != null) {
                                                inputStreamReader.close();
                                            }
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                        } catch (IOException e6) {
                                            e6.printStackTrace();
                                            uRLConnection3 = this.urlConnection;
                                            if (uRLConnection3 != null) {
                                                if (uRLConnection3 instanceof HttpURLConnection) {
                                                    ((HttpURLConnection) uRLConnection3).disconnect();
                                                } else if (uRLConnection3 instanceof HttpsURLConnection) {
                                                    ((HttpsURLConnection) uRLConnection3).disconnect();
                                                }
                                            }
                                            return false;
                                        }
                                    } else {
                                        if (inputStreamReader != null) {
                                            inputStreamReader.close();
                                        }
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                    }
                                    uRLConnection3 = this.urlConnection;
                                    if (uRLConnection3 != null) {
                                        if (uRLConnection3 instanceof HttpURLConnection) {
                                            ((HttpURLConnection) uRLConnection3).disconnect();
                                        } else if (uRLConnection3 instanceof HttpsURLConnection) {
                                            ((HttpsURLConnection) uRLConnection3).disconnect();
                                        }
                                    }
                                    return false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedReader2 = bufferedReader;
                                    bufferedReader = bufferedReader2;
                                    inputStreamReader2 = inputStreamReader;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            if (inputStreamReader2 != null) {
                                                inputStreamReader2.close();
                                            }
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                        } catch (IOException e7) {
                                            e7.printStackTrace();
                                        }
                                    } else {
                                        if (inputStreamReader2 != null) {
                                            inputStreamReader2.close();
                                        }
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                    }
                                    uRLConnection2 = this.urlConnection;
                                    if (uRLConnection2 != null) {
                                        throw th;
                                    }
                                    if (!(uRLConnection2 instanceof HttpURLConnection)) {
                                        ((HttpURLConnection) uRLConnection2).disconnect();
                                        throw th;
                                    }
                                    if (uRLConnection2 instanceof HttpsURLConnection) {
                                        throw th;
                                    }
                                    ((HttpsURLConnection) uRLConnection2).disconnect();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Exception e8) {
                            e2 = e8;
                            bufferedReader = null;
                            e3 = e2;
                            e3.printStackTrace();
                            if (inputStream != null) {
                                inputStream.close();
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                            } else {
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                            }
                            uRLConnection3 = this.urlConnection;
                            if (uRLConnection3 != null) {
                                if (uRLConnection3 instanceof HttpURLConnection) {
                                    ((HttpURLConnection) uRLConnection3).disconnect();
                                } else if (uRLConnection3 instanceof HttpsURLConnection) {
                                    ((HttpsURLConnection) uRLConnection3).disconnect();
                                }
                            }
                            return false;
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedReader = bufferedReader2;
                        }
                    } catch (Exception e9) {
                        e2 = e9;
                        inputStreamReader = null;
                        bufferedReader = null;
                        e3 = e2;
                        e3.printStackTrace();
                        if (inputStream != null) {
                            inputStream.close();
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } else {
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        }
                        uRLConnection3 = this.urlConnection;
                        if (uRLConnection3 != null) {
                            if (uRLConnection3 instanceof HttpURLConnection) {
                                ((HttpURLConnection) uRLConnection3).disconnect();
                            } else if (uRLConnection3 instanceof HttpsURLConnection) {
                                ((HttpsURLConnection) uRLConnection3).disconnect();
                            }
                        }
                        return false;
                    } catch (Throwable th5) {
                        th = th5;
                        bufferedReader = null;
                        if (inputStream != null) {
                            inputStream.close();
                            if (inputStreamReader2 != null) {
                                inputStreamReader2.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } else {
                            if (inputStreamReader2 != null) {
                                inputStreamReader2.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        }
                        uRLConnection2 = this.urlConnection;
                        if (uRLConnection2 != null) {
                            throw th;
                        }
                        if (!(uRLConnection2 instanceof HttpURLConnection)) {
                            ((HttpURLConnection) uRLConnection2).disconnect();
                            throw th;
                        }
                        if (uRLConnection2 instanceof HttpsURLConnection) {
                            throw th;
                        }
                        ((HttpsURLConnection) uRLConnection2).disconnect();
                        throw th;
                    }
                } else {
                    errorStream = getErrorStream();
                    try {
                        inputStreamReader = new InputStreamReader(errorStream);
                        try {
                            bufferedReader = new BufferedReader(inputStreamReader);
                            try {
                                sb = new StringBuilder();
                                while (true) {
                                    line = bufferedReader.readLine();
                                    if (line != null) {
                                        break;
                                    }
                                    sb.append(line);
                                }
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("StatusCode", responseCode);
                                jSONObject.put("ResponseStr", sb.toString());
                                this.mHttpResponse = jSONObject.toString();
                                if (errorStream != null) {
                                    try {
                                        errorStream.close();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                inputStreamReader.close();
                                bufferedReader.close();
                                uRLConnection4 = this.urlConnection;
                                if (uRLConnection4 != null) {
                                    if (uRLConnection4 instanceof HttpURLConnection) {
                                        ((HttpURLConnection) uRLConnection4).disconnect();
                                    } else if (uRLConnection4 instanceof HttpsURLConnection) {
                                        ((HttpsURLConnection) uRLConnection4).disconnect();
                                    }
                                }
                                return false;
                            } catch (Exception e11) {
                                e = e11;
                                e3 = e;
                                inputStream = errorStream;
                                e3.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } else {
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                }
                                uRLConnection3 = this.urlConnection;
                                if (uRLConnection3 != null) {
                                    if (uRLConnection3 instanceof HttpURLConnection) {
                                        ((HttpURLConnection) uRLConnection3).disconnect();
                                    } else if (uRLConnection3 instanceof HttpsURLConnection) {
                                        ((HttpsURLConnection) uRLConnection3).disconnect();
                                    }
                                }
                                return false;
                            } catch (Throwable th6) {
                                th = th6;
                                inputStream = errorStream;
                                bufferedReader2 = bufferedReader;
                                bufferedReader = bufferedReader2;
                                inputStreamReader2 = inputStreamReader;
                                if (inputStream != null) {
                                    inputStream.close();
                                    if (inputStreamReader2 != null) {
                                        inputStreamReader2.close();
                                    }
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } else {
                                    if (inputStreamReader2 != null) {
                                        inputStreamReader2.close();
                                    }
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                }
                                uRLConnection2 = this.urlConnection;
                                if (uRLConnection2 != null) {
                                    throw th;
                                }
                                if (!(uRLConnection2 instanceof HttpURLConnection)) {
                                    ((HttpURLConnection) uRLConnection2).disconnect();
                                    throw th;
                                }
                                if (uRLConnection2 instanceof HttpsURLConnection) {
                                    throw th;
                                }
                                ((HttpsURLConnection) uRLConnection2).disconnect();
                                throw th;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            bufferedReader = null;
                        } catch (Throwable th7) {
                            th = th7;
                            bufferedReader = null;
                            inputStream = errorStream;
                        }
                    } catch (Exception e13) {
                        e2 = e13;
                        inputStream = errorStream;
                        inputStreamReader = null;
                        bufferedReader = null;
                        e3 = e2;
                        e3.printStackTrace();
                        if (inputStream != null) {
                            inputStream.close();
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } else {
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        }
                        uRLConnection3 = this.urlConnection;
                        if (uRLConnection3 != null) {
                            if (uRLConnection3 instanceof HttpURLConnection) {
                                ((HttpURLConnection) uRLConnection3).disconnect();
                            } else if (uRLConnection3 instanceof HttpsURLConnection) {
                                ((HttpsURLConnection) uRLConnection3).disconnect();
                            }
                        }
                        return false;
                    } catch (Throwable th8) {
                        th = th8;
                        inputStream = errorStream;
                        bufferedReader = null;
                        if (inputStream != null) {
                            inputStream.close();
                            if (inputStreamReader2 != null) {
                                inputStreamReader2.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } else {
                            if (inputStreamReader2 != null) {
                                inputStreamReader2.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        }
                        uRLConnection2 = this.urlConnection;
                        if (uRLConnection2 != null) {
                            throw th;
                        }
                        if (!(uRLConnection2 instanceof HttpURLConnection)) {
                            ((HttpURLConnection) uRLConnection2).disconnect();
                            throw th;
                        }
                        if (uRLConnection2 instanceof HttpsURLConnection) {
                            throw th;
                        }
                        ((HttpsURLConnection) uRLConnection2).disconnect();
                        throw th;
                    }
                }
            } catch (Exception e14) {
                e2 = e14;
                inputStream = null;
            } catch (Throwable th9) {
                th = th9;
                inputStream = null;
            }
            inputStreamReader2 = inputStreamReader;
            if (inputStream != null) {
                inputStream.close();
                if (inputStreamReader2 != null) {
                    inputStreamReader2.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            } else {
                if (inputStreamReader2 != null) {
                    inputStreamReader2.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            }
            uRLConnection2 = this.urlConnection;
            if (uRLConnection2 != null) {
                throw th;
            }
            if (!(uRLConnection2 instanceof HttpURLConnection)) {
                ((HttpURLConnection) uRLConnection2).disconnect();
                throw th;
            }
            if (uRLConnection2 instanceof HttpsURLConnection) {
                throw th;
            }
            ((HttpsURLConnection) uRLConnection2).disconnect();
            throw th;
        }
        httpUrlConnection = getHttpsUrlConnection(this.mUrl, Constants.HTTP_GET, null);
        this.urlConnection = httpUrlConnection;
        uRLConnection = this.urlConnection;
        if (uRLConnection == null) {
            return false;
        }
        str = this.mReferer;
        if (str != null) {
            uRLConnection.setRequestProperty(HttpHeaders.REFERER, str);
        }
        str2 = this.mUserAgent;
        if (str2 != null) {
            this.urlConnection.addRequestProperty(HttpHeaders.USER_AGENT, str2);
        }
        strArr = this.mCustomHeaders;
        if (strArr != null) {
            while (i < r4) {
                if (str3 != null) {
                    strArrSplit = str3.split(":");
                    if (strArrSplit.length == 2) {
                        this.urlConnection.addRequestProperty(strArrSplit[0], strArrSplit[1]);
                    }
                }
            }
        }
        responseCode = getResponseCode();
        if (responseCode == 200) {
            inputStream = this.urlConnection.getInputStream();
            inputStreamReader = new InputStreamReader(inputStream);
            bufferedReader = new BufferedReader(inputStreamReader);
            sb2 = new StringBuilder();
            while (true) {
                line2 = bufferedReader.readLine();
                if (line2 != null) {
                    break;
                    break;
                }
                sb2.append(line2);
            }
            this.mHttpResponse = sb2.toString();
            if (inputStream != null) {
                inputStream.close();
            }
            inputStreamReader.close();
            bufferedReader.close();
            uRLConnection5 = this.urlConnection;
            if (uRLConnection5 != null) {
                if (uRLConnection5 instanceof HttpURLConnection) {
                    ((HttpURLConnection) uRLConnection5).disconnect();
                } else if (uRLConnection5 instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) uRLConnection5).disconnect();
                }
            }
            return true;
        }
        errorStream = getErrorStream();
        inputStreamReader = new InputStreamReader(errorStream);
        bufferedReader = new BufferedReader(inputStreamReader);
        sb = new StringBuilder();
        while (true) {
            line = bufferedReader.readLine();
            if (line != null) {
                break;
                break;
            }
            sb.append(line);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("StatusCode", responseCode);
        jSONObject2.put("ResponseStr", sb.toString());
        this.mHttpResponse = jSONObject2.toString();
        if (errorStream != null) {
            errorStream.close();
        }
        inputStreamReader.close();
        bufferedReader.close();
        uRLConnection4 = this.urlConnection;
        if (uRLConnection4 != null) {
            if (uRLConnection4 instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection4).disconnect();
            } else if (uRLConnection4 instanceof HttpsURLConnection) {
                ((HttpsURLConnection) uRLConnection4).disconnect();
            }
        }
        return false;
        inputStreamReader2 = inputStreamReader;
        if (inputStream != null) {
            inputStream.close();
            if (inputStreamReader2 != null) {
                inputStreamReader2.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        } else {
            if (inputStreamReader2 != null) {
                inputStreamReader2.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        }
        uRLConnection2 = this.urlConnection;
        if (uRLConnection2 != null) {
            throw th;
        }
        if (!(uRLConnection2 instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection2).disconnect();
            throw th;
        }
        if (uRLConnection2 instanceof HttpsURLConnection) {
            throw th;
        }
        ((HttpsURLConnection) uRLConnection2).disconnect();
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0113  */
    /* JADX WARN: Code duplicated, block: B:103:0x0117  */
    /* JADX WARN: Code duplicated, block: B:105:0x011b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0121  */
    /* JADX WARN: Code duplicated, block: B:108:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x0088 A[EDGE_INSN: B:124:0x0088->B:37:0x0088 BREAK  A[LOOP:1: B:119:0x007d->B:36:0x0084], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:12:0x002e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:23:0x004c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:31:0x006e A[Catch: all -> 0x00cb, Exception -> 0x00cf, TRY_LEAVE, TryCatch #9 {Exception -> 0x00cf, all -> 0x00cb, blocks: (B:29:0x0066, B:31:0x006e), top: B:117:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0084 A[Catch: all -> 0x00b3, Exception -> 0x00b6, LOOP:1: B:119:0x007d->B:36:0x0084, LOOP_END, TryCatch #8 {Exception -> 0x00b6, all -> 0x00b3, blocks: (B:34:0x007d, B:36:0x0084, B:37:0x0088), top: B:119:0x007d }] */
    /* JADX WARN: Code duplicated, block: B:46:0x009f  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00df A[Catch: IOException -> 0x00db, TRY_LEAVE, TryCatch #8 {IOException -> 0x00db, blocks: (B:75:0x00d7, B:79:0x00df), top: B:115:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee A[PHI: r9
      0x00ee: PHI (r9v17 java.net.URLConnection) = (r9v20 java.net.URLConnection), (r9v23 java.net.URLConnection) binds: [B:85:0x00ec, B:64:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:89:0x00f8 A[PHI: r9
      0x00f8: PHI (r9v15 java.net.URLConnection) = (r9v20 java.net.URLConnection), (r9v23 java.net.URLConnection) binds: [B:88:0x00f6, B:67:0x00c8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:96:0x0108 A[Catch: IOException -> 0x0104, TRY_LEAVE, TryCatch #4 {IOException -> 0x0104, blocks: (B:92:0x0100, B:96:0x0108), top: B:112:0x0100 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x0048, please report this as an issue */
    public boolean doPost(byte[] bArr) throws Throwable {
        URLConnection httpUrlConnection;
        URLConnection uRLConnection;
        String str;
        String str2;
        String[] strArr;
        Throwable th;
        InputStream inputStream;
        Exception e2;
        URLConnection uRLConnection2;
        URLConnection uRLConnection3;
        byte[] bArr2;
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        URLConnection uRLConnection4;
        int i2;
        String[] strArrSplit;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        if (this.mUrl.startsWith("https://")) {
            httpUrlConnection = getHttpsUrlConnection(this.mUrl, Constants.HTTP_POST, bArr);
        } else {
            if (this.mUrl.startsWith("http://")) {
                httpUrlConnection = getHttpUrlConnection(this.mUrl, Constants.HTTP_POST, bArr);
            } else {
                this.urlConnection = null;
            }
            uRLConnection = this.urlConnection;
            if (uRLConnection == null) {
                return false;
            }
            str = this.mReferer;
            if (str != null) {
                uRLConnection.setRequestProperty(HttpHeaders.REFERER, str);
            }
            str2 = this.mUserAgent;
            if (str2 != null) {
                this.urlConnection.addRequestProperty(HttpHeaders.USER_AGENT, str2);
            }
            strArr = this.mCustomHeaders;
            if (strArr != null) {
                for (String str3 : strArr) {
                    if (str3 != null) {
                        strArrSplit = str3.split(":");
                        if (strArrSplit.length == 2) {
                            this.urlConnection.addRequestProperty(strArrSplit[0], strArrSplit[1]);
                        }
                    }
                }
            }
            try {
                if (getResponseCode() == 200) {
                    uRLConnection3 = this.urlConnection;
                    if (uRLConnection3 != null) {
                        if (uRLConnection3 instanceof HttpURLConnection) {
                            ((HttpURLConnection) uRLConnection3).disconnect();
                        } else if (uRLConnection3 instanceof HttpsURLConnection) {
                            ((HttpsURLConnection) uRLConnection3).disconnect();
                        }
                    }
                    return false;
                }
                inputStream = this.urlConnection.getInputStream();
                try {
                    try {
                        bArr2 = new byte[4096];
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            try {
                                i = inputStream.read(bArr2);
                                if (i != -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr2, 0, i);
                            } catch (Exception e3) {
                                e2 = e3;
                                byteArrayOutputStream2 = byteArrayOutputStream;
                            } catch (Throwable th2) {
                                th = th2;
                                byteArrayOutputStream2 = byteArrayOutputStream;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        if (byteArrayOutputStream2 != null) {
                                            byteArrayOutputStream2.close();
                                        }
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                        uRLConnection2 = this.urlConnection;
                                        if (uRLConnection2 != null) {
                                            throw th;
                                        }
                                        if (!(uRLConnection2 instanceof HttpURLConnection)) {
                                            ((HttpURLConnection) uRLConnection2).disconnect();
                                            throw th;
                                        }
                                        if (uRLConnection2 instanceof HttpsURLConnection) {
                                            throw th;
                                        }
                                        ((HttpsURLConnection) uRLConnection2).disconnect();
                                        throw th;
                                    }
                                } else if (byteArrayOutputStream2 != null) {
                                    byteArrayOutputStream2.close();
                                }
                                uRLConnection2 = this.urlConnection;
                                if (uRLConnection2 != null) {
                                    throw th;
                                }
                                if (!(uRLConnection2 instanceof HttpURLConnection)) {
                                    ((HttpURLConnection) uRLConnection2).disconnect();
                                    throw th;
                                }
                                if (uRLConnection2 instanceof HttpsURLConnection) {
                                    throw th;
                                }
                                ((HttpsURLConnection) uRLConnection2).disconnect();
                                throw th;
                            }
                        }
                        this.mHttpResponse = byteArrayOutputStream.toString();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        byteArrayOutputStream.close();
                        uRLConnection4 = this.urlConnection;
                        if (uRLConnection4 != null) {
                            if (uRLConnection4 instanceof HttpURLConnection) {
                                ((HttpURLConnection) uRLConnection4).disconnect();
                            } else if (uRLConnection4 instanceof HttpsURLConnection) {
                                ((HttpsURLConnection) uRLConnection4).disconnect();
                            }
                        }
                        return true;
                    } catch (Exception e6) {
                        e2 = e6;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e7) {
                e2 = e7;
                inputStream = null;
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
            }
        }
        this.urlConnection = httpUrlConnection;
        uRLConnection = this.urlConnection;
        if (uRLConnection == null) {
            return false;
        }
        str = this.mReferer;
        if (str != null) {
            uRLConnection.setRequestProperty(HttpHeaders.REFERER, str);
        }
        str2 = this.mUserAgent;
        if (str2 != null) {
            this.urlConnection.addRequestProperty(HttpHeaders.USER_AGENT, str2);
        }
        strArr = this.mCustomHeaders;
        if (strArr != null) {
            while (i2 < r3) {
                if (str3 != null) {
                    strArrSplit = str3.split(":");
                    if (strArrSplit.length == 2) {
                        this.urlConnection.addRequestProperty(strArrSplit[0], strArrSplit[1]);
                    }
                }
            }
        }
        if (getResponseCode() == 200) {
            uRLConnection3 = this.urlConnection;
            if (uRLConnection3 != null) {
                if (uRLConnection3 instanceof HttpURLConnection) {
                    ((HttpURLConnection) uRLConnection3).disconnect();
                } else if (uRLConnection3 instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) uRLConnection3).disconnect();
                }
            }
            return false;
        }
        inputStream = this.urlConnection.getInputStream();
        bArr2 = new byte[4096];
        byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            i = inputStream.read(bArr2);
            if (i != -1) {
                break;
                break;
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
        this.mHttpResponse = byteArrayOutputStream.toString();
        if (inputStream != null) {
            inputStream.close();
        }
        byteArrayOutputStream.close();
        uRLConnection4 = this.urlConnection;
        if (uRLConnection4 != null) {
            if (uRLConnection4 instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection4).disconnect();
            } else if (uRLConnection4 instanceof HttpsURLConnection) {
                ((HttpsURLConnection) uRLConnection4).disconnect();
            }
        }
        return true;
        e2.printStackTrace();
        if (inputStream != null) {
            try {
                inputStream.close();
                if (byteArrayOutputStream2 != null) {
                    byteArrayOutputStream2.close();
                }
            } catch (IOException e8) {
                e8.printStackTrace();
            }
        } else if (byteArrayOutputStream2 != null) {
            byteArrayOutputStream2.close();
        }
        uRLConnection3 = this.urlConnection;
        if (uRLConnection3 != null) {
            if (uRLConnection3 instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection3).disconnect();
            } else if (uRLConnection3 instanceof HttpsURLConnection) {
                ((HttpsURLConnection) uRLConnection3).disconnect();
            }
        }
        return false;
    }

    public String getResponse() {
        return this.mHttpResponse;
    }

    public void setCustomHeaders(String[] strArr) {
        this.mCustomHeaders = strArr;
    }

    public void setHttpProxy(String str) {
        this.mHttpProxy = str;
    }

    public void setRefer(String str) {
        this.mReferer = str;
    }

    public void setTimeout(int i) {
        this.mNetworkTimeout = i;
    }

    public void setUerAgent(String str) {
        this.mUserAgent = str;
    }

    public void setVerifyCert() {
        this.mTrustAllCert = false;
    }

    public void stop() {
        LogUtil.d(TAG, "HttpClientHelper stop().... urlConnection = " + this.urlConnection);
        if (this.urlConnection != null) {
            sThreadCachePool.execute(new Runnable() { // from class: com.alivc.live.utils.HttpClientHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (HttpClientHelper.this.urlConnection instanceof HttpsURLConnection) {
                            LogUtil.d(HttpClientHelper.TAG, "HttpClientHelper stop().... HttpsURLConnection.disconnect ");
                            ((HttpsURLConnection) HttpClientHelper.this.urlConnection).disconnect();
                        } else if (HttpClientHelper.this.urlConnection instanceof HttpURLConnection) {
                            LogUtil.d(HttpClientHelper.TAG, "HttpClientHelper stop().... HttpURLConnection.disconnect ");
                            ((HttpURLConnection) HttpClientHelper.this.urlConnection).disconnect();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }
}
