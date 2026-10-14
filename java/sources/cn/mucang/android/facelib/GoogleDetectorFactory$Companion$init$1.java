package cn.mucang.android.facelib;

import android.app.job.JobScheduler;
import cn.mucang.android.core.config.MucangConfig;
import com.google.android.datatransport.runtime.TransportRuntime;
import java.lang.reflect.Field;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.facelib.GoogleDetectorFactory$Companion$init$1", f = "GoogleDetectorFactory.kt", l = {70}, m = "invokeSuspend")
final class GoogleDetectorFactory$Companion$init$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    GoogleDetectorFactory$Companion$init$1(Continuation<? super GoogleDetectorFactory$Companion$init$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        GoogleDetectorFactory$Companion$init$1 googleDetectorFactory$Companion$init$1 = new GoogleDetectorFactory$Companion$init$1(continuation);
        googleDetectorFactory$Companion$init$1.L$0 = obj;
        return googleDetectorFactory$Companion$init$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((GoogleDetectorFactory$Companion$init$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        i0 i0Var;
        Object objM139constructorimpl;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            i0Var = (i0) this.L$0;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i0Var = (i0) this.L$0;
            kotlin.k.b(obj);
        }
        while (j0.g(i0Var)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(TransportRuntime.getInstance());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            TransportRuntime transportRuntime = (TransportRuntime) objM139constructorimpl;
            if (transportRuntime != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("google job service: 找到实例");
                Field declaredField = transportRuntime.getClass().getDeclaredField("scheduler");
                declaredField.setAccessible(true);
                Object scheduler = declaredField.get(transportRuntime);
                declaredField.setAccessible(false);
                if (scheduler != null) {
                    r.d(scheduler, "scheduler");
                    Field declaredField2 = scheduler.getClass().getDeclaredField("workScheduler");
                    declaredField2.setAccessible(true);
                    declaredField2.set(scheduler, new GoogleFaceDetector.a());
                    cn.mucang.android.jiakaoyi.framework.log.f.o("google job service: 替换scheduler");
                    declaredField2.setAccessible(false);
                }
                Field declaredField3 = transportRuntime.getClass().getDeclaredField("uploader");
                declaredField3.setAccessible(true);
                Object uploader = declaredField3.get(transportRuntime);
                declaredField3.setAccessible(false);
                if (uploader == null) {
                    break;
                }
                r.d(uploader, "uploader");
                Field declaredField4 = uploader.getClass().getDeclaredField("workScheduler");
                declaredField4.setAccessible(true);
                declaredField4.set(uploader, new GoogleFaceDetector.a());
                cn.mucang.android.jiakaoyi.framework.log.f.o("google job service: 替换uploader");
                declaredField4.setAccessible(false);
                break;
            }
            Object systemService = MucangConfig.getContext().getSystemService("jobscheduler");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
            ((JobScheduler) systemService).cancelAll();
            this.L$0 = i0Var;
            this.label = 1;
            if (s0.a(1000L, this) == objD) {
                return objD;
            }
        }
        return kotlin.v.f15822a;
    }
}
