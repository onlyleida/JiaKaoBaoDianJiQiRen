package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogCopyMapBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.map.w0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/CopyMapDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "onCorrect", "Lkotlin/Function1;", "", "", "getOnCorrect", "()Lkotlin/jvm/functions/Function1;", "setOnCorrect", "(Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCopyMapBinding;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CopyMapDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogCopyMapBinding f5137a;
    private Function1<? super String, kotlin.v> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyMapDialog(Context context) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(CopyMapDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(final CopyMapDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogCopyMapBinding dialogCopyMapBinding = this$0.f5137a;
        if (dialogCopyMapBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        final String string = dialogCopyMapBinding.examMapNameEt.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入考场地图名称");
        } else if (cn.mucang.android.core.utils.x.e()) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.b
                @Override // java.lang.Runnable
                public final void run() {
                    CopyMapDialog.g(this.f5084a, string);
                }
            });
        } else {
            cn.mucang.android.core.utils.u.h("当前设备未联网");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(CopyMapDialog this$0, String examMapName) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(examMapName, "$examMapName");
        this$0.dismiss();
        Function1<String, kotlin.v> function1A = this$0.a();
        if (function1A == null) {
            return;
        }
        function1A.invoke(examMapName);
    }

    public final Function1<String, kotlin.v> a() {
        return this.b;
    }

    public final void h(Function1<? super String, kotlin.v> function1) {
        this.b = function1;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogCopyMapBinding dialogCopyMapBindingInflate = DialogCopyMapBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogCopyMapBindingInflate, "inflate(layoutInflater)");
        this.f5137a = dialogCopyMapBindingInflate;
        if (dialogCopyMapBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogCopyMapBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.dp_600), -2);
        }
        DialogCopyMapBinding dialogCopyMapBinding = this.f5137a;
        if (dialogCopyMapBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogCopyMapBinding.leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CopyMapDialog.e(this.f5086a, view);
            }
        });
        DialogCopyMapBinding dialogCopyMapBinding2 = this.f5137a;
        if (dialogCopyMapBinding2 != null) {
            dialogCopyMapBinding2.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CopyMapDialog.f(this.f5082a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
