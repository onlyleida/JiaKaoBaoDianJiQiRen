package com.autonavi.base.amap.mapcore.maploader;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.mapcore.util.c5;
import com.amap.api.mapcore.util.e6;
import com.amap.api.mapcore.util.f5;
import com.amap.api.mapcore.util.g5;
import com.amap.api.mapcore.util.h7;
import com.amap.api.mapcore.util.m5;
import com.amap.api.mapcore.util.r2;
import com.amap.api.mapcore.util.r3;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.base.ae.gmap.GLMapEngine;
import com.google.common.net.HttpHeaders;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes5.dex */
public class AMapLoader implements h7.a {
    private static final int GET_METHOD = 0;
    private static final String NETWORK_RESPONSE_CODE_STRING = "网络异常状态码：";
    private static String mDiu;
    private h7 downloadManager;
    private volatile boolean isCanceled = false;
    public boolean isFinish = false;
    ADataRequestParam mDataRequestParam;
    private int mEngineID;
    GLMapEngine mGLMapEngine;
    private boolean mRequestCancel;

    public static class ADataRequestParam {
        public byte[] enCodeString;
        public long handler;
        public int nCompress;
        public int nRequestType;
        public String requestBaseUrl;
        public String requestUrl;
    }

    public static class AMapGridDownloadRequest extends r2 {
        private final Context mContext;
        private byte[] postEntityBytes;
        private String sUrl;
        private String userAgent;

        public AMapGridDownloadRequest(Context context, String str, String str2) {
            this.mContext = context;
            this.sUrl = str;
            this.userAgent = str2;
        }

