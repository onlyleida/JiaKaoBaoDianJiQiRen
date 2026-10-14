package com.alivc.live.pusher.logreport.core;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.alivc.live.pusher.AlivcLivePusher;
import com.alivc.live.utils.APKVersionCodeUtils;
import com.alivc.live.utils.DeviceUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class LogParams {
    public String acs;
    public String duuid;
    public String extra;
    public boolean isAudioOnly;
    public boolean isExternStream;
    public boolean isPush;
    public boolean isVideoOnly;
    private Context mContext;
    private OnParamGetCallback mOnParamGetCallback;
    public String module;
    public String pushid;
    public String pushprotocol;
    public String pushurl;
    public String sesid;
    public String time;
    public String tm;
    public String topic;
    public String traceid;
    public String zone;
    public static String livesdkv = AlivcLivePusher.getSDKVersion();
    public static String app_id = null;
    public static String app_n = null;
    public static String osn = "Android";
    public static String osv = Build.VERSION.RELEASE;
    public static String den = Build.MODEL;
    public static String tt = null;
    public String lv = "1.0.0";
    public String envir = "RELEASE";

    public interface OnParamGetCallback {
        String getExtra();

        String getModule();

        String getPushId();

        String getPushProtocol();

        String getPushUrl();

        String getSessionId();

        String getTopic();

        Map<String, String> getTopicParam();

        String getTraceId();

        boolean isAudioOnly();

        boolean isExternStream();

        boolean isPush();

        boolean isVideoOnly();
    }

    public LogParams(Context context, OnParamGetCallback onParamGetCallback) {
        this.mOnParamGetCallback = null;
        this.mContext = context;
        this.mOnParamGetCallback = onParamGetCallback;
    }

    private void initStaticParam() {
        if (TextUtils.isEmpty(app_id)) {
            app_id = APKVersionCodeUtils.getPackageName(this.mContext);
        }
        if (TextUtils.isEmpty(app_n)) {
            app_n = APKVersionCodeUtils.getAppName(this.mContext);
        }
        if (TextUtils.isEmpty(tt)) {
            String str = "phone";
            tt = "phone";
            try {
                Context context = this.mContext;
                if (context != null && context.getResources() != null && this.mContext.getResources().getConfiguration() != null && (this.mContext.getResources().getConfiguration().screenLayout & 15) >= 3) {
                    str = "pad";
                }
                tt = str;
            } catch (Throwable unused) {
            }
        }
    }

    public Map<String, String> getLogPublicParams() {
        initStaticParam();
        this.acs = DeviceUtil.getNetWorkStatus(this.mContext);
        this.duuid = AliLiveInfoUtils.getDeviceUUID();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.tm = jCurrentTimeMillis + "";
        this.time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date(jCurrentTimeMillis));
        this.zone = TimeZone.getDefault().getDisplayName(true, 0);
        this.sesid = this.mOnParamGetCallback.getSessionId();
        this.pushprotocol = this.mOnParamGetCallback.getPushProtocol();
        this.isVideoOnly = this.mOnParamGetCallback.isVideoOnly();
        this.isAudioOnly = this.mOnParamGetCallback.isAudioOnly();
        this.isExternStream = this.mOnParamGetCallback.isExternStream();
        this.pushurl = this.mOnParamGetCallback.getPushUrl();
        this.pushid = this.mOnParamGetCallback.getPushId();
        this.isPush = this.mOnParamGetCallback.isPush();
        this.module = this.mOnParamGetCallback.getModule();
        this.topic = this.mOnParamGetCallback.getTopic();
        this.extra = this.mOnParamGetCallback.getExtra();
        this.traceid = this.mOnParamGetCallback.getTraceId();
        Map<String, String> topicParam = this.mOnParamGetCallback.getTopicParam();
        HashMap map = new HashMap();
        if (topicParam != null) {
            map.putAll(topicParam);
        }
        map.put("lv", this.lv);
        map.put("livesdkv", livesdkv);
        map.put("app_id", app_id);
        map.put("app_n", app_n);
        map.put("duuid", this.duuid);
        map.put("tm", this.tm);
        map.put("time", this.time);
        map.put("zone", this.zone);
        map.put("osn", osn);
        map.put("osv", osv);
        map.put("den", den);
        map.put(TtmlNode.TAG_TT, tt);
        map.put("acs", this.acs);
        map.put("sesid", this.sesid);
        map.put("pushprotocol", this.pushprotocol);
        map.put("videoonly", String.valueOf(this.isVideoOnly));
        map.put("audioonly", String.valueOf(this.isAudioOnly));
        map.put("extern", String.valueOf(this.isExternStream));
        map.put("pushurl", this.pushurl);
        map.put("pushid", this.pushid);
        map.put("isPush", String.valueOf(this.isPush));
        map.put("envir", this.envir);
        map.put("module", this.module);
        map.put("topic", this.topic);
        map.put("extra", this.extra);
        map.put("traceid", this.traceid);
        return map;
    }
}
