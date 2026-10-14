package com.alivc.live.pusher.logreport.core;

import android.content.Context;
import com.alivc.live.pusher.AlivcLivePushConfig;
import com.alivc.live.pusher.AlivcLivePushConstants;
import com.alivc.live.pusher.AlivcLivePusher;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class LiveEventReporter {
    private Context mContext;
    private AlivcLivePusher mLivePusher;
    private AlivcLivePushConfig mPushConfig;
    private String mPushId;
    private String mSessionId;

    private class BaseParamGetCallback implements LogParams.OnParamGetCallback {
        private BaseParamGetCallback() {
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getExtra() {
            return LiveEventReporter.this.mPushConfig.getExtraInfo();
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getModule() {
            return "AliLiveSDK";
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getPushId() {
            return LiveEventReporter.this.mPushId;
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getPushProtocol() {
            String pushUrl = getPushUrl();
            if (pushUrl != null) {
                String lowerCase = pushUrl.toLowerCase();
                if (lowerCase.indexOf("rtmp") == 0) {
                    return "rtmp";
                }
                if (lowerCase.indexOf("artc") == 0) {
                    return "rts";
                }
            }
            return "None";
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getPushUrl() {
            return LiveEventReporter.this.mLivePusher.getPushUrl();
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getSessionId() {
            return LiveEventReporter.this.mSessionId;
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getTopic() {
            return null;
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public Map<String, String> getTopicParam() {
            return null;
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public String getTraceId() {
            return LiveEventReporter.this.mLivePusher.getLiveTraceId();
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public boolean isAudioOnly() {
            return LiveEventReporter.this.mPushConfig.isAudioOnly();
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public boolean isExternStream() {
            return LiveEventReporter.this.mPushConfig.isExternMainStream();
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public boolean isPush() {
            return LiveEventReporter.this.mLivePusher.isPushing();
        }

        @Override // com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
        public boolean isVideoOnly() {
            return LiveEventReporter.this.mPushConfig.isVideoOnly();
        }
    }

    public LiveEventReporter(Context context, AlivcLivePusher alivcLivePusher, AlivcLivePushConfig alivcLivePushConfig) {
        this.mContext = null;
        this.mSessionId = null;
        this.mPushId = null;
        this.mLivePusher = null;
        this.mPushConfig = null;
        this.mContext = context;
        this.mLivePusher = alivcLivePusher;
        this.mPushConfig = alivcLivePushConfig;
        this.mSessionId = UUID.randomUUID().toString();
        this.mPushId = UUID.randomUUID().toString();
    }

    private void sendAsync(LogParams logParams) {
        final Map<String, String> logPublicParams = logParams.getLogPublicParams();
        new Thread(new Runnable() { // from class: com.alivc.live.pusher.logreport.core.LiveEventReporter.2
            @Override // java.lang.Runnable
            public void run() {
                LogSender.sendActually("alilive-log", logPublicParams);
            }
        }).start();
    }

    public void refreshPushId() {
        this.mPushId = UUID.randomUUID().toString();
    }

    public void sendEvent(final AlivcLivePushConstants.Topic topic, final String str, final Map<String, String> map) {
        sendAsync(new LogParams(this.mContext, new BaseParamGetCallback() { // from class: com.alivc.live.pusher.logreport.core.LiveEventReporter.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.alivc.live.pusher.logreport.core.LiveEventReporter.BaseParamGetCallback, com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
            public String getTopic() {
                return topic.getValue();
            }

            @Override // com.alivc.live.pusher.logreport.core.LiveEventReporter.BaseParamGetCallback, com.alivc.live.pusher.logreport.core.LogParams.OnParamGetCallback
            public Map<String, String> getTopicParam() {
                HashMap map2 = new HashMap();
                map2.put("value", str);
                Map map3 = map;
                if (map3 != null && !map3.isEmpty()) {
                    map2.putAll(map);
                }
                return map2;
            }
        }));
    }
}
