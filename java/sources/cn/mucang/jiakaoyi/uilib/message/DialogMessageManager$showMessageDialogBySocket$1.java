package cn.mucang.jiakaoyi.uilib.message;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.jiakaoyi.uilib.message.dialog.DialogChainOwner;
import cn.mucang.jiakaoyi.uilib.message.dialog.g;
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
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.message.DialogMessageManager$showMessageDialogBySocket$1", f = "DialogMessageManager.kt", l = {}, m = "invokeSuspend")
final class DialogMessageManager$showMessageDialogBySocket$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ DialogMessageDetail $dialogDetail;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DialogMessageManager$showMessageDialogBySocket$1(DialogMessageDetail dialogMessageDetail, Continuation<? super DialogMessageManager$showMessageDialogBySocket$1> continuation) {
        super(2, continuation);
        this.$dialogDetail = dialogMessageDetail;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new DialogMessageManager$showMessageDialogBySocket$1(this.$dialogDetail, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((DialogMessageManager$showMessageDialogBySocket$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        Activity activityI = MucangConfig.i();
        g gVar = new g(activityI, this.$dialogDetail, DialogMessageManager.c);
        DialogChainOwner dialogChainOwner = DialogMessageManager.b;
        if (r.a(dialogChainOwner == null ? null : dialogChainOwner.k(), activityI)) {
            DialogChainOwner dialogChainOwner2 = DialogMessageManager.b;
            boolean z = false;
            if (dialogChainOwner2 != null && dialogChainOwner2.i()) {
                z = true;
            }
            if (z) {
                DialogChainOwner dialogChainOwner3 = DialogMessageManager.b;
                if (dialogChainOwner3 != null) {
                    dialogChainOwner3.f(gVar);
                }
                DialogChainOwner dialogChainOwner4 = DialogMessageManager.b;
                if (dialogChainOwner4 != null) {
                    dialogChainOwner4.n();
                }
            } else {
                gVar.c(null);
            }
        } else {
            gVar.c(null);
        }
        return v.f15822a;
    }
}
