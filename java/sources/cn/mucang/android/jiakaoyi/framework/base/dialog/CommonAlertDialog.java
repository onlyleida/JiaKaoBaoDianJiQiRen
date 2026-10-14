package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.base.MultiClickListener;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.databinding.AlertDialogCommonBinding;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import com.iflytek.cloud.SpeechConstant;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\r\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", SpeechConstant.PARAMS, "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$DialogParams;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$DialogParams;)V", "viewBinding", "Lcn/mucang/android/jiakaoyi/framework/databinding/AlertDialogCommonBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setData", "show", "Builder", "DialogParams", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CommonAlertDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DialogParams f3355a;
    private AlertDialogCommonBinding b;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\bJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$Builder;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "btnClickListener", "Landroid/view/View$OnClickListener;", "btnText", "", "closeListener", SocialConstants.PARAM_APP_DESC, "title", "build", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;", "setBtnClickListener", "setBtnText", "setCloseListener", "setDesc", "setTitle", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3356a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f3357d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View.OnClickListener f3358e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private View.OnClickListener f3359f;

        public a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            this.f3356a = context;
            this.c = "";
            this.f3357d = "";
        }

        public final CommonAlertDialog a() {
            return new CommonAlertDialog(this.f3356a, new DialogParams(this.b, this.c, this.f3357d, this.f3358e, this.f3359f));
        }

        public final a b(View.OnClickListener btnClickListener) {
            kotlin.jvm.internal.r.e(btnClickListener, "btnClickListener");
            this.f3358e = btnClickListener;
            return this;
        }

        public final a c(String btnText) {
            kotlin.jvm.internal.r.e(btnText, "btnText");
            this.f3357d = btnText;
            return this;
        }

        public final a d(String desc) {
            kotlin.jvm.internal.r.e(desc, "desc");
            this.c = desc;
            return this;
        }

        public final a e(String str) {
            this.b = str;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonAlertDialog(Context context, DialogParams params) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(params, "params");
        this.f3355a = params;
    }

    private final void c() {
        AlertDialogCommonBinding alertDialogCommonBinding = this.b;
        if (alertDialogCommonBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = alertDialogCommonBinding.titleTv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.titleTv");
        textView.setVisibility(TextUtils.isEmpty(this.f3355a.getTitle()) ? 8 : 0);
        AlertDialogCommonBinding alertDialogCommonBinding2 = this.b;
        if (alertDialogCommonBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        alertDialogCommonBinding2.titleTv.setText(this.f3355a.getTitle());
        AlertDialogCommonBinding alertDialogCommonBinding3 = this.b;
        if (alertDialogCommonBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView2 = alertDialogCommonBinding3.descTv;
        kotlin.jvm.internal.r.d(textView2, "viewBinding.descTv");
        textView2.setVisibility(!TextUtils.isEmpty(this.f3355a.getTitle()) && TextUtils.isEmpty(this.f3355a.getDesc()) ? 8 : 0);
        AlertDialogCommonBinding alertDialogCommonBinding4 = this.b;
        if (alertDialogCommonBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        alertDialogCommonBinding4.descTv.setText(this.f3355a.getDesc() + '(' + DeviceUtils.c() + ')');
        AlertDialogCommonBinding alertDialogCommonBinding5 = this.b;
        if (alertDialogCommonBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        alertDialogCommonBinding5.btnTv.setText(this.f3355a.getBtnText());
        AlertDialogCommonBinding alertDialogCommonBinding6 = this.b;
        if (alertDialogCommonBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        alertDialogCommonBinding6.btnTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CommonAlertDialog.d(this.f3382a, view);
            }
        });
        AlertDialogCommonBinding alertDialogCommonBinding7 = this.b;
        if (alertDialogCommonBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        alertDialogCommonBinding7.btnTv.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.a
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return CommonAlertDialog.e(view);
            }
        });
        AlertDialogCommonBinding alertDialogCommonBinding8 = this.b;
        if (alertDialogCommonBinding8 != null) {
            alertDialogCommonBinding8.descTv.setOnClickListener(new MultiClickListener(0, 0L, new Function1<View, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog$setData$3
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(View view) {
                    invoke2(view);
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    if (AppUtils.j()) {
                        this.this$0.dismiss();
                    } else {
                        LiveBus.c(new SsoLoginEvent());
                    }
                }
            }, 3, null));
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(CommonAlertDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        View.OnClickListener btnClickListener = this$0.f3355a.getBtnClickListener();
        if (btnClickListener != null) {
            btnClickListener.onClick(view);
        }
        this$0.dismiss();
        cn.mucang.android.jiakaoyi.framework.log.f.o("弹窗(" + ((Object) this$0.f3355a.getTitle()) + ")消失");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(View view) {
        cn.mucang.android.jiakaoyi.framework.j.a.a();
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        AlertDialogCommonBinding alertDialogCommonBindingInflate = AlertDialogCommonBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(alertDialogCommonBindingInflate, "inflate(layoutInflater)");
        this.b = alertDialogCommonBindingInflate;
        if (alertDialogCommonBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(alertDialogCommonBindingInflate.getRoot());
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        c();
        cn.mucang.android.jiakaoyi.framework.log.f.o("弹窗(" + ((Object) this.f3355a.getTitle()) + ")显示");
    }

    @Override // android.app.Dialog
    public void show() {
        Activity activityA = ActivityUtils.a(getContext());
        if (activityA == null || activityA.isFinishing() || activityA.isDestroyed()) {
            return;
        }
        super.show();
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog$b, reason: from toString */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B;\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003JA\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\r\"\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$DialogParams;", "", "title", "", SocialConstants.PARAM_APP_DESC, "btnText", "btnClickListener", "Landroid/view/View$OnClickListener;", "closeListener", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V", "getBtnClickListener", "()Landroid/view/View$OnClickListener;", "getBtnText", "()Ljava/lang/String;", "getCloseListener", "getDesc", "setDesc", "(Ljava/lang/String;)V", "getTitle", "component1", "component2", "component3", "component4", "component5", MenuOptions.COPY, "equals", "", "other", "hashCode", "", "toString", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final /* data */ class DialogParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
        private final String title;

        /* JADX INFO: renamed from: b, reason: from toString */
        private String desc;

        /* JADX INFO: renamed from: c, reason: from toString */
        private final String btnText;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from toString */
        private final View.OnClickListener btnClickListener;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from toString */
        private final View.OnClickListener closeListener;

        public DialogParams(String str, String desc, String btnText, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
            kotlin.jvm.internal.r.e(desc, "desc");
            kotlin.jvm.internal.r.e(btnText, "btnText");
            this.title = str;
            this.desc = desc;
            this.btnText = btnText;
            this.btnClickListener = onClickListener;
            this.closeListener = onClickListener2;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final View.OnClickListener getBtnClickListener() {
            return this.btnClickListener;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getBtnText() {
            return this.btnText;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getDesc() {
            return this.desc;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DialogParams)) {
                return false;
            }
            DialogParams dialogParams = (DialogParams) other;
            return kotlin.jvm.internal.r.a(this.title, dialogParams.title) && kotlin.jvm.internal.r.a(this.desc, dialogParams.desc) && kotlin.jvm.internal.r.a(this.btnText, dialogParams.btnText) && kotlin.jvm.internal.r.a(this.btnClickListener, dialogParams.btnClickListener) && kotlin.jvm.internal.r.a(this.closeListener, dialogParams.closeListener);
        }

        public int hashCode() {
            String str = this.title;
            int iHashCode = (((((str == null ? 0 : str.hashCode()) * 31) + this.desc.hashCode()) * 31) + this.btnText.hashCode()) * 31;
            View.OnClickListener onClickListener = this.btnClickListener;
            int iHashCode2 = (iHashCode + (onClickListener == null ? 0 : onClickListener.hashCode())) * 31;
            View.OnClickListener onClickListener2 = this.closeListener;
            return iHashCode2 + (onClickListener2 != null ? onClickListener2.hashCode() : 0);
        }

        public String toString() {
            return "DialogParams(title=" + ((Object) this.title) + ", desc=" + this.desc + ", btnText=" + this.btnText + ", btnClickListener=" + this.btnClickListener + ", closeListener=" + this.closeListener + ')';
        }

        public /* synthetic */ DialogParams(String str, String str2, String str3, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, int i, kotlin.jvm.internal.o oVar) {
            this((i & 1) != 0 ? null : str, str2, str3, (i & 8) != 0 ? null : onClickListener, (i & 16) != 0 ? null : onClickListener2);
        }
    }
}
