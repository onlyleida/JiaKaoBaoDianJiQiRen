package cn.mucang.sundial.library.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.activity.AdminCheckActivity;
import cn.mucang.sundial.library.databinding.TtDialogInitFailedBinding;
import cn.mucang.sundial.library.util.ClickController;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/widget/InitFailDialog;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/v;", "onCreate", "(Landroid/os/Bundle;)V", "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", SpeechConstant.PARAMS, "<init>", "(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V", "Builder", "library_release"}, k = 1, mv = {1, 1, 15})
public final class InitFailDialog extends BlankDialog {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "Lcn/mucang/sundial/library/widget/DialogCallBack;", "callBack", "setContent", "(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/InitFailDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "dialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "getDialog", "()Lcn/mucang/sundial/library/widget/BlankDialog;", "setDialog", "(Lcn/mucang/sundial/library/widget/BlankDialog;)V", "Landroid/app/Activity;", "context", "Landroid/app/Activity;", "getContext", "()Landroid/app/Activity;", "setContext", "(Landroid/app/Activity;)V", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Builder extends BlankDialog.Builder {
        private Activity context;
        private BlankDialog dialog;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Context context) {
            super(context);
            r.e(context, "context");
            this.context = (Activity) context;
            setCustomViewBinding(TtDialogInitFailedBinding.inflate(LayoutInflater.from(context)));
            setCancellable(false);
            setCancellableOnTouchOutside(false);
            setViewListener(new BlankDialog.ViewListener() { // from class: cn.mucang.sundial.library.widget.InitFailDialog.Builder.1
                @Override // cn.mucang.sundial.library.widget.BlankDialog.ViewListener
                public void setViews(BlankDialog dialog, a viewBinding) {
                    r.e(dialog, "dialog");
                    Builder.this.setDialog(dialog);
                }
            });
        }

        public final Activity getContext() {
            return this.context;
        }

        public final BlankDialog getDialog() {
            return this.dialog;
        }

        public final Builder setContent(final DialogCallBack callBack) {
            a customViewBinding = getParams().getCustomViewBinding();
            if (!(customViewBinding instanceof TtDialogInitFailedBinding)) {
                customViewBinding = null;
            }
            TtDialogInitFailedBinding ttDialogInitFailedBinding = (TtDialogInitFailedBinding) customViewBinding;
            if (ttDialogInitFailedBinding != null) {
                LinearLayout root = ttDialogInitFailedBinding.getRoot();
                r.d(root, "viewBinding.root");
                if (!DeviceUtils.isSingleApk(root.getContext())) {
                    TextView textView = ttDialogInitFailedBinding.settings;
                    r.d(textView, "viewBinding.settings");
                    textView.setText("退出");
                }
                ttDialogInitFailedBinding.settings.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.InitFailDialog$Builder$setContent$$inlined$apply$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BlankDialog dialog = this.$this_apply.getDialog();
                        if (dialog != null) {
                            dialog.dismiss();
                        }
                        DialogCallBack dialogCallBack = callBack;
                        if (dialogCallBack != null) {
                            dialogCallBack.onSelect(0);
                        }
                    }
                });
                ttDialogInitFailedBinding.ok.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.InitFailDialog$Builder$setContent$$inlined$apply$lambda$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BlankDialog dialog = this.$this_apply.getDialog();
                        if (dialog != null) {
                            dialog.dismiss();
                        }
                        DialogCallBack dialogCallBack = callBack;
                        if (dialogCallBack != null) {
                            dialogCallBack.onSelect(1);
                        }
                    }
                });
                final ClickController clickController = new ClickController(5);
                ttDialogInitFailedBinding.msg.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.InitFailDialog$Builder$setContent$1$3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        clickController.click(new ClickController.ClickListener() { // from class: cn.mucang.sundial.library.widget.InitFailDialog$Builder$setContent$1$3.1
                            @Override // cn.mucang.sundial.library.util.ClickController.ClickListener
                            public void onClickCountFull() {
                                Activity context = InitFailDialog$Builder$setContent$1$3.this.$this_apply.getContext();
                                if (context != null) {
                                    context.startActivity(new Intent(InitFailDialog$Builder$setContent$1$3.this.$this_apply.getContext(), (Class<?>) AdminCheckActivity.class));
                                }
                            }
                        });
                    }
                });
            }
            return this;
        }

        public final void setContext(Activity activity) {
            this.context = activity;
        }

        public final void setDialog(BlankDialog blankDialog) {
            this.dialog = blankDialog;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitFailDialog(BlankDialog.Params params) {
        super(params);
        r.e(params, "params");
    }

    @Override // cn.mucang.sundial.library.widget.BlankDialog, androidx.appcompat.app.g, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(3);
        }
    }
}
