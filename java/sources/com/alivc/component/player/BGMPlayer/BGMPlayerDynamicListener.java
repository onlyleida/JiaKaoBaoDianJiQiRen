package com.alivc.component.player.BGMPlayer;

import com.alivc.component.player.BGMPlayerEventJNI;
import com.iflytek.cloud.SpeechConstant;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class BGMPlayerDynamicListener {
    private static final int kCurrentPositionCode = 2;
    private static final String kErrorCodeClassName = "com.aliyun.player.bean.ErrorCode";
    private static final String kErrorInfoClassName = "com.aliyun.player.bean.ErrorInfo";
    private static final String kFrameInfoClassName = "com.cicada.player.utils.FrameInfo";
    private static final int kFrameType_audio = 2;
    private static final String kInfoBeanClassName = "com.aliyun.player.bean.InfoBean";
    private static final String kInfoCodeClassName = "com.aliyun.player.bean.InfoCode";
    private static final String kOnErrorListenerClassName = "com.aliyun.player.IPlayer$OnErrorListener";
    private static final String kOnErrorMethodName = "onError";
    private static final String kOnInfoListenerClassName = "com.aliyun.player.IPlayer$OnInfoListener";
    private static final String kOnInfoMethodName = "onInfo";
    private static final String kOnRenderFrameClassName = "com.aliyun.player.IPlayer$OnRenderFrameCallback";
    private static final String kOnRenderFrameMethodName = "onRenderFrame";
    private static final String kOnStateChangedListenerClassName = "com.aliyun.player.IPlayer$OnStateChangedListener";
    private static final String kOnStateChangedMethodName = "onStateChanged";

    public ReflectionProxyContext getOnErrorListenerProxyContext() {
        return ReflectionUtility.newProxyContextByClassName(kOnErrorListenerClassName, new InvocationHandler() { // from class: com.alivc.component.player.BGMPlayer.BGMPlayerDynamicListener.3
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getName() != BGMPlayerDynamicListener.kOnErrorMethodName) {
                    return null;
                }
                Object obj2 = objArr[0];
                ReflectionUtility.callFunc0Param(obj2, BGMPlayerDynamicListener.kErrorInfoClassName, "getCode");
                BGMPlayerEventJNI.onErrorEvent(((Integer) ReflectionUtility.callFunc0Param(obj2, BGMPlayerDynamicListener.kErrorCodeClassName, "getValue")).intValue(), (String) ReflectionUtility.callFunc0Param(obj2, BGMPlayerDynamicListener.kErrorInfoClassName, "getMsg"), (String) ReflectionUtility.callFunc0Param(obj2, BGMPlayerDynamicListener.kErrorInfoClassName, "getExtra"));
                return null;
            }
        });
    }

    public ReflectionProxyContext getOnInfoListenerProxyContext() {
        return ReflectionUtility.newProxyContextByClassName(kOnInfoListenerClassName, new InvocationHandler() { // from class: com.alivc.component.player.BGMPlayer.BGMPlayerDynamicListener.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getName() != BGMPlayerDynamicListener.kOnInfoMethodName) {
                    return null;
                }
                Object obj2 = objArr[0];
                if (((Integer) ReflectionUtility.callFunc0Param(ReflectionUtility.callFunc0Param(obj2, BGMPlayerDynamicListener.kInfoBeanClassName, "getCode"), BGMPlayerDynamicListener.kInfoCodeClassName, "getValue")).intValue() != 2) {
                    return null;
                }
                BGMPlayerEventJNI.onPlayProgressEvent(((Long) ReflectionUtility.callFunc0Param(obj2, BGMPlayerDynamicListener.kInfoBeanClassName, "getExtraValue")).longValue());
                return null;
            }
        });
    }

    public ReflectionProxyContext getOnRenderFrameProxyContext() {
        return ReflectionUtility.newProxyContextByClassName(kOnRenderFrameClassName, new InvocationHandler() { // from class: com.alivc.component.player.BGMPlayer.BGMPlayerDynamicListener.4
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getName() != BGMPlayerDynamicListener.kOnRenderFrameMethodName) {
                    return null;
                }
                Object obj2 = objArr[0];
                return ReflectionUtility.getIntField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, "frameType") == 2 ? Boolean.valueOf(BGMPlayerEventJNI.onRenderAudioFrameEvent((byte[][]) ReflectionUtility.getObjectField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, "audio_data"), ReflectionUtility.getLongField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, "pts"), ReflectionUtility.getIntField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, SpeechConstant.AUDIO_FORMAT), ReflectionUtility.getIntField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, "audio_nb_samples"), ReflectionUtility.getIntField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, "audio_channels"), ReflectionUtility.getIntField(obj2, BGMPlayerDynamicListener.kFrameInfoClassName, "audio_sample_rate"))) : Boolean.FALSE;
            }
        });
    }

    public ReflectionProxyContext getOnStateChangedListenerProxyContext() {
        return ReflectionUtility.newProxyContextByClassName(kOnStateChangedListenerClassName, new InvocationHandler() { // from class: com.alivc.component.player.BGMPlayer.BGMPlayerDynamicListener.2
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getName() != BGMPlayerDynamicListener.kOnStateChangedMethodName) {
                    return null;
                }
                BGMPlayerEventJNI.onStateChangedEvent(((Integer) objArr[0]).intValue());
                return null;
            }
        });
    }

    public void setListenerHandler(long j) {
        BGMPlayerEventJNI.setListenerHandler(j);
    }
}
