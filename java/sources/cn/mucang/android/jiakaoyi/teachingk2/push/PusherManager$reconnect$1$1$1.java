package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.text.TextUtils;
import com.alivc.live.pusher.AlivcLivePusher;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$reconnect$1$1$1", f = "PusherManager.kt", l = {604, 605, 621}, m = "invokeSuspend")
final class PusherManager$reconnect$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    PusherManager$reconnect$1$1$1(Continuation<? super PusherManager$reconnect$1$1$1> continuation) {
        super(2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final kotlin.v m58invokeSuspend$lambda0() {
        AlivcLivePusher alivcLivePusher = PusherManager.b;
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.stopPush();
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-1, reason: not valid java name */
    public static final kotlin.v m59invokeSuspend$lambda1() {
        AlivcLivePusher alivcLivePusher = PusherManager.b;
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.startPreview(null);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-2, reason: not valid java name */
    public static final kotlin.v m60invokeSuspend$lambda2(String str) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("开始重新推流:", str));
        AlivcLivePusher alivcLivePusher = PusherManager.b;
        if (alivcLivePusher == null) {
            return null;
        }
        alivcLivePusher.startPush(str);
        return kotlin.v.f15822a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-3, reason: not valid java name */
    public static final void m61invokeSuspend$lambda3(Throwable th) {
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("阿里云startPush Error:", th.getMessage()));
        PusherManager.f7472a.n0();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        PusherManager$reconnect$1$1$1 pusherManager$reconnect$1$1$1 = new PusherManager$reconnect$1$1$1(continuation);
        pusherManager$reconnect$1$1$1.L$0 = obj;
        return pusherManager$reconnect$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((PusherManager$reconnect$1$1$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0067  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x0077 A[PHI: r1
      0x0077: PHI (r1v2 java.lang.String) = (r1v4 java.lang.String), (r1v5 java.lang.String) binds: [B:29:0x0074, B:25:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x007d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.i0 i0Var;
        final String pushUrl;
        PusherManager$reconnect$1$1$1 pusherManager$reconnect$1$1$1;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                pushUrl = (String) this.L$0;
                kotlin.k.b(obj);
                pusherManager$reconnect$1$1$1 = this;
                if (pushUrl == null) {
                    PusherManager pusherManager = PusherManager.f7472a;
                    pusherManager$reconnect$1$1$1.L$0 = null;
                    pusherManager$reconnect$1$1$1.label = 2;
                    obj = pusherManager.F(pusherManager$reconnect$1$1$1);
                    if (obj == objD) {
                        return objD;
                    }
                } else if (!TextUtils.isEmpty(pushUrl)) {
                    PusherManager.f7472a.w();
                    cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.x
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return PusherManager$reconnect$1$1$1.m59invokeSuspend$lambda1();
                        }
                    });
                    cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.u
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return PusherManager$reconnect$1$1$1.m60invokeSuspend$lambda2(pushUrl);
                        }
                    }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.v
                        @Override // cn.mucang.android.jiakaoyi.framework.h.b
                        public final void callback(Object obj2) {
                            PusherManager$reconnect$1$1$1.m61invokeSuspend$lambda3((Throwable) obj2);
                        }
                    });
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云推流重连结束----end");
                return kotlin.v.f15822a;
            }
            if (i == 2) {
                kotlin.k.b(obj);
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i0Var = (kotlinx.coroutines.i0) this.L$0;
                kotlin.k.b(obj);
            }
            pushUrl = (String) obj;
            if (!TextUtils.isEmpty(pushUrl)) {
                PusherManager.f7472a.w();
                cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.x
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return PusherManager$reconnect$1$1$1.m59invokeSuspend$lambda1();
                    }
                });
                cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.u
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return PusherManager$reconnect$1$1$1.m60invokeSuspend$lambda2(pushUrl);
                    }
                }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.v
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj2) {
                        PusherManager$reconnect$1$1$1.m61invokeSuspend$lambda3((Throwable) obj2);
                    }
                });
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云推流重连结束----end");
            return kotlin.v.f15822a;
        }
        kotlin.k.b(obj);
        i0Var = (kotlinx.coroutines.i0) this.L$0;
        pusherManager$reconnect$1$1$1 = this;
        do {
            if (kotlinx.coroutines.j0.g(i0Var)) {
                kotlinx.coroutines.j0.f(i0Var);
                if (cn.mucang.android.core.utils.x.e()) {
                    AlivcLivePusher alivcLivePusher = PusherManager.b;
                    pushUrl = alivcLivePusher == null ? null : alivcLivePusher.getPushUrl();
                    cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.w
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return PusherManager$reconnect$1$1$1.m58invokeSuspend$lambda0();
                        }
                    });
                    pusherManager$reconnect$1$1$1.L$0 = pushUrl;
                    pusherManager$reconnect$1$1$1.label = 1;
                    if (s0.a(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, pusherManager$reconnect$1$1$1) == objD) {
                        return objD;
                    }
                    if (pushUrl == null) {
                        PusherManager pusherManager2 = PusherManager.f7472a;
                        pusherManager$reconnect$1$1$1.L$0 = null;
                        pusherManager$reconnect$1$1$1.label = 2;
                        obj = pusherManager2.F(pusherManager$reconnect$1$1$1);
                        if (obj == objD) {
                            return objD;
                        }
                        pushUrl = (String) obj;
                        if (!TextUtils.isEmpty(pushUrl)) {
                            PusherManager.f7472a.w();
                            cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.x
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    return PusherManager$reconnect$1$1$1.m59invokeSuspend$lambda1();
                                }
                            });
                            cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.u
                                @Override // java.util.concurrent.Callable
                                public final Object call() {
                                    return PusherManager$reconnect$1$1$1.m60invokeSuspend$lambda2(pushUrl);
                                }
                            }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.v
                                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                                public final void callback(Object obj2) {
                                    PusherManager$reconnect$1$1$1.m61invokeSuspend$lambda3((Throwable) obj2);
                                }
                            });
                        }
                    } else if (!TextUtils.isEmpty(pushUrl)) {
                        PusherManager.f7472a.w();
                        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.x
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return PusherManager$reconnect$1$1$1.m59invokeSuspend$lambda1();
                            }
                        });
                        cn.mucang.android.jiakaoyi.framework.p002e.m.h(new Callable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.u
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return PusherManager$reconnect$1$1$1.m60invokeSuspend$lambda2(pushUrl);
                            }
                        }).f(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.push.v
                            @Override // cn.mucang.android.jiakaoyi.framework.h.b
                            public final void callback(Object obj2) {
                                PusherManager$reconnect$1$1$1.m61invokeSuspend$lambda3((Throwable) obj2);
                            }
                        });
                    }
                } else {
                    pusherManager$reconnect$1$1$1.L$0 = i0Var;
                    pusherManager$reconnect$1$1$1.label = 3;
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("阿里云推流重连结束----end");
            return kotlin.v.f15822a;
        } while (s0.a(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, pusherManager$reconnect$1$1$1) != objD);
        return objD;
    }
}
