package cn.mucang.android.jiakaoyi.teachingk2.push;

import com.alivc.live.pusher.AlivcLivePushInfoListener;
import com.alivc.live.pusher.AlivcLivePushStatsInfo;
import com.alivc.live.pusher.AlivcLivePusher;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.p0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\"\u0010\n\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\"\u0010\u000b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0010\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0011\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0013\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\u0014\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/push/SimplePushInfoListener;", "Lcom/alivc/live/pusher/AlivcLivePushInfoListener;", "()V", "onAdjustBitRate", "", "p0", "Lcom/alivc/live/pusher/AlivcLivePusher;", "p1", "", "p2", "onAdjustFps", "onDropFrame", "onFirstAVFramePushed", "onFirstFramePreviewed", "onPreviewStarted", "onPreviewStoped", "onPushPauesed", "onPushRestarted", "onPushResumed", "onPushStarted", "onPushStatistics", "Lcom/alivc/live/pusher/AlivcLivePushStatsInfo;", "onPushStoped", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class SimplePushInfoListener implements AlivcLivePushInfoListener {
    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onAdjustBitRate(AlivcLivePusher p0, int p1, int p2) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onAdjustFps(AlivcLivePusher p0, int p1, int p2) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onDropFrame(AlivcLivePusher p0, int p1, int p2) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onFirstAVFramePushed(AlivcLivePusher p0) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onFirstFramePreviewed(AlivcLivePusher p0) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onPushRestarted(AlivcLivePusher p0) {
    }

    @Override // com.alivc.live.pusher.AlivcLivePushInfoListener
    public void onPushStatistics(AlivcLivePusher p0, AlivcLivePushStatsInfo p1) {
    }
}
