package cn.mucang.android.jiakaoyi.teachingk2;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutPopCountdownBinding;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Arrays;
import java.util.IllegalFormatException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.k0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n*\u0001\u001c\u0018\u00002\u00020\u0001Bº\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012%\b\u0002\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012%\b\u0002\u0010\u000f\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007\u0012\n\b\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012%\b\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\b\u0010'\u001a\u00020\u000bH\u0016J\u0006\u0010(\u001a\u00020&JF\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u00052%\u0010-\u001a!\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0007H\u0002¢\u0006\u0002\u0010.J\u0006\u0010/\u001a\u00020\u000bJ\b\u00100\u001a\u00020\u000bH\u0002J'\u00101\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+2\b\u00102\u001a\u0004\u0018\u00010\u00052\u0006\u00103\u001a\u00020\u0005H\u0002¢\u0006\u0002\u00104R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010\u000f\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R.\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R+\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/CountdownPop;", "Landroid/widget/PopupWindow;", ErrorDialogParams.EXTRA_MESSAGE, "", "countdown", "", "onCountDown", "Lkotlin/Function1;", "Lkotlin/ParameterName;", Constant.PROTOCOL_WEBVIEW_NAME, "second", "", "isClickDismiss", "", "leftBtnTextResId", "leftBtnClick", "Landroid/view/View;", "view", "rightBtnTextResId", "rightBtnClick", "dismissListener", "Landroid/widget/PopupWindow$OnDismissListener;", "(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ZLjava/lang/Integer;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Landroid/widget/PopupWindow$OnDismissListener;)V", "getCountdown", "()I", "setCountdown", "(I)V", "countdownRunnable", "cn/mucang/android/jiakaoyi/teachingk2/CountdownPop$countdownRunnable$1", "Lcn/mucang/android/jiakaoyi/teachingk2/CountdownPop$countdownRunnable$1;", "getLeftBtnTextResId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMessage", "()Ljava/lang/String;", "getOnCountDown", "()Lkotlin/jvm/functions/Function1;", "popBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutPopCountdownBinding;", "dismiss", "getPopBinding", "initViewState", "tv", "Landroid/widget/TextView;", "btnTextResId", "onClick", "(Landroid/widget/TextView;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;)V", "show", "startCountDown", "updateCountdownBtn", "strResId", "remainSecond", "(Landroid/widget/TextView;Ljava/lang/Integer;I)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CountdownPop extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7226a;
    private int b;
    private final Function1<Integer, kotlin.v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f7227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f7228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1<View, kotlin.v> f7229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1<View, kotlin.v> f7230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final PopupWindow.OnDismissListener f7231h;
    private LayoutPopCountdownBinding i;
    private final a j;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.k0$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/CountdownPop$countdownRunnable$1", "Ljava/lang/Runnable;", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {
        final /* synthetic */ Integer b;

        a(Integer num) {
            this.b = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            CountdownPop countdownPop = CountdownPop.this;
            int b = countdownPop.getB();
            countdownPop.k(b - 1);
            if (b > 0) {
                CountdownPop countdownPop2 = CountdownPop.this;
                TextView textView = countdownPop2.i.tvLeft;
                r.d(textView, "popBinding.tvLeft");
                countdownPop2.n(textView, CountdownPop.this.getF7228e(), b);
                CountdownPop countdownPop3 = CountdownPop.this;
                TextView textView2 = countdownPop3.i.tvRight;
                r.d(textView2, "popBinding.tvRight");
                countdownPop3.n(textView2, this.b, b);
                cn.mucang.android.core.utils.u.d(this, 1000L);
            } else {
                CountdownPop.this.dismiss();
            }
            Function1<Integer, kotlin.v> function1F = CountdownPop.this.f();
            if (function1F == null) {
                return;
            }
            function1F.invoke(Integer.valueOf(b));
        }
    }

    public /* synthetic */ CountdownPop(String str, int i, Function1 function1, boolean z, Integer num, Function1 function2, Integer num2, Function1 function3, PopupWindow.OnDismissListener onDismissListener, int i2, kotlin.jvm.internal.o oVar) {
        this(str, (i2 & 2) != 0 ? -1 : i, (i2 & 4) != 0 ? null : function1, (i2 & 8) != 0 ? true : z, (i2 & 16) != 0 ? null : num, (i2 & 32) != 0 ? null : function2, (i2 & 64) != 0 ? null : num2, (i2 & 128) != 0 ? null : function3, (i2 & 256) == 0 ? onDismissListener : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(CountdownPop this$0) {
        r.e(this$0, "this$0");
        cn.mucang.android.core.utils.u.e(this$0.j);
        PopupWindow.OnDismissListener onDismissListener = this$0.f7231h;
        if (onDismissListener == null) {
            return;
        }
        onDismissListener.onDismiss();
    }

    private final void g(TextView textView, Integer num, final Function1<? super View, kotlin.v> function1) {
        if (num == null) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        n(textView, num, this.b);
        if (function1 != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CountdownPop.h(this.f6982a, function1, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(CountdownPop this$0, Function1 function1, View it) {
        r.e(this$0, "this$0");
        if (this$0.f7227d) {
            this$0.dismiss();
        }
        r.d(it, "it");
        function1.invoke(it);
    }

    private final void m() {
        cn.mucang.android.core.utils.u.e(this.j);
        if (this.b > 0) {
            cn.mucang.android.core.utils.u.d(this.j, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(TextView textView, Integer num, int i) {
        if (num != null) {
            String string = MucangConfig.i().getString(num.intValue());
            r.d(string, "getCurrentActivity().getString(strResId)");
            try {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                CharSequence charSequence = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
                r.d(charSequence, "java.lang.String.format(format, *args)");
                textView.setText(charSequence);
            } catch (IllegalFormatException e2) {
                e2.printStackTrace();
                textView.setText(string);
            }
        }
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getB() {
        return this.b;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        cn.mucang.android.core.utils.u.e(this.j);
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Integer getF7228e() {
        return this.f7228e;
    }

    public final Function1<Integer, kotlin.v> f() {
        return this.c;
    }

    public final void k(int i) {
        this.b = i;
    }

    public final void l() {
        showAtLocation(MucangConfig.i().findViewById(android.R.id.content), 49, 0, (int) (com.blankj.utilcode.util.g.a() * 0.13207547f));
        m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CountdownPop(String message, int i, Function1<? super Integer, kotlin.v> function1, boolean z, Integer num, Function1<? super View, kotlin.v> function2, Integer num2, Function1<? super View, kotlin.v> function3, PopupWindow.OnDismissListener onDismissListener) {
        r.e(message, "message");
        this.f7226a = message;
        this.b = i;
        this.c = function1;
        this.f7227d = z;
        this.f7228e = num;
        this.f7229f = function2;
        this.f7230g = function3;
        this.f7231h = onDismissListener;
        LayoutPopCountdownBinding layoutPopCountdownBindingInflate = LayoutPopCountdownBinding.inflate(LayoutInflater.from(MucangConfig.getContext()));
        r.d(layoutPopCountdownBindingInflate, "inflate(LayoutInflater.f…cangConfig.getContext()))");
        this.i = layoutPopCountdownBindingInflate;
        setContentView(layoutPopCountdownBindingInflate.getRoot());
        setWidth(-2);
        setHeight(-2);
        setFocusable(false);
        setOutsideTouchable(false);
        if (!TextUtils.isEmpty(message)) {
            this.i.tvMsg.setText(message);
        }
        TextView textView = this.i.tvLeft;
        r.d(textView, "popBinding.tvLeft");
        g(textView, num, function2);
        TextView textView2 = this.i.tvRight;
        r.d(textView2, "popBinding.tvRight");
        g(textView2, num2, function3);
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.e
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                CountdownPop.a(this.f7002a);
            }
        });
        this.j = new a(num2);
    }
}
