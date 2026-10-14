package cn.mucang.sundial.library.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtDialogUpgradeComfirmBinding;
import com.iflytek.cloud.SpeechConstant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/v;", "onCreate", "(Landroid/os/Bundle;)V", "Lcn/mucang/sundial/library/widget/BlankDialog$Params;", SpeechConstant.PARAMS, "<init>", "(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V", "Builder", "library_release"}, k = 1, mv = {1, 1, 15})
public final class UpgradeConfirmDialog extends BlankDialog {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001f"}, d2 = {"Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog$Builder;", "", "delay", "Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;", "viewBinding", "Lkotlin/v;", "startCountDownUpload", "(ILcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;)V", "", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "Lcn/mucang/sundial/library/widget/DialogCallBack;", "callBack", "setContent", "(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "dialog", "Lcn/mucang/sundial/library/widget/BlankDialog;", "getDialog", "()Lcn/mucang/sundial/library/widget/BlankDialog;", "setDialog", "(Lcn/mucang/sundial/library/widget/BlankDialog;)V", "Landroid/os/CountDownTimer;", "upgradeCountDownTimer", "Landroid/os/CountDownTimer;", "Landroid/content/Context;", "context", "", "useTheme", "<init>", "(Landroid/content/Context;Z)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Builder extends BlankDialog.Builder {
        private BlankDialog dialog;
        private CountDownTimer upgradeCountDownTimer;

        /* JADX INFO: renamed from: cn.mucang.sundial.library.widget.UpgradeConfirmDialog$Builder$1, reason: invalid class name */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"cn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$1", "Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;", "Lcn/mucang/sundial/library/widget/BlankDialog;", "dialog", "Landroidx/viewbinding/a;", "viewBinding", "Lkotlin/v;", "setViews", "(Lcn/mucang/sundial/library/widget/BlankDialog;Landroidx/viewbinding/a;)V", "library_release"}, k = 1, mv = {1, 1, 15})
        public static final class AnonymousClass1 implements BlankDialog.ViewListener {
            AnonymousClass1() {
            }

            @Override // cn.mucang.sundial.library.widget.BlankDialog.ViewListener
            public void setViews(BlankDialog dialog, a viewBinding) {
                r.e(dialog, "dialog");
                Builder.this.setDialog(dialog);
                dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.sundial.library.widget.UpgradeConfirmDialog$Builder$1$setViews$1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        CountDownTimer countDownTimer = UpgradeConfirmDialog.Builder.this.upgradeCountDownTimer;
                        if (countDownTimer != null) {
                            countDownTimer.cancel();
                        }
                    }
                });
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Context context, boolean z) {
            super(context);
            r.e(context, "context");
            setCustomViewBinding(TtDialogUpgradeComfirmBinding.inflate(LayoutInflater.from(context)));
            setCancellable(true);
            setCancellableOnTouchOutside(true);
            setViewListener(new AnonymousClass1());
        }

        private final void startCountDownUpload(final int delay, final TtDialogUpgradeComfirmBinding viewBinding) {
            final long j = (delay * 1000) + 100;
            final long j2 = 1000;
            this.upgradeCountDownTimer = new CountDownTimer(j, j2) { // from class: cn.mucang.sundial.library.widget.UpgradeConfirmDialog$Builder$startCountDownUpload$1
                @Override // android.os.CountDownTimer
                @SuppressLint({"SetTextI18n"})
                public void onFinish() {
                    SundialLog.normal("10s倒计时完开始升级");
                    TextView textView = viewBinding.ok;
                    r.d(textView, "viewBinding.ok");
                    textView.setText("确定 (0s)");
                    viewBinding.ok.callOnClick();
                }

                @Override // android.os.CountDownTimer
                @SuppressLint({"SetTextI18n"})
                public void onTick(long millisUntilFinished) {
                    TextView textView = viewBinding.ok;
                    r.d(textView, "viewBinding.ok");
                    textView.setText("确定 (" + ((millisUntilFinished + ((long) 50)) / ((long) 1000)) + "s)");
                }
            }.start();
        }

        public final BlankDialog getDialog() {
            return this.dialog;
        }

        public final Builder setContent(final String content, final DialogCallBack callBack) {
            r.e(content, "content");
            a customViewBinding = getParams().getCustomViewBinding();
            if (!(customViewBinding instanceof TtDialogUpgradeComfirmBinding)) {
                customViewBinding = null;
            }
            final TtDialogUpgradeComfirmBinding ttDialogUpgradeComfirmBinding = (TtDialogUpgradeComfirmBinding) customViewBinding;
            if (ttDialogUpgradeComfirmBinding != null) {
                TextView title = ttDialogUpgradeComfirmBinding.title;
                r.d(title, "title");
                title.setText(content);
                startCountDownUpload(10, ttDialogUpgradeComfirmBinding);
                ttDialogUpgradeComfirmBinding.ok.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.UpgradeConfirmDialog$Builder$setContent$$inlined$apply$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CountDownTimer countDownTimer = this.$this_apply$inlined.upgradeCountDownTimer;
                        if (countDownTimer != null) {
                            countDownTimer.cancel();
                        }
                        SundialLog.normal("点击确定按钮开始升级");
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
    public UpgradeConfirmDialog(BlankDialog.Params params) {
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
