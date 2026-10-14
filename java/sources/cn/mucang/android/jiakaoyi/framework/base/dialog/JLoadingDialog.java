package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.R;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0002J\u0012\u0010\n\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "textView", "Landroid/widget/TextView;", "dismiss", "", "initView", "showLoading", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JLoadingDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f3409a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JLoadingDialog(Context context) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        setContentView(R.layout.common_loading_dialog);
        a();
        setCanceledOnTouchOutside(false);
        DialogExtensionKt.c(this);
    }

    private final void a() {
        View viewFindViewById = findViewById(R.id.text);
        Objects.requireNonNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        this.f3409a = (TextView) viewFindViewById;
    }

    public static /* synthetic */ void c(JLoadingDialog jLoadingDialog, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        jLoadingDialog.b(str);
    }

    public final void b(String str) {
        kotlin.v vVar;
        TextView textView;
        if (str == null) {
            vVar = null;
        } else {
            TextView textView2 = this.f3409a;
            if (textView2 != null) {
                textView2.setText(str);
            }
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null && (textView = this.f3409a) != null) {
            textView.setText("正在加载中...");
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            show();
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.dismiss();
            Result.m139constructorimpl(kotlin.v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(kotlin.k.a(th));
        }
    }
}
