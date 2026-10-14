package cn.mucang.android.jiakaoyi.teachingk2.ui.test;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.e0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.n;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityDebugProtocolBinding;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0015¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;", "()V", "getStatName", "", "init", "", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugProtocolActivity extends BaseViewBindingActivity<ActivityDebugProtocolBinding> {
    public static final a b = new a(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) DebugProtocolActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(DebugProtocolActivity this$0, e0 e0Var) {
        r.e(this$0, "this$0");
        this$0.g().tvSignalInfo.setText("油量=" + e0Var.l0 + "L, 冷却液温度=" + e0Var.m0 + "度, 剩余续航里程=" + e0Var.n0 + "km, 总里程=" + e0Var.o0 + ExtraKey.km);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(View view) {
        m.h().Q(Cmd.OrderFaultCodeReq, new byte[]{0});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(DebugProtocolActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.o oVar) {
        r.e(this$0, "this$0");
        this$0.g().tvReqRet.setText(Arrays.toString(oVar.f5432a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(View view) {
        m.h().Q(Cmd.OrderFaultCodeClear, new byte[]{0});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(DebugProtocolActivity this$0, n nVar) {
        r.e(this$0, "this$0");
        this$0.g().tvClearRet.setText(nVar.f5429a ? "清除成功" : "清除失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(DebugProtocolActivity this$0, View view) {
        r.e(this$0, "this$0");
        final String string = this$0.g().etRainValue.getText().toString();
        if (TextUtils.isEmpty(string)) {
            u.h("请输入雨天模式的数值");
            return;
        }
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        final JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b("正在下发...");
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.DebugProtocolActivity$init$6$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                vVar.c((byte) 6);
                vVar.c(Byte.parseByte(string));
                m.h().Q(Cmd.AutoAssist, vVar.b());
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.DebugProtocolActivity$init$6$2
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                jLoadingDialog.dismiss();
                u.h("雨天模式下发超时");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }
        }, new Function1<cn.mucang.android.jiakaoyi.signal.communicate.receive.c, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.DebugProtocolActivity$init$6$3
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(cn.mucang.android.jiakaoyi.signal.communicate.receive.c it) {
                r.e(it, "it");
                jLoadingDialog.dismiss();
                if (it.f5428a) {
                    u.h("雨天模式下发成功");
                } else {
                    u.h("雨天模式下发失败");
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.communicate.receive.c cVar) {
                invoke2(cVar);
                return v.f15822a;
            }
        }).i();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "硬件协议调试";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        LiveBus.d(e0.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugProtocolActivity.j(this.f8354a, (e0) obj);
            }
        });
        g().btnReqFaultCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugProtocolActivity.k(view);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.o.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugProtocolActivity.l(this.f8356a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.o) obj);
            }
        });
        g().btnClearFaultCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugProtocolActivity.m(view);
            }
        });
        LiveBus.d(n.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DebugProtocolActivity.n(this.f8355a, (n) obj);
            }
        });
        g().btnRainDone.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.test.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DebugProtocolActivity.o(this.f8353a, view);
            }
        });
    }
}
