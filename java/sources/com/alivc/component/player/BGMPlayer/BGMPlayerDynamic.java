package com.alivc.component.player.BGMPlayer;

import android.content.Context;
import android.util.Log;
import com.alivc.live.utils.APKVersionCodeUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
class BGMPlayerDynamic implements IBGMPlayer {
    private static final String TAG = "BGMPlayerDynamic";
    private static final String kAliPlayerClassName = "com.aliyun.player.AliPlayer";
    private static final String kAliPlayerFactoryClassName = "com.aliyun.player.AliPlayerFactory";
    private static final String kUrlSourceClassName = "com.aliyun.player.source.UrlSource";
    private BGMPlayerDynamicListener listener_;
    private Object player_;

    BGMPlayerDynamic(Context context) {
        this.player_ = null;
        this.listener_ = null;
        if (isSDKReady()) {
            this.player_ = ReflectionUtility.callFunc1Param(null, kAliPlayerFactoryClassName, "createAliPlayer", Context.class, context);
            BGMPlayerDynamicListener bGMPlayerDynamicListener = new BGMPlayerDynamicListener();
            this.listener_ = bGMPlayerDynamicListener;
            ReflectionProxyContext onInfoListenerProxyContext = bGMPlayerDynamicListener.getOnInfoListenerProxyContext();
            ReflectionUtility.callFunc1Param(this.player_, kAliPlayerClassName, "setOnInfoListener", onInfoListenerProxyContext.clazz, onInfoListenerProxyContext.object);
            ReflectionProxyContext onStateChangedListenerProxyContext = this.listener_.getOnStateChangedListenerProxyContext();
            ReflectionUtility.callFunc1Param(this.player_, kAliPlayerClassName, "setOnStateChangedListener", onStateChangedListenerProxyContext.clazz, onStateChangedListenerProxyContext.object);
            ReflectionProxyContext onErrorListenerProxyContext = this.listener_.getOnErrorListenerProxyContext();
            ReflectionUtility.callFunc1Param(this.player_, kAliPlayerClassName, "setOnErrorListener", onErrorListenerProxyContext.clazz, onErrorListenerProxyContext.object);
            ReflectionProxyContext onRenderFrameProxyContext = this.listener_.getOnRenderFrameProxyContext();
            ReflectionUtility.callFunc1Param(this.player_, kAliPlayerClassName, "setOnRenderFrameCallback", onRenderFrameProxyContext.clazz, onRenderFrameProxyContext.object);
            Class cls = Integer.TYPE;
            ReflectionUtility.callFuncNParam(null, "com.aliyun.player.AliPlayerGlobalSettings", "forceAudioRendingFormat", new Class[]{Boolean.TYPE, String.class, cls, cls}, new Object[]{Boolean.TRUE, IBGMPlayer.outputAudioFormatStr, 2, 44100});
        }
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public long getDuration() {
        Object obj = this.player_;
        if (obj == null) {
            return 0L;
        }
        return ((Long) ReflectionUtility.callFunc0Param(obj, kAliPlayerClassName, "getDuration")).longValue();
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public boolean isSDKReady() {
        if (!(ReflectionUtility.isClassAvailable(kAliPlayerClassName) && ReflectionUtility.isClassAvailable(kAliPlayerFactoryClassName))) {
            Log.e(TAG, "Can't find player SDK");
        }
        String str = (String) ReflectionUtility.callFunc0Param(null, kAliPlayerFactoryClassName, "getSdkVersion");
        Log.i(TAG, "player SDK version = " + str);
        if (APKVersionCodeUtils.compareVersion(str, IBGMPlayer.kMinSupportSdkVersion) >= 0) {
            return true;
        }
        throw new RuntimeException("Please use [5.4.1+] version of AliPlayer SDK, current is using:" + str);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void pause() {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc0Param(obj, kAliPlayerClassName, "pause");
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void prepare() {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc1Param(obj, kAliPlayerClassName, "setMute", Boolean.TYPE, Boolean.TRUE);
        ReflectionUtility.callFunc0Param(this.player_, kAliPlayerClassName, "prepare");
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void release() {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc0Param(obj, kAliPlayerClassName, "release");
        this.player_ = null;
        this.listener_ = null;
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setAutoPlay(boolean z) {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc1Param(obj, kAliPlayerClassName, "setAutoPlay", Boolean.TYPE, Boolean.valueOf(z));
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setListenerHandler(long j) {
        BGMPlayerDynamicListener bGMPlayerDynamicListener = this.listener_;
        if (bGMPlayerDynamicListener == null) {
            return;
        }
        bGMPlayerDynamicListener.setListenerHandler(j);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setLoop(boolean z) {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc1Param(obj, kAliPlayerClassName, "setLoop", Boolean.TYPE, Boolean.valueOf(z));
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void setUrlSource(String str) {
        if (this.player_ == null) {
            return;
        }
        Object objNewObject = ReflectionUtility.newObject(kUrlSourceClassName);
        ReflectionUtility.callFunc1Param(objNewObject, kUrlSourceClassName, "setUri", String.class, str);
        ReflectionUtility.callFunc1Param(this.player_, kAliPlayerClassName, "setDataSource", objNewObject.getClass(), objNewObject);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void start() {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc0Param(obj, kAliPlayerClassName, TtmlNode.START);
    }

    @Override // com.alivc.component.player.BGMPlayer.IBGMPlayer
    public void stop() {
        Object obj = this.player_;
        if (obj == null) {
            return;
        }
        ReflectionUtility.callFunc0Param(obj, kAliPlayerClassName, "stop");
    }
}
