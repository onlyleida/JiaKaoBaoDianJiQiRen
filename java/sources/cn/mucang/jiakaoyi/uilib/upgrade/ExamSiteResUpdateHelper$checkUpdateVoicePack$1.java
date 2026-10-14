package cn.mucang.jiakaoyi.uilib.upgrade;

import cn.mucang.jiakaoyi.uilib.mapupdate.DownloadProgressDialog;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ResConfigInfo;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateVoicePack$1", f = "ExamSiteResUpdateHelper.kt", l = {}, m = "invokeSuspend")
final class ExamSiteResUpdateHelper$checkUpdateVoicePack$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ long $examSiteId;
    final /* synthetic */ DownloadProgressDialog $mapDownloadDialog;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateVoicePack$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateVoicePack$1$1", f = "ExamSiteResUpdateHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ DownloadProgressDialog $mapDownloadDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadProgressDialog downloadProgressDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$mapDownloadDialog = downloadProgressDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$mapDownloadDialog, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.$mapDownloadDialog.dismiss();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExamSiteResUpdateHelper$checkUpdateVoicePack$1(long j, DownloadProgressDialog downloadProgressDialog, Continuation<? super ExamSiteResUpdateHelper$checkUpdateVoicePack$1> continuation) {
        super(2, continuation);
        this.$examSiteId = j;
        this.$mapDownloadDialog = downloadProgressDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m119invokeSuspend$lambda0(i0 i0Var, DownloadProgressDialog downloadProgressDialog, Float f2) {
        g.b(i0Var, w0.c(), null, new ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1(downloadProgressDialog, f2, null), 2, null);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        ExamSiteResUpdateHelper$checkUpdateVoicePack$1 examSiteResUpdateHelper$checkUpdateVoicePack$1 = new ExamSiteResUpdateHelper$checkUpdateVoicePack$1(this.$examSiteId, this.$mapDownloadDialog, continuation);
        examSiteResUpdateHelper$checkUpdateVoicePack$1.L$0 = obj;
        return examSiteResUpdateHelper$checkUpdateVoicePack$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ExamSiteResUpdateHelper$checkUpdateVoicePack$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        final i0 i0Var = (i0) this.L$0;
        ExamSiteResUpdateHelper examSiteResUpdateHelper = ExamSiteResUpdateHelper.f10312a;
        long j = this.$examSiteId;
        final DownloadProgressDialog downloadProgressDialog = this.$mapDownloadDialog;
        ResConfigInfo resConfigInfoG = examSiteResUpdateHelper.g(j, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.upgrade.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj2) {
                ExamSiteResUpdateHelper$checkUpdateVoicePack$1.m119invokeSuspend$lambda0(i0Var, downloadProgressDialog, (Float) obj2);
            }
        });
        if (resConfigInfoG != null) {
            ExamSiteModel examSiteModelD = ExamSiteUtil.d();
            boolean z = false;
            if (examSiteModelD != null && examSiteModelD.examSiteId == this.$examSiteId) {
                z = true;
            }
            if (z) {
                String name = resConfigInfoG.getName();
                if (name == null) {
                    name = "";
                }
                examSiteResUpdateHelper.i(examSiteModelD, name, resConfigInfoG.getConfigId());
                cn.mucang.android.jiakaoyi.framework.tts.i.c.d().b(resConfigInfoG.getName(), kotlin.coroutines.jvm.internal.a.e(resConfigInfoG.getConfigId()), resConfigInfoG.getVersion());
            }
        }
        g.b(i0Var, w0.c(), null, new AnonymousClass1(this.$mapDownloadDialog, null), 2, null);
        return v.f15822a;
    }
}
