package cn.mucang.jiakaoyi.uilib.upgrade;

import android.app.Dialog;
import cn.mucang.jiakaoyi.uilib.mapupdate.DownloadProgressDialog;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1", f = "ExamSiteResUpdateHelper.kt", l = {}, m = "invokeSuspend")
final class ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ DownloadProgressDialog $mapDownloadDialog;
    final /* synthetic */ Float $progress;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1(DownloadProgressDialog downloadProgressDialog, Float f2, Continuation<? super ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1> continuation) {
        super(2, continuation);
        this.$mapDownloadDialog = downloadProgressDialog;
        this.$progress = f2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1(this.$mapDownloadDialog, this.$progress, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ExamSiteResUpdateHelper$checkUpdateVoicePack$1$resConfig$1$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        Dialog dialog = this.$mapDownloadDialog.getDialog();
        boolean z = false;
        if (dialog != null && dialog.isShowing()) {
            z = true;
        }
        if (z) {
            DownloadProgressDialog downloadProgressDialog = this.$mapDownloadDialog;
            Float progress = this.$progress;
            r.d(progress, "progress");
            downloadProgressDialog.r(progress.floatValue());
        }
        return v.f15822a;
    }
}
