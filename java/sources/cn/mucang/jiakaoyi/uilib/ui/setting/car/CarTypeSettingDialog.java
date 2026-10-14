package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogCarTypeSettingBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0006\u0010\u000b\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogCarTypeSettingBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "settingFail", "settingSuccess", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarTypeSettingDialog extends Dialog {
    public static final a b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogCarTypeSettingBinding f9942a;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.car.y$a */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog$Companion;", "", "()V", "show", "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;", "context", "Landroid/content/Context;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final CarTypeSettingDialog a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            CarTypeSettingDialog carTypeSettingDialog = new CarTypeSettingDialog(context);
            carTypeSettingDialog.show();
            return carTypeSettingDialog;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarTypeSettingDialog(Context context) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(CarTypeSettingDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    public final void c() {
        DialogCarTypeSettingBinding dialogCarTypeSettingBinding = this.f9942a;
        if (dialogCarTypeSettingBinding != null) {
            TextView textView = dialogCarTypeSettingBinding == null ? null : dialogCarTypeSettingBinding.descTv;
            if (textView == null) {
                return;
            }
            textView.setText("设置失败，请重新选择设置");
        }
    }

    public final void d() {
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogCarTypeSettingBinding dialogCarTypeSettingBindingInflate = DialogCarTypeSettingBinding.inflate(LayoutInflater.from(getContext()));
        this.f9942a = dialogCarTypeSettingBindingInflate;
        kotlin.jvm.internal.r.c(dialogCarTypeSettingBindingInflate);
        setContentView(dialogCarTypeSettingBindingInflate.getRoot());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.dialog_default_width), -2);
        }
        DialogCarTypeSettingBinding dialogCarTypeSettingBinding = this.f9942a;
        kotlin.jvm.internal.r.c(dialogCarTypeSettingBinding);
        dialogCarTypeSettingBinding.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarTypeSettingDialog.b(this.f9931a, view);
            }
        });
    }
}
