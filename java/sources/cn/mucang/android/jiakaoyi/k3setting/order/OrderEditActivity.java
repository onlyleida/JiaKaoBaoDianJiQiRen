package cn.mucang.android.jiakaoyi.k3setting.order;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightOrderStandard;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.LightOrderEditActivityBinding;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.jiakaoyi.uilib.deduct.dialog.SelectVoiceDialog;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;", "()V", "isAdd", "", "lightModel", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "getStatName", "", "init", "", "setPlayOrder", "updateLightExamModel", "it", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OrderEditActivity extends BaseViewBindingActivity<LightOrderEditActivityBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4386d = new a(null);
    private LightExamModel b;
    private boolean c;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$Companion;", "", "()V", "KEY_LIGHT_MODEL", "", "KEY_MAX_COUNT", "launch", "", "context", "Landroid/content/Context;", "model", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "maxCount", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ void b(a aVar, Context context, LightExamModel lightExamModel, int i, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                i = 20;
            }
            aVar.a(context, lightExamModel, i);
        }

        public final void a(Context context, LightExamModel lightExamModel, int i) {
            kotlin.jvm.internal.r.e(context, "context");
            Intent intent = new Intent(context, (Class<?>) OrderEditActivity.class);
            intent.putExtra("key.lightModel", lightExamModel);
            intent.putExtra("key.maxcount", i);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$6$1", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onSpeakEnd", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends SimpleTtsListener {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            cn.mucang.android.core.utils.t.a("dsh", "----------------------");
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$6$2", "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;", "onSpeakEnd", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends SimpleTtsListener {
        c() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            super.onSpeakEnd();
            cn.mucang.android.core.utils.t.a("dsh", "----------------------");
        }
    }

    private final void I(LightExamModel lightExamModel) {
        if (lightExamModel == null) {
            return;
        }
        int i = lightExamModel.playOrder;
        if (i == 0) {
            g().sortTv.setText("随机播放");
            return;
        }
        if (i >= 20) {
            g().sortTv.setText("最后一条");
            return;
        }
        TextView textView = g().sortTv;
        StringBuilder sb = new StringBuilder();
        sb.append((char) 31532);
        sb.append(lightExamModel.playOrder);
        sb.append((char) 26465);
        textView.setText(sb.toString());
    }

    private final void J(LightOrderStandard lightOrderStandard) {
        LightExamModel lightExamModel = this.b;
        if (lightExamModel != null) {
            lightExamModel.configId = lightOrderStandard.configId;
        }
        if (lightExamModel != null) {
            lightExamModel.tag = lightOrderStandard.tag;
        }
        if (lightExamModel != null) {
            lightExamModel.deductId = lightOrderStandard.deductId;
        }
        if (lightExamModel != null) {
            lightExamModel.standard = lightOrderStandard.standard;
        }
        if (lightExamModel != null) {
            lightExamModel.lights = lightOrderStandard.lights;
        }
        if (lightExamModel != null) {
            lightExamModel.notAllowed = lightOrderStandard.notAllowed;
        }
        if (lightExamModel == null) {
            return;
        }
        lightExamModel.icon = lightOrderStandard.icon;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightExamModel lightExamModel = this$0.b;
        if (lightExamModel == null) {
            return;
        }
        int i = lightExamModel.examProgramId;
        Activity activityA = ActivityUtils.a(this$0);
        Objects.requireNonNull(activityA, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        String strB = cn.mucang.android.jiakaoyi.framework.tts.voice.l.b(i);
        kotlin.jvm.internal.r.d(strB, "lightKey(it)");
        new SelectVoiceDialog(strB).show(((androidx.appcompat.app.d) activityA).getSupportFragmentManager(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.c) {
            if (this$0.b == null) {
                this$0.b = new LightExamModel();
            }
            LightExamModel lightExamModel = this$0.b;
            boolean z = false;
            if (lightExamModel != null && lightExamModel.configId == 0) {
                z = true;
            }
            if (z) {
                cn.mucang.android.core.utils.u.h("请选择评判标准");
                return;
            }
        }
        final String string = this$0.g().descTv.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("播报语音不能为空");
            return;
        }
        LightExamModel lightExamModel2 = this$0.b;
        if (lightExamModel2 != null) {
            lightExamModel2.desc = string;
        }
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.n1
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                OrderEditActivity.o(this.f4449a, string);
            }
        }, "", "保存失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(OrderEditActivity this$0, String text) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(text, "$text");
        LightApi lightApi = new LightApi();
        if (this$0.c) {
            LightExamModel lightExamModel = this$0.b;
            kotlin.jvm.internal.r.c(lightExamModel);
            if (lightApi.n(lightExamModel)) {
                ActionLog actionLog = ActionLog.f3431a;
                LightExamModel lightExamModel2 = this$0.b;
                actionLog.m(kotlin.jvm.internal.r.m("添加指令 ", lightExamModel2 != null ? lightExamModel2.getLog() : null));
            }
        } else {
            LightExamModel lightExamModel3 = this$0.b;
            if (lightExamModel3 != null && lightExamModel3.deductId == 102122) {
                lightExamModel3.lights = kotlin.collections.u.p(Light.Off);
            }
            LightExamModel lightExamModel4 = this$0.b;
            kotlin.jvm.internal.r.c(lightExamModel4);
            if (lightApi.t(lightExamModel4)) {
                ActionLog actionLog2 = ActionLog.f3431a;
                LightExamModel lightExamModel5 = this$0.b;
                actionLog2.m(kotlin.jvm.internal.r.m("编辑指令 ", lightExamModel5 != null ? lightExamModel5.getLog() : null));
            }
        }
        TtsManager.f3517a.E(text);
        cn.mucang.android.core.utils.u.h("保存成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent(this$0, (Class<?>) LightOrderStandardListActivity.class);
        LightExamModel lightExamModel = this$0.b;
        intent.putExtra("key.configId", lightExamModel == null ? null : Integer.valueOf(lightExamModel.configId));
        f.a.a.a.j.a.a(this$0).c(intent, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.j1
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                OrderEditActivity.q(this.f4437a, i, i2, intent2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(OrderEditActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            Serializable serializableExtra = intent.getSerializableExtra("key.chooseResult");
            LightOrderStandard lightOrderStandard = serializableExtra instanceof LightOrderStandard ? (LightOrderStandard) serializableExtra : null;
            if (lightOrderStandard == null) {
                return;
            }
            this$0.g().standardTv.setText(lightOrderStandard.standard);
            if (this$0.c && this$0.b == null) {
                this$0.b = new LightExamModel();
            }
            LightExamModel lightExamModel = this$0.b;
            boolean z = false;
            if (lightExamModel != null && lightExamModel.configId == lightOrderStandard.configId) {
                z = true;
            }
            if (z) {
                return;
            }
            this$0.J(lightOrderStandard);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final OrderEditActivity this$0, int i, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Intent intent = new Intent(this$0, (Class<?>) OrderPositionSelectActivity.class);
        intent.putExtra("count", i);
        LightExamModel lightExamModel = this$0.b;
        intent.putExtra("position", lightExamModel == null ? 0 : lightExamModel.playOrder);
        f.a.a.a.j.a.a(this$0).c(intent, 1001, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.l1
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i2, int i3, Intent intent2) {
                OrderEditActivity.t(this.f4443a, i2, i3, intent2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(OrderEditActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            int intExtra = intent.getIntExtra("key_choose_result", 0);
            if (this$0.c && this$0.b == null) {
                this$0.b = new LightExamModel();
            }
            LightExamModel lightExamModel = this$0.b;
            if (lightExamModel != null) {
                lightExamModel.playOrder = intExtra;
            }
            this$0.I(lightExamModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(final OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        OrderVoiceCodeSelectActivity.a aVar = OrderVoiceCodeSelectActivity.b;
        LightExamModel lightExamModel = this$0.b;
        aVar.b(this$0, lightExamModel == null ? null : Integer.valueOf(lightExamModel.voiceCode), new Function1<String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.OrderEditActivity$init$5$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(String str) {
                invoke2(str);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                if (this.this$0.c && this.this$0.b == null) {
                    this.this$0.b = new LightExamModel();
                }
                if (str == null || "无".equals(str)) {
                    LightExamModel lightExamModel2 = this.this$0.b;
                    if (lightExamModel2 != null) {
                        lightExamModel2.voiceCode = 0;
                    }
                    this.this$0.g().tvVoiceNumber.setText("请选择语音包文件码");
                    return;
                }
                LightExamModel lightExamModel3 = this.this$0.b;
                if (lightExamModel3 != null) {
                    lightExamModel3.voiceCode = kotlin.text.s.j(str).intValue();
                }
                this.this$0.g().tvVoiceNumber.setText(String.valueOf(str));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LightExamModel lightExamModel = this$0.b;
        Integer numValueOf = lightExamModel == null ? null : Integer.valueOf(lightExamModel.voiceCode);
        if (numValueOf == null || numValueOf.intValue() == 0) {
            TtsManager.u("这不是一个标准的语音扣分码", TtsGrade.GlobalTip, new b());
        } else {
            TtsManager.v("找不到此语音扣分码", TtsGrade.GlobalTip, new c(), numValueOf.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(OrderEditActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TtsManager.r(this$0.g().descTv.getText().toString(), TtsGrade.ExamTip);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "灯光指令";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        Serializable serializableExtra = getIntent().getSerializableExtra("key.lightModel");
        this.b = serializableExtra instanceof LightExamModel ? (LightExamModel) serializableExtra : null;
        final int intExtra = getIntent().getIntExtra("key.maxcount", -1);
        boolean z = this.b == null;
        this.c = z;
        if (z) {
            g().titleLayout.titleTv.setText("添加灯光指令");
            g().standardTv.setText("请选择评判标准");
            g().voice.setVisibility(8);
        } else {
            g().titleLayout.titleTv.setText("编辑灯光指令");
            TextView textView = g().standardTv;
            LightExamModel lightExamModel = this.b;
            textView.setText(lightExamModel == null ? null : lightExamModel.standard);
            g().voice.setVisibility(0);
            g().voice.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.h1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OrderEditActivity.m(this.f4431a, view);
                }
            });
        }
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.r(this.f4434a, view);
            }
        });
        LightExamModel lightExamModel2 = this.b;
        if (lightExamModel2 != null) {
            I(lightExamModel2);
            if (lightExamModel2.voiceCode == 0) {
                g().tvVoiceNumber.setText("请选择语音包文件码");
            } else {
                g().tvVoiceNumber.setText(String.valueOf(lightExamModel2.voiceCode));
            }
        }
        g().sortTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.s(this.f4422a, intExtra, view);
            }
        });
        g().tvVoiceNumber.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.f1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.u(this.f4425a, view);
            }
        });
        g().playCodeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.o1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.v(this.f4452a, view);
            }
        });
        EditText editText = g().descTv;
        LightExamModel lightExamModel3 = this.b;
        editText.setText(lightExamModel3 != null ? lightExamModel3.desc : null);
        g().playTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.w(this.f4440a, view);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.n(this.f4428a, view);
            }
        });
        g().standardTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.m1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OrderEditActivity.p(this.f4446a, view);
            }
        });
    }
}
