package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.framework.camera.SourceVideoStream;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.video.VideoRecorder;
import com.alivc.live.pusher.AlivcLivePusher;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$initPush$2", f = "PusherManager.kt", l = {216}, m = "invokeSuspend")
final class PusherManager$initPush$2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;

    PusherManager$initPush$2(Continuation<? super PusherManager$initPush$2> continuation) {
        super(2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final kotlin.v m53invokeSuspend$lambda0() {
        AlivcLivePusher alivcLivePusher = PusherManager.b;
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.startPreview(null);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-1, reason: not valid java name */
    public static final kotlin.v m54invokeSuspend$lambda1(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("开始推流:", str));
        AlivcLivePusher alivcLivePusher = PusherManager.b;
        if (alivcLivePusher != null) {
            alivcLivePusher.startPush(str);
        }
        PusherManager pusherManager = PusherManager.f7472a;
        PusherManager.v = System.currentTimeMillis();
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-2, reason: not valid java name */
    public static final void m55invokeSuspend$lambda2(Throwable th) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("阿里云startPush Error:", th.getMessage()));
        PusherManager.f7472a.n0();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new PusherManager$initPush$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$initPush$2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            VideoRecorder videoRecorder = VideoRecorder.f7178a;
            if (videoRecorder.f()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("先停止视频录制");
                videoRecorder.i(false);
                Thread.sleep(1000L);
            }
            PusherManager pusherManager = PusherManager.f7472a;
            this.label = 1;
            obj = pusherManager.F(this);
            if (obj == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        final String str = (String) obj;
        if (!TextUtils.isEmpty(str)) {
            PusherManager pusherManager2 = PusherManager.f7472a;
            if (!pusherManager2.L()) {
                return kotlin.v.f15822a;
            }
            SourceVideoStream sourceVideoStream = PusherManager.c;
            if (sourceVideoStream != null) {
                sourceVideoStream.start();
            }
            pusherManager2.w0();
            pusherManager2.K();
            pusherManager2.w();
            cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.p
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PusherManager$initPush$2.m53invokeSuspend$lambda0();
                }
            });
            cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.q
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return PusherManager$initPush$2.m54invokeSuspend$lambda1(str);
                }
            }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.r
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj2) {
                    PusherManager$initPush$2.m55invokeSuspend$lambda2((Throwable) obj2);
                }
            });
        }
        return kotlin.v.f15822a;
    }
}
