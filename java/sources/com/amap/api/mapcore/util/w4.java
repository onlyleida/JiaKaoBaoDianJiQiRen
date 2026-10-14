package com.amap.api.mapcore.util;

import com.amap.api.maps.AMapException;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.LatLng;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechEvent;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;
import org.json.JSONException;
import org.json.JSONObject;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class w4 {
    public static int a(List<LatLng> list) {
        int i = 0;
        if (list == null || list.size() == 0) {
            return 0;
        }
        int iCalculateLineDistance = 0;
        while (i < list.size() - 1) {
            LatLng latLng = list.get(i);
            i++;
            LatLng latLng2 = list.get(i);
            if (latLng == null || latLng2 == null) {
                break;
            }
            iCalculateLineDistance = (int) (iCalculateLineDistance + AMapUtils.calculateLineDistance(latLng, latLng2));
        }
        return iCalculateLineDistance;
    }

    protected static void b(int i, String str, String str2) throws ft {
        if (i != 0) {
            switch (i) {
                case 10000:
                    return;
                case 10001:
                    throw new ft("用户key不正确或过期");
                case 10002:
                    throw new ft("请求服务不存在");
                case 10003:
                    throw new ft("访问已超出日访问量");
                case 10004:
                    throw new ft("用户访问过于频繁");
                case Videoio.CAP_PROP_GIGA_FRAME_SENS_WIDTH /* 10005 */:
                    throw new ft("用户IP无效");
                case 10006:
                    throw new ft("用户域名无效");
                case SpeechEvent.EVENT_IST_CACHE_LEFT /* 10007 */:
                    throw new ft("用户签名未通过");
                case SpeechEvent.EVENT_IST_RESULT_TIME /* 10008 */:
                    throw new ft("用户MD5安全码未通过");
                case SpeechEvent.EVENT_IST_SYNC_ID /* 10009 */:
                    throw new ft("请求key与绑定平台不符");
                case SpeechEvent.EVENT_SESSION_BEGIN /* 10010 */:
                    throw new ft("IP访问超限");
                case SpeechEvent.EVENT_SESSION_END /* 10011 */:
                    throw new ft("服务不支持https请求");
                case SpeechEvent.EVENT_VOLUME /* 10012 */:
                    throw new ft("权限不足，服务请求被拒绝");
                case SpeechEvent.EVENT_VAD_EOS /* 10013 */:
                    throw new ft("开发者删除了key，key被删除后无法正常使用");
                default:
                    switch (i) {
                        case Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT /* 20000 */:
                            throw new ft("请求参数非法");
                        case 20001:
                            throw new ft("缺少必填参数");
                        case ErrorCode.ERROR_NETWORK_TIMEOUT /* 20002 */:
                            throw new ft("请求协议非法");
                        case ErrorCode.ERROR_NET_EXCEPTION /* 20003 */:
                            throw new ft("其他未知错误");
                        default:
                            switch (i) {
                                case CMAESOptimizer.DEFAULT_MAXITERATIONS /* 30000 */:
                                    throw new ft("请求服务响应错误");
                                case 30001:
                                    throw new ft("引擎返回数据异常");
                                case 30002:
                                    throw new ft("服务端请求链接超时");
                                case 30003:
                                    throw new ft("读取服务结果超时");
                                default:
                                    throw new ft(str);
                            }
                    }
            }
        }
    }

    public static void c(String str, String str2) throws ft {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("errcode")) {
                b(jSONObject.getInt("errcode"), jSONObject.getString("errmsg"), str2);
                return;
            }
            if (jSONObject.has("status") && jSONObject.has("infocode")) {
                String string = jSONObject.getString("status");
                int i = jSONObject.getInt("infocode");
                if ("1".equals(string)) {
                    return;
                }
                String string2 = jSONObject.getString("info");
                if ("0".equals(string)) {
                    b(i, string2, str2);
                }
            }
        } catch (JSONException unused) {
            throw new ft(AMapException.ERROR_PROTOCOL);
        }
    }
}
