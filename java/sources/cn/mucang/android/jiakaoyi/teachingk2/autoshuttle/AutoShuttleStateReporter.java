package cn.mucang.android.jiakaoyi.teachingk2.autoshuttle;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import cn.mucang.jiakaoyi.uilib.socket.u;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000'\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0004\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\fR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter;", "", "()V", "reportHandler", "cn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$1", "getReportHandler", "()Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$1;", "reportHandler$delegate", "Lkotlin/Lazy;", "shuttleId", "", BuildConfig.FLAVOR_type, "", SocialConstants.PARAM_SEND_MSG, "", TtmlNode.START, "stop", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoShuttleStateReporter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile long f6245a = -1;
    private final Lazy b = kotlin.i.b(new Function0<AutoShuttleStateReporter$reportHandler$2.a>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.AutoShuttleStateReporter$reportHandler$2

        @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoShuttleStateReporter$reportHandler$2$1", "Landroid/os/Handler;", "handleMessage", "", SocialConstants.PARAM_SEND_MSG, "Landroid/os/Message;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a extends Handler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AutoShuttleStateReporter f6246a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AutoShuttleStateReporter autoShuttleStateReporter, Looper looper) {
                super(looper);
                this.f6246a = autoShuttleStateReporter;
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                byte b;
                kotlin.jvm.internal.r.e(msg, "msg");
                if (msg.what == 101) {
                    AutoDriveMgr autoDriveMgr = AutoDriveMgr.f6233a;
                    int iIntValue = autoDriveMgr.m().intValue();
                    if (iIntValue >= 0) {
                        int iL = autoDriveMgr.l();
                        byte b2 = iL == 4 ? (byte) 1 : (byte) 0;
                        if (iL != 1) {
                            b = iL != 2 ? (byte) 0 : (byte) 1;
                        } else {
                            b = 2;
                        }
                        this.f6246a.d("report: shuttleId:" + this.f6246a.f6245a + ", distance:" + iIntValue + ", isEnd:" + ((int) b2) + ", error:" + ((int) b));
                        u.g(this.f6246a.f6245a, (long) iIntValue, b2, b);
                        sendEmptyMessageDelayed(101, 1000L);
                    }
                }
            }
        }

        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final a invoke() {
            HandlerThread handlerThread = new HandlerThread("auto_shuttle_upload_thread");
            handlerThread.start();
            return new a(this.this$0, handlerThread.getLooper());
        }
    });

    private final AutoShuttleStateReporter$reportHandler$2.a c() {
        return (AutoShuttleStateReporter$reportHandler$2.a) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("AutoShuttleStateReporter: ", str));
    }

    public final void e(long j) {
        f();
        this.f6245a = j;
        c().sendEmptyMessage(101);
    }

    public final void f() {
        this.f6245a = -1L;
        c().removeCallbacksAndMessages(null);
    }
}
