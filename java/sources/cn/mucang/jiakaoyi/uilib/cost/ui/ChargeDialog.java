package cn.mucang.jiakaoyi.uilib.cost.ui;

import android.app.Dialog;
import kotlin.Metadata;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u000f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/cost/ui/ChargeDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "learnerId", "", "hintWord", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "getHintWord", "()Ljava/lang/String;", "getLearnerId", "uuid", "checkSuccessPay", "", "dismiss", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ChargeDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9197a;

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        g.b(j0.a(w0.b()), null, null, new ChargeDialog$checkSuccessPay$1(this, null), 3, null);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        throw null;
    }

    public final String e() {
        throw null;
    }
}
