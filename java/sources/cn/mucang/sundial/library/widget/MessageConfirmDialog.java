package cn.mucang.sundial.library.widget;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.databinding.TtDialogMessageComfirmBinding;
import com.iflytek.cloud.SpeechConstant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/widget/MessageConfirmDialog;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/v;", "onCreate", "(Landroid/os/Bundle;)V", "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", SpeechConstant.PARAMS, "<init>", "(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V", "Builder", "library_release"}, k = 1, mv = {1, 1, 15})
public final class MessageConfirmDialog extends BlankDialog {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "Lcn/mucang/sundial/library/widget/DialogCallBack;", "callBack", "setContent", "(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/MessageConfirmDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "dialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "getDialog", "()Lcn/mucang/sundial/library/widget/BlankDialog;", "setDialog", "(Lcn/mucang/sundial/library/widget/BlankDialog;)V", "Landroid/content/Context;", "context", "", "useTheme", "<init>", "(Landroid/content/Context;Z)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Builder extends BlankDialog.Builder {
        private BlankDialog dialog;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Context context, boolean z) {
            super(context);
            r.e(context, "context");
            setCustomViewBinding(TtDialogMessageComfirmBinding.inflate(LayoutInflater.from(context)));
            setCancellable(true);
            setCancellableOnTouchOutside(true);
            setViewListener(new BlankDialog.ViewListener() { // from class: cn.mucang.sundial.library.widget.MessageConfirmDialog.Builder.1
                @Override // cn.mucang.sundial.library.widget.BlankDialog.ViewListener
                public void setViews(BlankDialog dialog, a viewBinding) {
                    r.e(dialog, "dialog");
                    Builder.this.setDialog(dialog);
                }
            });
        }

        public final BlankDialog getDialog() {
            return this.dialog;
        }

        public final Builder setContent(final String content, final DialogCallBack callBack) {
            r.e(content, "content");
            a customViewBinding = getParams().getCustomViewBinding();
            if (!(customViewBinding instanceof TtDialogMessageComfirmBinding)) {
                customViewBinding = null;
            }
            TtDialogMessageComfirmBinding ttDialogMessageComfirmBinding = (TtDialogMessageComfirmBinding) customViewBinding;
            if (ttDialogMessageComfirmBinding != null) {
                TextView msg = ttDialogMessageComfirmBinding.msg;
                r.d(msg, "msg");
                msg.setText(content);
                ttDialogMessageComfirmBinding.subject3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.MessageConfirmDialog$Builder$setContent$$inlined$apply$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BlankDialog dialog = this.$this_apply$inlined.getDialog();
                        if (dialog != null) {
                            dialog.dismiss();
                        }
                        DialogCallBack dialogCallBack = callBack;
                        if (dialogCallBack != null) {
                            dialogCallBack.onSelect(0);
                        }
                    }
                });
            }
            return this;
        }

        public final void setDialog(BlankDialog blankDialog) {
            this.dialog = blankDialog;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageConfirmDialog(BlankDialog.Params params) {
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
