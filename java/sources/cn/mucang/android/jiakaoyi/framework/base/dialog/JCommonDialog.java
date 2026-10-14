package cn.mucang.android.jiakaoyi.framework.base.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.databinding.DialogCommonBinding;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.iflytek.cloud.SpeechConstant;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\b\u0010\u0015\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\bR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", SpeechConstant.PARAMS, "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;", "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;)V", "imageUrl", "", "getParams", "()Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;", "viewBinding", "Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;", "setViewBinding", "(Lcn/mucang/android/jiakaoyi/framework/databinding/DialogCommonBinding;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setData", "setImageUrl", "url", "Companion", "DialogParams", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class JCommonDialog extends Dialog {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f3401d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DialogParams f3402a;
    protected DialogCommonBinding b;
    private String c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.s$a */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$Companion;", "", "()V", "createDialog", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "title", "", "btnText", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/view/View$OnClickListener;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(View.OnClickListener listener, DialogInterface dialogInterface, int i) {
            kotlin.jvm.internal.r.e(listener, "$listener");
            listener.onClick(null);
        }

        public final Dialog a(Context context, String title, String btnText, final View.OnClickListener listener) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(title, "title");
            kotlin.jvm.internal.r.e(btnText, "btnText");
            kotlin.jvm.internal.r.e(listener, "listener");
            if (AppUtils.k()) {
                return new JCommonDialog(context, new DialogParams(title, "", null, null, btnText, listener, false));
            }
            AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setMessage(title).setCancelable(false).setPositiveButton(btnText, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.h
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    JCommonDialog.a.b(listener, dialogInterface, i);
                }
            }).create();
            kotlin.jvm.internal.r.d(alertDialogCreate, "{\n                AlertD…  .create()\n            }");
            return alertDialogCreate;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JCommonDialog(Context context, DialogParams params) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(params, "params");
        this.f3402a = params;
    }

    public static final Dialog a(Context context, String str, String str2, View.OnClickListener onClickListener) {
        return f3401d.a(context, str, str2, onClickListener);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x018f  */
    private final void k() {
        kotlin.v vVar;
        boolean z;
        TextView textView = c().titleTv;
        kotlin.jvm.internal.r.d(textView, "viewBinding.titleTv");
        textView.setVisibility(TextUtils.isEmpty(this.f3402a.getTitle()) ? 8 : 0);
        c().titleTv.setText(this.f3402a.getTitle());
        TextView textView2 = c().descTv;
        kotlin.jvm.internal.r.d(textView2, "viewBinding.descTv");
        textView2.setVisibility(!TextUtils.isEmpty(this.f3402a.getTitle()) && TextUtils.isEmpty(this.f3402a.getDesc()) ? 8 : 0);
        c().descTv.setText(this.f3402a.getDesc() + '(' + DeviceUtils.c() + ')');
        c().descTv.setMovementMethod(ScrollingMovementMethod.getInstance());
        kotlin.v vVar2 = null;
        if (this.f3402a.getRightText() == null) {
            vVar = null;
        } else {
            c().rightTv.setVisibility(0);
            c().rightTv.setText(getF3402a().getRightText());
            c().rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    JCommonDialog.l(this.f3391a, view);
                }
            });
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null) {
            c().rightTv.setVisibility(8);
        }
        if (this.f3402a.getLeftText() != null) {
            if (c().rightTv.getVisibility() == 8) {
                c().leftTv.setVisibility(8);
                c().rightTv.setVisibility(0);
                c().rightTv.setText(getF3402a().getLeftText());
                c().rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        JCommonDialog.n(this.f3389a, view);
                    }
                });
            } else {
                c().leftTv.setVisibility(0);
                c().leftTv.setText(getF3402a().getLeftText());
                c().leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        JCommonDialog.o(this.f3394a, view);
                    }
                });
            }
            vVar2 = kotlin.v.f15822a;
        }
        if (vVar2 == null) {
            c().leftTv.setVisibility(8);
        }
        LinearLayout linearLayout = c().btnLl;
        kotlin.jvm.internal.r.d(linearLayout, "viewBinding.btnLl");
        TextView textView3 = c().leftTv;
        kotlin.jvm.internal.r.d(textView3, "viewBinding.leftTv");
        if (textView3.getVisibility() == 0) {
            z = true;
        } else {
            TextView textView4 = c().rightTv;
            kotlin.jvm.internal.r.d(textView4, "viewBinding.rightTv");
            if (textView4.getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
        }
        linearLayout.setVisibility(z ? 0 : 8);
        c().leftTv.setSelected(this.f3402a.getK());
        c().rightTv.setSelected(!this.f3402a.getK());
        c().rightTv.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.j
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return JCommonDialog.p(view);
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.o
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                JCommonDialog.q(this.f3395a, dialogInterface);
            }
        });
        c().leftTv.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.l
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return JCommonDialog.r(view);
            }
        });
        if (this.f3402a.getShowClose()) {
            c().closeIv.setVisibility(0);
            c().closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.framework.base.dialog.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    JCommonDialog.m(this.f3393a, view);
                }
            });
        } else {
            c().closeIv.setVisibility(8);
        }
        if (n0.e(this.c)) {
            c().picture.setVisibility(8);
        } else {
            c().picture.setImageBitmap(cn.mucang.android.jiakaoyi.framework.i.a.b(this.c, (int) getContext().getResources().getDimension(R.dimen.dp_150)));
            c().picture.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(JCommonDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.getF3402a().getAutoDismiss()) {
            this$0.dismiss();
        }
        View.OnClickListener rightClickListener = this$0.getF3402a().getRightClickListener();
        if (rightClickListener == null) {
            return;
        }
        rightClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(JCommonDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        View.OnClickListener closeClickListener = this$0.getF3402a().getCloseClickListener();
        if (closeClickListener == null) {
            return;
        }
        closeClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(JCommonDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.getF3402a().getAutoDismiss()) {
            this$0.dismiss();
        }
        View.OnClickListener leftClickListener = this$0.getF3402a().getLeftClickListener();
        if (leftClickListener == null) {
            return;
        }
        leftClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(JCommonDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
        View.OnClickListener leftClickListener = this$0.getF3402a().getLeftClickListener();
        if (leftClickListener == null) {
            return;
        }
        leftClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(View view) {
        cn.mucang.android.jiakaoyi.framework.j.a.a();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(JCommonDialog this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        View.OnClickListener closeClickListener = this$0.getF3402a().getCloseClickListener();
        if (closeClickListener == null) {
            return;
        }
        closeClickListener.onClick(this$0.c().closeIv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r(View view) {
        cn.mucang.android.jiakaoyi.framework.j.a.a();
        return true;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final DialogParams getF3402a() {
        return this.f3402a;
    }

    protected final DialogCommonBinding c() {
        DialogCommonBinding dialogCommonBinding = this.b;
        if (dialogCommonBinding != null) {
            return dialogCommonBinding;
        }
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DialogCommonBinding dialogCommonBindingInflate = DialogCommonBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogCommonBindingInflate, "inflate(layoutInflater)");
        t(dialogCommonBindingInflate);
        setContentView(c().getRoot());
        setCancelable(this.f3402a.getCanCancel());
        setCanceledOnTouchOutside(this.f3402a.getCanCancel());
        DialogExtensionKt.c(this);
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        k();
    }

    public final void s(String str) {
        this.c = str;
    }

    protected final void t(DialogCommonBinding dialogCommonBinding) {
        kotlin.jvm.internal.r.e(dialogCommonBinding, "<set-?>");
        this.b = dialogCommonBinding;
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.s$b, reason: from toString */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b)\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BU\b\u0016\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fB_\b\u0016\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b¢\u0006\u0002\u0010\u000eBk\b\u0016\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b¢\u0006\u0002\u0010\u0011Bs\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000b¢\u0006\u0002\u0010\u0013J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u000bHÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010.\u001a\u00020\u000bHÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00100\u001a\u00020\u000bHÆ\u0003Jy\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u000bHÆ\u0001J\u0013\u00102\u001a\u00020\u000b2\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u000205HÖ\u0001J\t\u00106\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0012\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u001a\u0010!\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010$R\u0011\u0010\u0010\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0015R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001a¨\u00067"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog$DialogParams;", "", "title", "", SocialConstants.PARAM_APP_DESC, "leftText", "leftClickListener", "Landroid/view/View$OnClickListener;", "rightText", "rightClickListener", "canCancel", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V", "sl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZ)V", "closeClickListener", "showClose", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;Z)V", "autoDismiss", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZZ)V", "getAutoDismiss", "()Z", "getCanCancel", "getCloseClickListener", "()Landroid/view/View$OnClickListener;", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getLeftClickListener", "getLeftText", "getRightClickListener", "getRightText", "selectedLeft", "getSelectedLeft", "setSelectedLeft", "(Z)V", "getShowClose", "getTitle", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", MenuOptions.COPY, "equals", "other", "hashCode", "", "toString", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final /* data */ class DialogParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
        private final String title;

        /* JADX INFO: renamed from: b, reason: from toString */
        private String desc;

        /* JADX INFO: renamed from: c, reason: from toString */
        private final String leftText;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from toString */
        private final View.OnClickListener leftClickListener;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from toString */
        private final String rightText;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from toString */
        private final View.OnClickListener rightClickListener;

        /* JADX INFO: renamed from: g, reason: collision with root package name and from toString */
        private final boolean canCancel;

        /* JADX INFO: renamed from: h, reason: collision with root package name and from toString */
        private final View.OnClickListener closeClickListener;

        /* JADX INFO: renamed from: i, reason: from toString */
        private final boolean showClose;

        /* JADX INFO: renamed from: j, reason: from toString */
        private final boolean autoDismiss;
        private boolean k;

        public DialogParams(String str, String desc, String str2, View.OnClickListener onClickListener, String str3, View.OnClickListener onClickListener2, boolean z, View.OnClickListener onClickListener3, boolean z2, boolean z3) {
            kotlin.jvm.internal.r.e(desc, "desc");
            this.title = str;
            this.desc = desc;
            this.leftText = str2;
            this.leftClickListener = onClickListener;
            this.rightText = str3;
            this.rightClickListener = onClickListener2;
            this.canCancel = z;
            this.closeClickListener = onClickListener3;
            this.showClose = z2;
            this.autoDismiss = z3;
            this.k = true;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getAutoDismiss() {
            return this.autoDismiss;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final boolean getCanCancel() {
            return this.canCancel;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final View.OnClickListener getCloseClickListener() {
            return this.closeClickListener;
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
            return kotlin.jvm.internal.r.a(this.title, dialogParams.title) && kotlin.jvm.internal.r.a(this.desc, dialogParams.desc) && kotlin.jvm.internal.r.a(this.leftText, dialogParams.leftText) && kotlin.jvm.internal.r.a(this.leftClickListener, dialogParams.leftClickListener) && kotlin.jvm.internal.r.a(this.rightText, dialogParams.rightText) && kotlin.jvm.internal.r.a(this.rightClickListener, dialogParams.rightClickListener) && this.canCancel == dialogParams.canCancel && kotlin.jvm.internal.r.a(this.closeClickListener, dialogParams.closeClickListener) && this.showClose == dialogParams.showClose && this.autoDismiss == dialogParams.autoDismiss;
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
        /* JADX WARN: Type inference failed for: r0v18, types: [int] */
        /* JADX WARN: Type inference failed for: r0v20, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r2v15, types: [int] */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v22 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v2 */
        public int hashCode() {
            String str = this.title;
            int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.desc.hashCode()) * 31;
            String str2 = this.leftText;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            View.OnClickListener onClickListener = this.leftClickListener;
            int iHashCode3 = (iHashCode2 + (onClickListener == null ? 0 : onClickListener.hashCode())) * 31;
            String str3 = this.rightText;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            View.OnClickListener onClickListener2 = this.rightClickListener;
            int iHashCode5 = (iHashCode4 + (onClickListener2 == null ? 0 : onClickListener2.hashCode())) * 31;
            boolean z = this.canCancel;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            int i = (iHashCode5 + r2) * 31;
            View.OnClickListener onClickListener3 = this.closeClickListener;
            int iHashCode6 = (i + (onClickListener3 != null ? onClickListener3.hashCode() : 0)) * 31;
            boolean z2 = this.showClose;
            ?? r1 = z2;
            if (z2) {
                r1 = 1;
            }
            int i2 = (iHashCode6 + r1) * 31;
            boolean z3 = this.autoDismiss;
            return i2 + (z3 ? 1 : z3);
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final boolean getK() {
            return this.k;
        }

        /* JADX INFO: renamed from: j, reason: from getter */
        public final boolean getShowClose() {
            return this.showClose;
        }

        /* JADX INFO: renamed from: k, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public String toString() {
            return "DialogParams(title=" + ((Object) this.title) + ", desc=" + this.desc + ", leftText=" + ((Object) this.leftText) + ", leftClickListener=" + this.leftClickListener + ", rightText=" + ((Object) this.rightText) + ", rightClickListener=" + this.rightClickListener + ", canCancel=" + this.canCancel + ", closeClickListener=" + this.closeClickListener + ", showClose=" + this.showClose + ", autoDismiss=" + this.autoDismiss + ')';
        }

        public /* synthetic */ DialogParams(String str, String str2, String str3, View.OnClickListener onClickListener, String str4, View.OnClickListener onClickListener2, boolean z, View.OnClickListener onClickListener3, boolean z2, boolean z3, int i, kotlin.jvm.internal.o oVar) {
            this((i & 1) != 0 ? null : str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : onClickListener, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : onClickListener2, (i & 64) != 0 ? true : z, (i & 128) != 0 ? null : onClickListener3, (i & 256) != 0 ? false : z2, (i & 512) != 0 ? true : z3);
        }

        public /* synthetic */ DialogParams(String str, String str2, String str3, View.OnClickListener onClickListener, String str4, View.OnClickListener onClickListener2, boolean z, int i, kotlin.jvm.internal.o oVar) {
            this((i & 1) != 0 ? null : str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : onClickListener, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : onClickListener2, (i & 64) != 0 ? true : z);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public DialogParams(String str, String desc, String str2, View.OnClickListener onClickListener, String str3, View.OnClickListener onClickListener2, boolean z) {
            this(str, desc, str2, onClickListener, str3, onClickListener2, z, (View.OnClickListener) null, false);
            kotlin.jvm.internal.r.e(desc, "desc");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public DialogParams(String str, String desc, String str2, View.OnClickListener onClickListener, String str3, View.OnClickListener onClickListener2, boolean z, boolean z2) {
            this(str, desc, str2, onClickListener, str3, onClickListener2, z, (View.OnClickListener) null, false);
            kotlin.jvm.internal.r.e(desc, "desc");
            this.k = z2;
        }

        public /* synthetic */ DialogParams(String str, String str2, String str3, View.OnClickListener onClickListener, String str4, View.OnClickListener onClickListener2, boolean z, View.OnClickListener onClickListener3, boolean z2, int i, kotlin.jvm.internal.o oVar) {
            this((i & 1) != 0 ? null : str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : onClickListener, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : onClickListener2, (i & 64) != 0 ? true : z, (i & 128) != 0 ? null : onClickListener3, (i & 256) != 0 ? false : z2);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public DialogParams(String str, String desc, String str2, View.OnClickListener onClickListener, String str3, View.OnClickListener onClickListener2, boolean z, View.OnClickListener onClickListener3, boolean z2) {
            this(str, desc, str2, onClickListener, str3, onClickListener2, z, onClickListener3, z2, true);
            kotlin.jvm.internal.r.e(desc, "desc");
        }
    }
}
