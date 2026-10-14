package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.google.common.base.Predicate;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final int HTTP_STATUS_PERMANENT_REDIRECT = 308;
    private static final int HTTP_STATUS_TEMPORARY_REDIRECT = 307;
    private static final long MAX_BYTES_TO_DRAIN = 2048;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "DefaultHttpDataSource";
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesToRead;
    private final int connectTimeoutMillis;
    private HttpURLConnection connection;
    private Predicate<String> contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private InputStream inputStream;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private int responseCode;
    private final String userAgent;

    public static final class Factory implements HttpDataSource.Factory {
        private boolean allowCrossProtocolRedirects;
        private Predicate<String> contentTypePredicate;
        private TransferListener transferListener;
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        @Deprecated
        public final HttpDataSource.RequestProperties getDefaultRequestProperties() {
            return this.defaultRequestProperties;
        }

        public Factory setAllowCrossProtocolRedirects(boolean z) {
            this.allowCrossProtocolRedirects = z;
            return this;
        }

        public Factory setConnectTimeoutMs(int i) {
            this.connectTimeoutMs = i;
            return this;
        }

        public Factory setContentTypePredicate(Predicate<String> predicate) {
            this.contentTypePredicate = predicate;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
        }

        public Factory setReadTimeoutMs(int i) {
            this.readTimeoutMs = i;
            return this;
        }

        public Factory setTransferListener(TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        public Factory setUserAgent(String str) {
            this.userAgent = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory, com.google.android.exoplayer2.upstream.DataSource.Factory
        public DefaultHttpDataSource createDataSource() {
            DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.defaultRequestProperties, this.contentTypePredicate);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultHttpDataSource.addTransferListener(transferListener);
            }
            return defaultHttpDataSource;
        }
    }

    private void closeConnectionQuietly() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                Log.e(TAG, "Unexpected error while disconnecting", e2);
            }
            this.connection = null;
        }
    }

    private static URL handleRedirect(URL url, String str) throws IOException {
        if (str == null) {
            throw new ProtocolException("Null location redirect");
        }
        URL url2 = new URL(url, str);
        String protocol = url2.getProtocol();
        if ("https".equals(protocol) || "http".equals(protocol)) {
            return url2;
        }
        String strValueOf = String.valueOf(protocol);
        throw new ProtocolException(strValueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(strValueOf) : new String("Unsupported protocol redirect: "));
    }

    private static boolean isCompressed(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpHeaders.CONTENT_ENCODING));
    }

    private HttpURLConnection makeConnection(DataSpec dataSpec) throws IOException {
        DataSpec dataSpec2 = dataSpec;
        URL url = new URL(dataSpec2.uri.toString());
        int i = dataSpec2.httpMethod;
        byte[] bArr = dataSpec2.httpBody;
        long j = dataSpec2.position;
        long j2 = dataSpec2.length;
        boolean zIsFlagSet = dataSpec2.isFlagSet(1);
        if (!this.allowCrossProtocolRedirects) {
            return makeConnection(url, i, bArr, j, j2, zIsFlagSet, true, dataSpec2.httpRequestHeaders);
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 > 20) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Too many redirects: ");
                sb.append(i3);
                throw new NoRouteToHostException(sb.toString());
            }
            byte[] bArr2 = bArr;
            long j3 = j2;
            long j4 = j;
            HttpURLConnection httpURLConnectionMakeConnection = makeConnection(url, i, bArr, j, j2, zIsFlagSet, false, dataSpec2.httpRequestHeaders);
            int responseCode = httpURLConnectionMakeConnection.getResponseCode();
            String headerField = httpURLConnectionMakeConnection.getHeaderField(HttpHeaders.LOCATION);
            if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionMakeConnection.disconnect();
                url = handleRedirect(url, headerField);
            } else {
                if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionMakeConnection;
                }
                httpURLConnectionMakeConnection.disconnect();
                url = handleRedirect(url, headerField);
                bArr2 = null;
                i = 1;
            }
            i2 = i3;
            bArr = bArr2;
            j2 = j3;
            j = j4;
            dataSpec2 = dataSpec;
        }
    }

    private static void maybeTerminateInputStream(HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = Util.SDK_INT) < 19 || i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) Assertions.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            }
        } catch (Exception unused) {
        }
    }

    private int readInternal(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesToRead;
        if (j != -1) {
            long j2 = j - this.bytesRead;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int i3 = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.bytesRead += (long) i3;
        bytesTransferred(i3);
        return i3;
    }

    private boolean skipFully(long j) throws IOException {
        if (j == 0) {
            return true;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int i = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (i == -1) {
                return false;
            }
            j -= (long) i;
            bytesTransferred(i);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                long j = this.bytesToRead;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.bytesRead;
                }
                maybeTerminateInputStream(this.connection, j2);
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    throw new HttpDataSource.HttpDataSourceException(e2, (DataSpec) Util.castNonNull(this.dataSpec), 3);
                }
            }
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        } catch (Throwable th) {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public int getResponseCode() {
        int i;
        if (this.connection == null || (i = this.responseCode) <= 0) {
            return -1;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.upstream.BaseDataSource, com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.connection;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] byteArray;
        this.dataSpec = dataSpec;
        long j = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            HttpURLConnection httpURLConnectionMakeConnection = makeConnection(dataSpec);
            this.connection = httpURLConnectionMakeConnection;
            try {
                this.responseCode = httpURLConnectionMakeConnection.getResponseCode();
                String responseMessage = httpURLConnectionMakeConnection.getResponseMessage();
                int i = this.responseCode;
                if (i < 200 || i > 299) {
                    Map<String, List<String>> headerFields = httpURLConnectionMakeConnection.getHeaderFields();
                    if (this.responseCode == 416) {
                        if (dataSpec.position == HttpUtil.getDocumentSize(httpURLConnectionMakeConnection.getHeaderField(HttpHeaders.CONTENT_RANGE))) {
                            this.opened = true;
                            transferStarted(dataSpec);
                            long j2 = dataSpec.length;
                            if (j2 != -1) {
                                return j2;
                            }
                            return 0L;
                        }
                    }
                    InputStream errorStream = httpURLConnectionMakeConnection.getErrorStream();
                    try {
                        byteArray = errorStream != null ? Util.toByteArray(errorStream) : Util.EMPTY_BYTE_ARRAY;
                    } catch (IOException unused) {
                        byteArray = Util.EMPTY_BYTE_ARRAY;
                    }
                    closeConnectionQuietly();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, headerFields, dataSpec, byteArray);
                    if (this.responseCode != 416) {
                        throw invalidResponseCodeException;
                    }
                    invalidResponseCodeException.initCause(new DataSourceException(0));
                    throw invalidResponseCodeException;
                }
                String contentType = httpURLConnectionMakeConnection.getContentType();
                Predicate<String> predicate = this.contentTypePredicate;
                if (predicate != null && !predicate.apply(contentType)) {
                    closeConnectionQuietly();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
                }
                if (this.responseCode == 200) {
                    long j3 = dataSpec.position;
                    if (j3 != 0) {
                        j = j3;
                    }
                }
                boolean zIsCompressed = isCompressed(httpURLConnectionMakeConnection);
                if (zIsCompressed) {
                    this.bytesToRead = dataSpec.length;
                } else {
                    long j4 = dataSpec.length;
                    if (j4 != -1) {
                        this.bytesToRead = j4;
                    } else {
                        long contentLength = HttpUtil.getContentLength(httpURLConnectionMakeConnection.getHeaderField(HttpHeaders.CONTENT_LENGTH), httpURLConnectionMakeConnection.getHeaderField(HttpHeaders.CONTENT_RANGE));
                        this.bytesToRead = contentLength != -1 ? contentLength - j : -1L;
                    }
                }
                try {
                    this.inputStream = httpURLConnectionMakeConnection.getInputStream();
                    if (zIsCompressed) {
                        this.inputStream = new GZIPInputStream(this.inputStream);
                    }
                    this.opened = true;
                    transferStarted(dataSpec);
                    try {
                        if (skipFully(j)) {
                            return this.bytesToRead;
                        }
                        throw new DataSourceException(0);
                    } catch (IOException e2) {
                        closeConnectionQuietly();
                        throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, 1);
                    }
                } catch (IOException e3) {
                    closeConnectionQuietly();
                    throw new HttpDataSource.HttpDataSourceException(e3, dataSpec, 1);
                }
            } catch (IOException e4) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e4, dataSpec, 1);
            }
        } catch (IOException e5) {
            String message = e5.getMessage();
            if (message == null || !Ascii.toLowerCase(message).matches("cleartext http traffic.*not permitted.*")) {
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e5, dataSpec, 1);
            }
            throw new HttpDataSource.CleartextNotPermittedException(e5, dataSpec);
        }
    }

    HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            return readInternal(bArr, i, i2);
        } catch (IOException e2) {
            throw new HttpDataSource.HttpDataSourceException(e2, (DataSpec) Util.castNonNull(this.dataSpec), 2);
        }
    }

    @Deprecated
    public void setContentTypePredicate(Predicate<String> predicate) {
        this.contentTypePredicate = predicate;
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }

    @Deprecated
    public DefaultHttpDataSource() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public DefaultHttpDataSource(String str) {
        this(str, 8000, 8000);
    }

    @Deprecated
    public DefaultHttpDataSource(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public DefaultHttpDataSource(String str, int i, int i2, boolean z, HttpDataSource.RequestProperties requestProperties) {
        this(str, i, i2, z, requestProperties, null);
    }

    private DefaultHttpDataSource(String str, int i, int i2, boolean z, HttpDataSource.RequestProperties requestProperties, Predicate<String> predicate) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
        this.allowCrossProtocolRedirects = z;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = predicate;
        this.requestProperties = new HttpDataSource.RequestProperties();
    }

    private HttpURLConnection makeConnection(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnectionOpenConnection = openConnection(url);
        httpURLConnectionOpenConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnectionOpenConnection.setReadTimeout(this.readTimeoutMillis);
        HashMap map2 = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            map2.putAll(requestProperties.getSnapshot());
        }
        map2.putAll(this.requestProperties.getSnapshot());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionOpenConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2);
        if (strBuildRangeRequestHeader != null) {
            httpURLConnectionOpenConnection.setRequestProperty(HttpHeaders.RANGE, strBuildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            httpURLConnectionOpenConnection.setRequestProperty(HttpHeaders.USER_AGENT, str);
        }
        httpURLConnectionOpenConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, z ? "gzip" : "identity");
        httpURLConnectionOpenConnection.setInstanceFollowRedirects(z2);
        httpURLConnectionOpenConnection.setDoOutput(bArr != null);
        httpURLConnectionOpenConnection.setRequestMethod(DataSpec.getStringForHttpMethod(i));
        if (bArr != null) {
            httpURLConnectionOpenConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionOpenConnection.connect();
            OutputStream outputStream = httpURLConnectionOpenConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionOpenConnection.connect();
        }
        return httpURLConnectionOpenConnection;
    }
}
