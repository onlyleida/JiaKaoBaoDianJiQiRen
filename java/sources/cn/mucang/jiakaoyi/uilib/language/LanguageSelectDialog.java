package cn.mucang.jiakaoyi.uilib.language;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.databinding.DialogSelectLanguageBinding;
import cn.mucang.android.jiakaoyi.framework.language.Language;
import cn.mucang.android.jiakaoyi.framework.language.LanguageManager;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/language/LanguageSelectDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/framework/databinding/DialogSelectLanguageBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LanguageSelectDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogSelectLanguageBinding f9352a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageSelectDialog(Context context) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(LanguageSelectDialog this$0, View view) {
        r.e(this$0, "this$0");
        DialogSelectLanguageBinding dialogSelectLanguageBinding = this$0.f9352a;
        if (dialogSelectLanguageBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        if (dialogSelectLanguageBinding.uighurRb.isChecked()) {
            LanguageManager.d(Language.Uighur.getType());
            f0.g(MucangConfig.i(), cn.mucang.android.jiakaoyi.framework.consts.Language.UYGUR);
        } else {
            DialogSelectLanguageBinding dialogSelectLanguageBinding2 = this$0.f9352a;
            if (dialogSelectLanguageBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            if (dialogSelectLanguageBinding2.enRb.isChecked()) {
                f0.g(MucangConfig.i(), cn.mucang.android.jiakaoyi.framework.consts.Language.ENGLISH);
            } else {
                LanguageManager.d(Language.Chinese.getType());
                f0.g(MucangConfig.i(), cn.mucang.android.jiakaoyi.framework.consts.Language.CHINESE);
            }
        }
        DialogExtensionKt.b(this$0);
        if (f0.c()) {
            u.h("设置成功，即将退出，请重新启动App");
            g.b(j0.b(), null, null, new LanguageSelectDialog$onCreate$1$1(null), 3, null);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogSelectLanguageBinding dialogSelectLanguageBindingInflate = DialogSelectLanguageBinding.inflate(getLayoutInflater());
        r.d(dialogSelectLanguageBindingInflate, "inflate(layoutInflater)");
        this.f9352a = dialogSelectLanguageBindingInflate;
        if (dialogSelectLanguageBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogSelectLanguageBindingInflate.getRoot());
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.dialog_default_width), -2);
        }
        if (!f0.c()) {
            DialogSelectLanguageBinding dialogSelectLanguageBinding = this.f9352a;
            if (dialogSelectLanguageBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectLanguageBinding.titleTv.setText("语言切换");
            if (LanguageManager.a() == Language.Uighur) {
                DialogSelectLanguageBinding dialogSelectLanguageBinding2 = this.f9352a;
                if (dialogSelectLanguageBinding2 == null) {
                    r.u("viewBinding");
                    throw null;
                }
                dialogSelectLanguageBinding2.uighurRb.setChecked(true);
            } else {
                DialogSelectLanguageBinding dialogSelectLanguageBinding3 = this.f9352a;
                if (dialogSelectLanguageBinding3 == null) {
                    r.u("viewBinding");
                    throw null;
                }
                dialogSelectLanguageBinding3.chineseRb.setChecked(true);
            }
        } else if (f0.b() == cn.mucang.android.jiakaoyi.framework.consts.Language.UYGUR) {
            DialogSelectLanguageBinding dialogSelectLanguageBinding4 = this.f9352a;
            if (dialogSelectLanguageBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectLanguageBinding4.uighurRb.setChecked(true);
        } else if (f0.b() == cn.mucang.android.jiakaoyi.framework.consts.Language.ENGLISH) {
            DialogSelectLanguageBinding dialogSelectLanguageBinding5 = this.f9352a;
            if (dialogSelectLanguageBinding5 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectLanguageBinding5.enRb.setChecked(true);
        } else {
            DialogSelectLanguageBinding dialogSelectLanguageBinding6 = this.f9352a;
            if (dialogSelectLanguageBinding6 == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogSelectLanguageBinding6.chineseRb.setChecked(true);
        }
        DialogSelectLanguageBinding dialogSelectLanguageBinding7 = this.f9352a;
        if (dialogSelectLanguageBinding7 != null) {
            dialogSelectLanguageBinding7.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.language.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageSelectDialog.b(this.f9353a, view);
                }
            });
        } else {
            r.u("viewBinding");
            throw null;
        }
    }
}
