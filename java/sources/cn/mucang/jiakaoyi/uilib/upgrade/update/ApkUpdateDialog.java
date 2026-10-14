package cn.mucang.jiakaoyi.uilib.upgrade.update;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.ApkUpdateDialogBinding;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.upgrade.e.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u001c\u001a\u00020\u001dH\u0007J\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u0010J\u000e\u0010#\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u0010J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&H\u0007R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/upgrade/update/ApkUpdateDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "version", "", "title", SocialConstants.PARAM_APP_DESC, "leftText", "rightText", "canCancel", "", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getCanCancel", "()Z", "cancelUpdateListener", "Landroid/view/View$OnClickListener;", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getLeftText", "getRightText", "startUpdateListener", "getTitle", "getVersion", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ApkUpdateDialogBinding;", "initDialog", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setCancelUpdateListener", "onClickListener", "setStartUpdateListener", "updateProgress", "process", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ApkUpdateDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10336a;
    private final String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f10337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f10338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f10339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ApkUpdateDialogBinding f10340g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View.OnClickListener f10341h;
    private View.OnClickListener i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApkUpdateDialog(Context context, String str, String str2, String str3, String str4, String str5, boolean z) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        this.f10336a = str;
        this.b = str2;
        this.c = str3;
        this.f10337d = str4;
        this.f10338e = str5;
        this.f10339f = z;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getB() {
        return this.b;
    }

    @SuppressLint({"SetTextI18n"})
    public final void c() {
        ApkUpdateDialogBinding apkUpdateDialogBinding = this.f10340g;
        if (apkUpdateDialogBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding.upgradeBar.setVisibility(8);
        ApkUpdateDialogBinding apkUpdateDialogBinding2 = this.f10340g;
        if (apkUpdateDialogBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding2.txtProgress.setVisibility(8);
        ApkUpdateDialogBinding apkUpdateDialogBinding3 = this.f10340g;
        if (apkUpdateDialogBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding3.upgradeBar.setMax(100);
        ApkUpdateDialogBinding apkUpdateDialogBinding4 = this.f10340g;
        if (apkUpdateDialogBinding4 != null) {
            apkUpdateDialogBinding4.llBtn.setVisibility(0);
        } else {
            r.u("viewBinding");
            throw null;
        }
    }

    public final void d(View.OnClickListener onClickListener) {
        r.e(onClickListener, "onClickListener");
        this.i = onClickListener;
    }

    public final void e(View.OnClickListener onClickListener) {
        r.e(onClickListener, "onClickListener");
        this.f10341h = onClickListener;
    }

    @SuppressLint({"SetTextI18n"})
    public final void f(float f2) {
        ApkUpdateDialogBinding apkUpdateDialogBinding = this.f10340g;
        if (apkUpdateDialogBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding.upgradeBar.setVisibility(0);
        ApkUpdateDialogBinding apkUpdateDialogBinding2 = this.f10340g;
        if (apkUpdateDialogBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding2.txtProgress.setVisibility(0);
        ApkUpdateDialogBinding apkUpdateDialogBinding3 = this.f10340g;
        if (apkUpdateDialogBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding3.llBtn.setVisibility(8);
        int i = (int) (f2 * 100);
        ApkUpdateDialogBinding apkUpdateDialogBinding4 = this.f10340g;
        if (apkUpdateDialogBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        apkUpdateDialogBinding4.upgradeBar.setProgress(i);
        if (i == 100) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ApkUpdateDialogBinding apkUpdateDialogBindingInflate = ApkUpdateDialogBinding.inflate(getLayoutInflater());
        r.d(apkUpdateDialogBindingInflate, "inflate(layoutInflater)");
        this.f10340g = apkUpdateDialogBindingInflate;
        if (apkUpdateDialogBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(apkUpdateDialogBindingInflate.getRoot());
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        String str = this.f10336a;
        if (str != null) {
            ApkUpdateDialogBinding apkUpdateDialogBinding = this.f10340g;
            if (apkUpdateDialogBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding.versionTv.setText(str);
        } else {
            ApkUpdateDialogBinding apkUpdateDialogBinding2 = this.f10340g;
            if (apkUpdateDialogBinding2 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding2.versionTv.setVisibility(4);
        }
        if (this.b != null) {
            ApkUpdateDialogBinding apkUpdateDialogBinding3 = this.f10340g;
            if (apkUpdateDialogBinding3 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding3.titleTv.setText(getB());
        }
        if (this.c != null) {
            ApkUpdateDialogBinding apkUpdateDialogBinding4 = this.f10340g;
            if (apkUpdateDialogBinding4 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding4.descTv.setText(getC());
        }
        if (TextUtils.isEmpty(this.f10337d)) {
            ApkUpdateDialogBinding apkUpdateDialogBinding5 = this.f10340g;
            if (apkUpdateDialogBinding5 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding5.leftTv.setVisibility(8);
        } else {
            ApkUpdateDialogBinding apkUpdateDialogBinding6 = this.f10340g;
            if (apkUpdateDialogBinding6 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding6.leftTv.setText(this.f10337d);
            View.OnClickListener onClickListener = this.i;
            if (onClickListener != null) {
                ApkUpdateDialogBinding apkUpdateDialogBinding7 = this.f10340g;
                if (apkUpdateDialogBinding7 == null) {
                    r.u("viewBinding");
                    throw null;
                }
                apkUpdateDialogBinding7.leftTv.setOnClickListener(onClickListener);
            }
        }
        if (TextUtils.isEmpty(this.f10338e)) {
            ApkUpdateDialogBinding apkUpdateDialogBinding8 = this.f10340g;
            if (apkUpdateDialogBinding8 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding8.rightTv.setVisibility(8);
        } else {
            ApkUpdateDialogBinding apkUpdateDialogBinding9 = this.f10340g;
            if (apkUpdateDialogBinding9 == null) {
                r.u("viewBinding");
                throw null;
            }
            apkUpdateDialogBinding9.rightTv.setText(this.f10338e);
            View.OnClickListener onClickListener2 = this.f10341h;
            if (onClickListener2 != null) {
                ApkUpdateDialogBinding apkUpdateDialogBinding10 = this.f10340g;
                if (apkUpdateDialogBinding10 == null) {
                    r.u("viewBinding");
                    throw null;
                }
                apkUpdateDialogBinding10.rightTv.setOnClickListener(onClickListener2);
            }
        }
        setCancelable(this.f10339f);
        setCanceledOnTouchOutside(this.f10339f);
        DialogExtensionKt.c(this);
        c();
    }
}
