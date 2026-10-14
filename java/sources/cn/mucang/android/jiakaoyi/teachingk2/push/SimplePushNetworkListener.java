package cn.mucang.android.jiakaoyi.teachingk2.push;

import com.alivc.live.pusher.AlivcLivePushNetworkListener;
import com.alivc.live.pusher.AlivcLivePusher;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.q0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushNetworkListener;", "Lcom/alivc/live/pusher/AlivcLivePushNetworkListener;", "()V", "onConnectFail", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "onConnectionLost", "onNetworkPoor", "onNetworkRecovery", "onPacketsLost", "onReconnectFail", "onReconnectStart", "onReconnectSucceed", "onSendDataTimeout", "onSendMessage", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class SimplePushNetworkListener implements AlivcLivePushNetworkListener {
    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onConnectFail(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "连接失败");
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云连接失败");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onConnectionLost(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "连接断开");
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云连接断开");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onNetworkPoor(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "网速慢");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onNetworkRecovery(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "网络状况恢复良好");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onPacketsLost(AlivcLivePusher p0) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onReconnectFail(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "重连失败");
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云重连失败");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onReconnectStart(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "重连开始");
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云重连开始");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onReconnectSucceed(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "重连成功");
        cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云重连成功");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onSendDataTimeout(AlivcLivePusher p0) {
        cn.mucang.android.core.utils.t.h("PusherManager", "数据发送超时");
    }

    @Override // com.alivc.live.pusher.AlivcLivePushNetworkListener
    public void onSendMessage(AlivcLivePusher p0) {
    }
}