        @Override // com.amap.api.mapcore.util.k7
        public byte[] getEntityBytes() {
            return this.postEntityBytes;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getIPV6URL() {
            return r3.B(getURL());
        }

        @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
        public Map<String, String> getParams() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public Map<String, String> getRequestHead() {
            m5 m5VarU0 = r3.u0();
            String strE = m5VarU0 != null ? m5VarU0.e() : null;
            String strJ = c5.j(this.mContext);
            try {
                strJ = URLEncoder.encode(strJ, "UTF-8");
            } catch (Throwable unused) {
            }
            Hashtable hashtable = new Hashtable(16);
            hashtable.put(HttpHeaders.USER_AGENT, this.userAgent);
            hashtable.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", strE, "3dmap"));
            hashtable.put("x-INFO", f5.b(this.mContext));
            hashtable.put("key", strJ);
            hashtable.put("logversion", "2.1");
            return hashtable;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getURL() {
            return this.sUrl;
        }

        @Override // com.amap.api.mapcore.util.k7
        public boolean isSupportIPV6() {
            return true;
        }

        public void setPostEntityBytes(byte[] bArr) {
            this.postEntityBytes = bArr;
        }
    }

    public AMapLoader(int i, GLMapEngine gLMapEngine, ADataRequestParam aDataRequestParam) {
        this.mEngineID = 0;
        this.mRequestCancel = false;
        this.mDataRequestParam = aDataRequestParam;
        this.mEngineID = i;
        this.mGLMapEngine = gLMapEngine;
        this.mRequestCancel = false;
    }

    private String generateQueryString(Context context, String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        String strJ = c5.j(this.mGLMapEngine.getContext());
        try {
            strJ = URLEncoder.encode(strJ, "UTF-8");
        } catch (Throwable unused) {
        }
        stringBuffer.append("&key=");
        stringBuffer.append(strJ);
        String strSortReEncoderParams = sortReEncoderParams(stringBuffer.toString());
        String strA = f5.a();
        stringBuffer.append("&ts=" + strA);
        stringBuffer.append("&scode=" + f5.d(context, strA, strSortReEncoderParams));
        stringBuffer.append("&dip=");
        stringBuffer.append("16300");
        return stringBuffer.toString();
    }

    private String getEncodeRequestParams(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String sortReEncoderParams(String str) {
        String[] strArrSplit = str.split("&");
        Arrays.sort(strArrSplit);
        StringBuffer stringBuffer = new StringBuffer();
        for (String str2 : strArrSplit) {
            stringBuffer.append(strReEncoder(str2));
            stringBuffer.append("&");
        }
        String string = stringBuffer.toString();
        return string.length() > 1 ? (String) string.subSequence(0, string.length() - 1) : str;
    }

    private String strReEncoder(String str) {
        if (str == null) {
            return str;
        }
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e2) {
            e6.r(e2, "AbstractProtocalHandler", "strReEncoder");
            return "";
        } catch (Exception e3) {
            e6.r(e3, "AbstractProtocalHandler", "strReEncoderException");
            return "";
        }
    }

    public void doCancel() {
        this.mRequestCancel = true;
        if (this.downloadManager == null || this.isCanceled) {
            return;
        }
        synchronized (this.downloadManager) {
            try {
                this.isCanceled = true;
                this.downloadManager.a();
                this.mGLMapEngine.setMapLoaderToTask(this.mEngineID, this.mDataRequestParam.handler, null);
            } catch (Throwable th) {
                e6.r(th, "AMapLoader", "doCancel");
            }
        }
    }

    public void doRequest() {
        if (this.mRequestCancel) {
            return;
        }
        ADataRequestParam aDataRequestParam = this.mDataRequestParam;
        String str = aDataRequestParam.requestBaseUrl;
        String str2 = aDataRequestParam.requestUrl;
        if (!str.endsWith("?")) {
            str = str + "?";
        }
        String requestParams = getRequestParams(str2.replaceAll(VoiceWakeuperAidl.PARAMS_SEPARATE, getEncodeRequestParams(VoiceWakeuperAidl.PARAMS_SEPARATE).toString()), str != null && str.contains("http://m5.amap.com/"), this.mDataRequestParam.nRequestType);
        StringBuffer stringBuffer = new StringBuffer();
        if (this.mDataRequestParam.nRequestType == 0) {
            stringBuffer.append(requestParams);
            stringBuffer.append("&csid=" + UUID.randomUUID().toString());
        } else {
            stringBuffer.append("csid=" + UUID.randomUUID().toString());
        }
        try {
            AMapGridDownloadRequest aMapGridDownloadRequest = new AMapGridDownloadRequest(this.mGLMapEngine.getContext(), str + generateQueryString(this.mGLMapEngine.getContext(), stringBuffer.toString()), this.mGLMapEngine.getUserAgent());
            aMapGridDownloadRequest.setConnectionTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
            aMapGridDownloadRequest.setSoTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
            if (this.mDataRequestParam.nRequestType != 0) {
                aMapGridDownloadRequest.setPostEntityBytes(requestParams.getBytes("UTF-8"));
            }
            h7 h7Var = new h7(aMapGridDownloadRequest, 0L, -1L, MapsInitializer.getProtocol() == 2);
            this.downloadManager = h7Var;
            h7Var.b(this);
        } catch (Throwable th) {
            try {
                onException(th);
            } finally {
                doCancel();
            }
        }
    }

    public String getDeviceId(Context context) {
        if (context != null) {
            return g5.a0(context);
        }
        return null;
    }

    protected String getRequestParams(String str, boolean z, int i) {
        if (mDiu == null) {
            mDiu = getDeviceId(this.mGLMapEngine.getContext());
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        if (z) {
            stringBuffer.append("&channel=amap7&div=GNaviMap");
            stringBuffer.append("&diu=");
            stringBuffer.append(mDiu);
        } else {
            stringBuffer.append("&channel=amapapi");
            stringBuffer.append("&div=GNaviMap");
            stringBuffer.append("&diu=");
            stringBuffer.append(mDiu);
        }
        return stringBuffer.toString();
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onDownload(byte[] bArr, long j) {
        GLMapEngine gLMapEngine;
        ADataRequestParam aDataRequestParam;
        if (bArr == null || (gLMapEngine = this.mGLMapEngine) == null || (aDataRequestParam = this.mDataRequestParam) == null) {
            return;
        }
        gLMapEngine.receiveNetData(this.mEngineID, aDataRequestParam.handler, bArr, bArr.length);
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onException(Throwable th) {
        ADataRequestParam aDataRequestParam;
        ADataRequestParam aDataRequestParam2;
        int iIndexOf;
        try {
            String str = new String(th.getMessage().getBytes("UTF-8"), "UTF-8");
            int i = (TextUtils.isEmpty(str) || (iIndexOf = str.indexOf(NETWORK_RESPONSE_CODE_STRING)) == -1) ? -1 : Integer.parseInt(str.substring(iIndexOf + 8));
            GLMapEngine gLMapEngine = this.mGLMapEngine;
            if (gLMapEngine != null && (aDataRequestParam2 = this.mDataRequestParam) != null) {
                gLMapEngine.netError(this.mEngineID, aDataRequestParam2.handler, -1, i);
            }
        } catch (Throwable unused) {
            GLMapEngine gLMapEngine2 = this.mGLMapEngine;
            if (gLMapEngine2 != null && (aDataRequestParam = this.mDataRequestParam) != null) {
                gLMapEngine2.netError(this.mEngineID, aDataRequestParam.handler, -1, -1);
            }
        }
        e6.r(th, "AMapLoader", "download onException");
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onFinish() {
        ADataRequestParam aDataRequestParam;
        GLMapEngine gLMapEngine = this.mGLMapEngine;
        if (gLMapEngine == null || (aDataRequestParam = this.mDataRequestParam) == null) {
            return;
        }
        gLMapEngine.finishDownLoad(this.mEngineID, aDataRequestParam.handler);
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onStop() {
        ADataRequestParam aDataRequestParam;
        GLMapEngine gLMapEngine = this.mGLMapEngine;
        if (gLMapEngine == null || (aDataRequestParam = this.mDataRequestParam) == null) {
            return;
        }
        gLMapEngine.netStop(this.mEngineID, aDataRequestParam.handler, -1);
    }
}
