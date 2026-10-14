package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.databinding.GpsMissCommonBinding;
import com.iflytek.cloud.SpeechConstant;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\b\u0010\u0010\u001a\u00020\fH\u0003R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", SpeechConstant.PARAMS, "Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$DialogParams;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$DialogParams;)V", "mainLaunch", "Lkotlinx/coroutines/Job;", "viewBinding", "Lcn/mucang/android/jiakaoyi/framework/databinding/GpsMissCommonBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setData", "DialogParams", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CountDownDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DialogParams f3363a;
    private GpsMissCommonBinding b;
    private t1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownDialog(Context context, DialogParams params) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(params, "params");
        this.f3363a = params;
    }

    @SuppressLint({"SetTextI18n"})
    private final void f() {
        kotlin.v vVar;
        kotlin.v vVar2;
        String title = this.f3363a.getTitle();
        if (title == null) {
            vVar = null;
        } else {
            GpsMissCommonBinding gpsMissCommonBinding = this.b;
            if (gpsMissCommonBinding == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding.rightTitleTv.setVisibility(0);
            GpsMissCommonBinding gpsMissCommonBinding2 = this.b;
            if (gpsMissCommonBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding2.rightTitleTv.setText(title);
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null) {
            GpsMissCommonBinding gpsMissCommonBinding3 = this.b;
            if (gpsMissCommonBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding3.rightTitleTv.setVisibility(8);
        }
        GpsMissCommonBinding gpsMissCommonBinding4 = this.b;
        if (gpsMissCommonBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gpsMissCommonBinding4.secondText.setText(String.valueOf(this.f3363a.getSecond()));
        GpsMissCommonBinding gpsMissCommonBinding5 = this.b;
        if (gpsMissCommonBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gpsMissCommonBinding5.titleTv.setText(this.f3363a.getDesc());
        GpsMissCommonBinding gpsMissCommonBinding6 = this.b;
        if (gpsMissCommonBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gpsMissCommonBinding6.rightTv.setText(this.f3363a.getRightText());
        GpsMissCommonBinding gpsMissCommonBinding7 = this.b;
        if (gpsMissCommonBinding7 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gpsMissCommonBinding7.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CountDownDialog.g(this.f3385a, view);
            }
        });
        if (this.f3363a.getLeftText() == null) {
            vVar2 = null;
        } else {
            GpsMissCommonBinding gpsMissCommonBinding8 = this.b;
            if (gpsMissCommonBinding8 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding8.leftTv.setVisibility(0);
            GpsMissCommonBinding gpsMissCommonBinding9 = this.b;
            if (gpsMissCommonBinding9 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding9.leftTv.setText(this.f3363a.getLeftText());
            GpsMissCommonBinding gpsMissCommonBinding10 = this.b;
            if (gpsMissCommonBinding10 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding10.leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CountDownDialog.h(this.f3383a, view);
                }
            });
            vVar2 = kotlin.v.f15822a;
        }
        if (vVar2 == null) {
            GpsMissCommonBinding gpsMissCommonBinding11 = this.b;
            if (gpsMissCommonBinding11 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gpsMissCommonBinding11.leftTv.setVisibility(8);
        }
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.d
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                CountDownDialog.i(this.f3384a, dialogInterface);
            }
        });
        this.c = kotlinx.coroutines.g.b(j0.b(), null, null, new CountDownDialog$setData$7(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(CountDownDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        View.OnClickListener rightClickListener = this$0.f3363a.getRightClickListener();
        if (rightClickListener == null) {
            return;
        }
        rightClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(CountDownDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        View.OnClickListener leftClickListener = this$0.f3363a.getLeftClickListener();
        if (leftClickListener == null) {
            return;
        }
        leftClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(CountDownDialog this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        View.OnClickListener closeClickListener = this$0.f3363a.getCloseClickListener();
        if (closeClickListener == null) {
            return;
        }
        GpsMissCommonBinding gpsMissCommonBinding = this$0.b;
        if (gpsMissCommonBinding != null) {
            closeClickListener.onClick(gpsMissCommonBinding.getRoot());
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.d("TAG", e2.getMessage());
        }
        t1 t1Var = this.c;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        } else {
            kotlin.jvm.internal.r.u("mainLaunch");
            throw null;
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GpsMissCommonBinding gpsMissCommonBindingInflate = GpsMissCommonBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(gpsMissCommonBindingInflate, "inflate(layoutInflater)");
        this.b = gpsMissCommonBindingInflate;
        if (gpsMissCommonBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(gpsMissCommonBindingInflate.getRoot());
        setCancelable(this.f3363a.getCanCancel());
        setCanceledOnTouchOutside(this.f3363a.getCanCancel());
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) getContext().getResources().getDimension(R.dimen.dialog_default_width), -2);
        }
        f();
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$a, reason: from toString */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b&\b\u0086\b\u0018\u00002\u00020\u0001BY\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB\u0081\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\rHÆ\u0003J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010,\u001a\u00020\u0005HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u00101\u001a\u00020\rHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0089\u0001\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0010\u001a\u00020\r2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012HÆ\u0001J\u0013\u00104\u001a\u00020\r2\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0003HÖ\u0001J\t\u00107\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0011\u0010\u0010\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001b¨\u00068"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/CountDownDialog$DialogParams;", "", "second", "", "title", "", SocialConstants.PARAM_APP_DESC, "leftText", "leftClickListener", "Landroid/view/View$OnClickListener;", "rightText", "rightClickListener", "canCancel", "", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V", "closeClickListener", "showClose", "countDownCallBack", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZLcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "getCanCancel", "()Z", "getCloseClickListener", "()Landroid/view/View$OnClickListener;", "getCountDownCallBack", "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getLeftClickListener", "getLeftText", "getRightClickListener", "getRightText", "getSecond", "()I", "setSecond", "(I)V", "getShowClose", "getTitle", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", MenuOptions.COPY, "equals", "other", "hashCode", "toString", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final /* data */ class DialogParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
        private int second;

        /* JADX INFO: renamed from: b, reason: from toString */
        private final String title;

        /* JADX INFO: renamed from: c, reason: from toString */
        private String desc;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from toString */
        private final String leftText;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from toString */
        private final View.OnClickListener leftClickListener;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from toString */
        private final String rightText;

        /* JADX INFO: renamed from: g, reason: collision with root package name and from toString */
        private final View.OnClickListener rightClickListener;

        /* JADX INFO: renamed from: h, reason: collision with root package name and from toString */
        private final boolean canCancel;

        /* JADX INFO: renamed from: i, reason: from toString */
        private final View.OnClickListener closeClickListener;

        /* JADX INFO: renamed from: j, reason: from toString */
        private final boolean showClose;

        /* JADX INFO: renamed from: k, reason: from toString */
        private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> countDownCallBack;

        public DialogParams(int i, String str, String desc, String str2, View.OnClickListener onClickListener, String rightText, View.OnClickListener onClickListener2, boolean z, View.OnClickListener onClickListener3, boolean z2, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
            kotlin.jvm.internal.r.e(desc, "desc");
            kotlin.jvm.internal.r.e(rightText, "rightText");
            this.second = i;
            this.title = str;
            this.desc = desc;
            this.leftText = str2;
            this.leftClickListener = onClickListener;
            this.rightText = rightText;
            this.rightClickListener = onClickListener2;
            this.canCancel = z;
            this.closeClickListener = onClickListener3;
            this.showClose = z2;
            this.countDownCallBack = bVar;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getCanCancel() {
            return this.canCancel;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final View.OnClickListener getCloseClickListener() {
            return this.closeClickListener;
        }

        public final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> c() {
            return this.countDownCallBack;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getDesc() {
            return this.desc;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final View.OnClickListener getLeftClickListener() {
            return this.leftClickListener;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DialogParams)) {
                return false;
            }
            DialogParams dialogParams = (DialogParams) other;
            return this.second == dialogParams.second && kotlin.jvm.internal.r.a(this.title, dialogParams.title) && kotlin.jvm.internal.r.a(this.desc, dialogParams.desc) && kotlin.jvm.internal.r.a(this.leftText, dialogParams.leftText) && kotlin.jvm.internal.r.a(this.leftClickListener, dialogParams.leftClickListener) && kotlin.jvm.internal.r.a(this.rightText, dialogParams.rightText) && kotlin.jvm.internal.r.a(this.rightClickListener, dialogParams.rightClickListener) && this.canCancel == dialogParams.canCancel && kotlin.jvm.internal.r.a(this.closeClickListener, dialogParams.closeClickListener) && this.showClose == dialogParams.showClose && kotlin.jvm.internal.r.a(this.countDownCallBack, dialogParams.countDownCallBack);
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final String getLeftText() {
            return this.leftText;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final View.OnClickListener getRightClickListener() {
            return this.rightClickListener;
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final String getRightText() {
            return this.rightText;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [int] */
        /* JADX WARN: Type inference failed for: r1v17, types: [int] */
        /* JADX WARN: Type inference failed for: r1v24 */
        /* JADX WARN: Type inference failed for: r1v29 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v2 */
        public int hashCode() {
            int i = this.second * 31;
            String str = this.title;
            int iHashCode = (((i + (str == null ? 0 : str.hashCode())) * 31) + this.desc.hashCode()) * 31;
            String str2 = this.leftText;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            View.OnClickListener onClickListener = this.leftClickListener;
            int iHashCode3 = (((iHashCode2 + (onClickListener == null ? 0 : onClickListener.hashCode())) * 31) + this.rightText.hashCode()) * 31;
            View.OnClickListener onClickListener2 = this.rightClickListener;
            int iHashCode4 = (iHashCode3 + (onClickListener2 == null ? 0 : onClickListener2.hashCode())) * 31;
            boolean z = this.canCancel;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int i2 = (iHashCode4 + r1) * 31;
            View.OnClickListener onClickListener3 = this.closeClickListener;
            int iHashCode5 = (i2 + (onClickListener3 == null ? 0 : onClickListener3.hashCode())) * 31;
            boolean z2 = this.showClose;
            int i3 = (iHashCode5 + (z2 ? 1 : z2)) * 31;
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = this.countDownCallBack;
            return i3 + (bVar != null ? bVar.hashCode() : 0);
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final int getSecond() {
            return this.second;
        }

        /* JADX INFO: renamed from: j, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public final void k(int i) {
            this.second = i;
        }

        public String toString() {
            return "DialogParams(second=" + this.second + ", title=" + ((Object) this.title) + ", desc=" + this.desc + ", leftText=" + ((Object) this.leftText) + ", leftClickListener=" + this.leftClickListener + ", rightText=" + this.rightText + ", rightClickListener=" + this.rightClickListener + ", canCancel=" + this.canCancel + ", closeClickListener=" + this.closeClickListener + ", showClose=" + this.showClose + ", countDownCallBack=" + this.countDownCallBack + ')';
        }

        public /* synthetic */ DialogParams(int i, String str, String str2, String str3, View.OnClickListener onClickListener, String str4, View.OnClickListener onClickListener2, boolean z, View.OnClickListener onClickListener3, boolean z2, cn.mucang.android.jiakaoyi.framework.h.b bVar, int i2, kotlin.jvm.internal.o oVar) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : str, str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : onClickListener, str4, (i2 & 64) != 0 ? null : onClickListener2, (i2 & 128) != 0 ? true : z, (i2 & 256) != 0 ? null : onClickListener3, (i2 & 512) != 0 ? false : z2, (i2 & 1024) != 0 ? null : bVar);
        }
    }
}
