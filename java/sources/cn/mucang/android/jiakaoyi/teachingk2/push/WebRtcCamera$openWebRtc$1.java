package cn.mucang.android.jiakaoyi.teachingk2.push;

import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.asm.Opcodes;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.mlkit.common.MlKitException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$openWebRtc$1", f = "WebRtcCamera.kt", l = {Videoio.CAP_PROP_XI_CC_MATRIX_00}, m = "invokeSuspend")
final class WebRtcCamera$openWebRtc$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ OkHttpClient $client;
    final /* synthetic */ Request $request;
    final /* synthetic */ String $sdp;
    int label;
    final /* synthetic */ WebRtcCamera this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$openWebRtc$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$openWebRtc$1$1", f = "WebRtcCamera.kt", l = {Opcodes.IFNONNULL, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super String>, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ OkHttpClient $client;
        final /* synthetic */ Request $request;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ WebRtcCamera this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(OkHttpClient okHttpClient, Request request, WebRtcCamera webRtcCamera, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$client = okHttpClient;
            this.$request = request;
            this.this$0 = webRtcCamera;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$client, this.$request, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super String> dVar, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0077  */
        /* JADX WARN: Code duplicated, block: B:30:0x0095  */
        /* JADX WARN: Code duplicated, block: B:33:0x00b7 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.d dVar;
            Object objM139constructorimpl;
            kotlinx.coroutines.flow.d dVar2;
            WebRtcCamera webRtcCamera;
            Throwable thM142exceptionOrNullimpl;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    objM139constructorimpl = this.L$1;
                    dVar2 = (kotlinx.coroutines.flow.d) this.L$0;
                    kotlin.k.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.k.b(obj);
                }
                return kotlin.v.f15822a;
            }
            kotlin.k.b(obj);
            dVar = (kotlinx.coroutines.flow.d) this.L$0;
            OkHttpClient okHttpClient = this.$client;
            Request request = this.$request;
            try {
                Result.Companion companion = Result.INSTANCE;
                ResponseBody responseBodyBody = okHttpClient.newCall(request).execute().body();
                objM139constructorimpl = Result.m139constructorimpl(responseBodyBody == null ? null : responseBodyBody.string());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m146isSuccessimpl(objM139constructorimpl)) {
                this.L$0 = dVar;
                this.L$1 = objM139constructorimpl;
                this.label = 1;
                if (dVar.emit((String) objM139constructorimpl, this) == objD) {
                    return objD;
                }
                dVar2 = dVar;
            } else {
                webRtcCamera = this.this$0;
                thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
                if (thM142exceptionOrNullimpl != null) {
                    cn.mucang.android.core.utils.t.d("WebRtcCamera", kotlin.jvm.internal.r.m("请求播放地址失败：", thM142exceptionOrNullimpl.getMessage()));
                    if (System.currentTimeMillis() - webRtcCamera.l > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("rtc请求播放地址失败：", thM142exceptionOrNullimpl.getMessage()));
                        webRtcCamera.l = System.currentTimeMillis();
                    }
                    this.L$0 = objM139constructorimpl;
                    this.L$1 = null;
                    this.label = 2;
                    if (dVar.emit("", this) == objD) {
                        return objD;
                    }
                }
            }
            return kotlin.v.f15822a;
            dVar = dVar2;
            webRtcCamera = this.this$0;
            thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                cn.mucang.android.core.utils.t.d("WebRtcCamera", kotlin.jvm.internal.r.m("请求播放地址失败：", thM142exceptionOrNullimpl.getMessage()));
                if (System.currentTimeMillis() - webRtcCamera.l > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("rtc请求播放地址失败：", thM142exceptionOrNullimpl.getMessage()));
                    webRtcCamera.l = System.currentTimeMillis();
                }
                this.L$0 = objM139constructorimpl;
                this.L$1 = null;
                this.label = 2;
                if (dVar.emit("", this) == objD) {
                    return objD;
                }
            }
            return kotlin.v.f15822a;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WebRtcCamera f7497a;
        final /* synthetic */ String b;

        public a(WebRtcCamera webRtcCamera, String str) {
            this.f7497a = webRtcCamera;
            this.b = str;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(String str, Continuation continuation) throws Throwable {
            Object objM139constructorimpl;
            String str2 = str;
            if (TextUtils.isEmpty(str2)) {
                Object objW = this.f7497a.w(this.b, continuation);
                return objW == kotlin.coroutines.intrinsics.b.d() ? objW : kotlin.v.f15822a;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl((SdpBean) JSON.parseObject(str2, SdpBean.class));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            SdpBean sdpBean = (SdpBean) objM139constructorimpl;
            if (sdpBean == null || sdpBean.getCode() == 400) {
                cn.mucang.android.core.utils.t.d("WebRtcCamera", "未匹配到sdp");
                cn.mucang.android.jiakaoyi.framework.log.f.o("rtc未匹配到sdp");
                Object objW2 = this.f7497a.w(this.b, continuation);
                return objW2 == kotlin.coroutines.intrinsics.b.d() ? objW2 : kotlin.v.f15822a;
            }
            if (TextUtils.isEmpty(sdpBean.getSdp())) {
                Object objW3 = this.f7497a.w(this.b, continuation);
                return objW3 == kotlin.coroutines.intrinsics.b.d() ? objW3 : kotlin.v.f15822a;
            }
            cn.mucang.android.core.utils.t.a("WebRtcCamera", "成功获取到AI盒子的sdp信息，下一步准备连接播放");
            cn.mucang.android.jiakaoyi.framework.log.f.o("rtc成功获取到AI盒子的sdp信息，下一步准备连接播放");
            this.f7497a.N(sdpBean.getSdp());
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebRtcCamera$openWebRtc$1(OkHttpClient okHttpClient, Request request, WebRtcCamera webRtcCamera, String str, Continuation<? super WebRtcCamera$openWebRtc$1> continuation) {
        super(2, continuation);
        this.$client = okHttpClient;
        this.$request = request;
        this.this$0 = webRtcCamera;
        this.$sdp = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new WebRtcCamera$openWebRtc$1(this.$client, this.$request, this.this$0, this.$sdp, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((WebRtcCamera$openWebRtc$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.flow.c cVarT = kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.$client, this.$request, this.this$0, null));
            a aVar = new a(this.this$0, this.$sdp);
            this.label = 1;
            if (cVarT.d(aVar, this) == objD) {
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
