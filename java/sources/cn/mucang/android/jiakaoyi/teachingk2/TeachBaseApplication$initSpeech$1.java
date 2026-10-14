package cn.mucang.android.jiakaoyi.teachingk2;

import android.app.Application;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.speech.ISpeechManager;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.speech.callback.ISpeechStateChangeCallback;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VoiceFaceModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$initSpeech$1", f = "TeachBaseApplication.kt", l = {261}, m = "invokeSuspend")
final class TeachBaseApplication$initSpeech$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$initSpeech$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$initSpeech$1$1", f = "TeachBaseApplication.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$initSpeech$1$1$a */
        @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/TeachBaseApplication$initSpeech$1$1$1", "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechStateChangeCallback;", "onStateChanged", "", "state", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a implements ISpeechStateChangeCallback {
            a() {
            }

            @Override // cn.mucang.android.jiakaoyi.speech.callback.ISpeechStateChangeCallback
            public void a(int i) {
                SpeechLogUtils.c("TeachBaseApplication", r.m("state: ", SpeechManager.f5839a.i(i)));
                cn.mucang.android.jiakaoyi.unity.c.d.e(new VoiceFaceModel(i));
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            SpeechManager speechManager = SpeechManager.f5839a;
            Application context = MucangConfig.getContext();
            r.d(context, "getContext()");
            ISpeechManager.a.a(speechManager, context, false, null, 4, null);
            speechManager.p(new a());
            if (cn.mucang.android.jiakaoyi.framework.utils.f0.d()) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("维吾尔语环境，禁用语音助手唤醒识别");
                speechManager.f();
            }
            return kotlin.v.f15822a;
        }
    }

    TeachBaseApplication$initSpeech$1(Continuation<? super TeachBaseApplication$initSpeech$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachBaseApplication$initSpeech$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TeachBaseApplication$initSpeech$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
