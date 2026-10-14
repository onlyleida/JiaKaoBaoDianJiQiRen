package cn.mucang.android.jiakaoyi.teachingk2.setting.ai;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.ai.AIFaceCoverModel;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.AiCommandAdapter;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityAiSignalBinding;
import cn.mucang.android.jiakaoyi.teachingk2.ai.AiManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001'B\u0005¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u00062\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J.\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u000e\b\u0001\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00062\u000e\b\u0001\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006H\u0002J\b\u0010\u001b\u001a\u00020\nH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0015J\b\u0010\u001e\u001a\u00020\u001dH\u0014J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\u001e\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006H\u0003R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "aiCheck", "", "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;", "aiVersionCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "coverCount", "", "coverTotal", "data", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalItem;", "Lkotlin/collections/ArrayList;", "time", "", "buildItems", "aiData", "Lcn/mucang/android/jiakaoyi/signal/ai/AIData;", "checkDiffIndexes", "oldList", "", "newList", "getStatName", "init", "", "onDestroy", "onReceiveAISignal", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "updateRcvWithDiffItems", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "it", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AISignalActivity extends BaseViewBindingActivity<ActivityAiSignalBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f7925h = new a(null);
    private final ArrayList<AISignalItem> b;
    private final List<CheckModuleStatus> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f7928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @SuppressLint({"SetTextI18n"})
    private final cn.mucang.android.jiakaoyi.framework.h.b<String> f7929g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) AISignalActivity.class));
        }
    }

    public AISignalActivity() {
        ArrayList<AISignalItem> arrayList = new ArrayList<>();
        arrayList.add(new AISignalItem("面部表情:", ""));
        arrayList.add(new AISignalItem("头部动作:", ""));
        arrayList.add(new AISignalItem("方向盘动作:", ""));
        arrayList.add(new AISignalItem("开门动作:", ""));
        arrayList.add(new AISignalItem("其他动作:", ""));
        v vVar = v.f15822a;
        this.b = arrayList;
        this.c = u.m(CheckModuleStatus.M_70001, CheckModuleStatus.M_70002, CheckModuleStatus.M_70003, CheckModuleStatus.M_70004, CheckModuleStatus.M_70005, CheckModuleStatus.M_70006);
        this.f7929g = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.e
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AISignalActivity.j(this.f7934a, (String) obj);
            }
        };
    }

    private final void D(cn.mucang.android.jiakaoyi.signal.ai.a aVar) {
        List<AISignalItem> listK = k(aVar);
        RecyclerView.Adapter adapter = g().dataRcv.getAdapter();
        Objects.requireNonNull(adapter, "null cannot be cast to non-null type com.drakeet.multitype.MultiTypeAdapter");
        E((com.drakeet.multitype.f) adapter, listK);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void E(com.drakeet.multitype.f fVar, List<? extends Object> list) {
        if (cn.mucang.android.core.utils.g.b(fVar.c()) || fVar.c().size() != list.size()) {
            fVar.i(list);
            fVar.notifyDataSetChanged();
            return;
        }
        List<Integer> listL = l(fVar.c(), list);
        int i = 0;
        int size = listL.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            int iIntValue = listL.get(i).intValue();
            Object obj = fVar.c().get(iIntValue);
            Object obj2 = list.get(iIntValue);
            if ((obj instanceof AISignalItem) && (obj2 instanceof AISignalItem)) {
                ((AISignalItem) obj).c(((AISignalItem) obj2).getValue());
            }
            fVar.notifyItemChanged(iIntValue);
            if (i2 > size) {
                return;
            } else {
                i = i2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AISignalActivity this$0, String str) {
        r.e(this$0, "this$0");
        this$0.g().tvVersion.setText(r.m(cn.mucang.android.jiakaoyi.signal.ai.h.a.a() ? "V1-" : "V2-", str));
    }

    private final List<AISignalItem> k(cn.mucang.android.jiakaoyi.signal.ai.a aVar) {
        ArrayList arrayList = new ArrayList(this.b);
        AISignalItem aISignalItem = (AISignalItem) arrayList.get(0);
        String strC = aVar.c();
        r.d(strC, "aiData.emotionDesc");
        aISignalItem.c(strC);
        AISignalItem aISignalItem2 = (AISignalItem) arrayList.get(1);
        String strD = aVar.d();
        r.d(strD, "aiData.headPoseDesc");
        aISignalItem2.c(strD);
        AISignalItem aISignalItem3 = (AISignalItem) arrayList.get(2);
        String strG = aVar.g();
        r.d(strG, "aiData.steerWheelAction");
        aISignalItem3.c(strG);
        AISignalItem aISignalItem4 = (AISignalItem) arrayList.get(3);
        String strF = aVar.f();
        r.d(strF, "aiData.openDoorAction");
        aISignalItem4.c(strF);
        AISignalItem aISignalItem5 = (AISignalItem) arrayList.get(4);
        String strB = aVar.b();
        r.d(strB, "aiData.actionDesc");
        aISignalItem5.c(strB);
        return arrayList;
    }

    private final List<Integer> l(List<? extends Object> list, List<? extends Object> list2) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (!r.a(list.get(i), list2.get(i))) {
                    arrayList.add(Integer.valueOf(i));
                }
                if (i2 >= size) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(AISignalActivity this$0, AIFaceCoverModel aIFaceCoverModel) {
        String str;
        r.e(this$0, "this$0");
        TextView textView = this$0.g().tvCoverType;
        if (true == aIFaceCoverModel.noCover()) {
            str = "正常";
        } else if (true == aIFaceCoverModel.isMask()) {
            str = "口罩";
        } else if (true == aIFaceCoverModel.isSunglasses()) {
            str = "墨镜";
        } else if (true == aIFaceCoverModel.isSideFace()) {
            str = "侧脸";
        } else {
            str = true == aIFaceCoverModel.isOtherCover() ? "帽子或手遮" : "无";
        }
        textView.setText(r.m("遮挡状态：", str));
        if (this$0.g().cbStatistic.isChecked()) {
            if ((this$0.g().cbMask.isChecked() && aIFaceCoverModel.isMask()) || ((this$0.g().cbSunglasses.isChecked() && aIFaceCoverModel.isSunglasses()) || (this$0.g().cbElse.isChecked() && aIFaceCoverModel.isOtherCover()))) {
                this$0.f7927e++;
            }
            int i = this$0.f7926d + 1;
            this$0.f7926d = i;
            float fB = ((this$0.f7927e * 1.0f) / kotlin.ranges.f.b(i, 1)) * 100;
            this$0.g().tvCoverCount.setText("总计：" + this$0.f7926d + "帧， 遮挡：" + this$0.f7927e + "帧， 占比：" + ((int) fB) + '%');
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(AISignalActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(View view) {
        AiCommandAdapter.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(AISignalActivity this$0, View view) {
        r.e(this$0, "this$0");
        AiCommandAdapter.i(this$0.f7929g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CompoundButton compoundButton, boolean z) {
        if (z) {
            new MessageSender(cn.mucang.android.jiakaoyi.signal.ai.b.class, 3, 1000L, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.AISignalActivity$init$4$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    m.h().Q(Cmd.AiEnableFaceCover, new byte[]{1});
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.AISignalActivity$init$4$2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("遮挡检测打开发送超时");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }
            }, new Function1<cn.mucang.android.jiakaoyi.signal.ai.b, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.AISignalActivity$init$4$3
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(cn.mucang.android.jiakaoyi.signal.ai.b it) {
                    r.e(it, "it");
                    if (it.f5428a) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("遮挡检测打开发送成功");
                    } else {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("遮挡检测打开发送失败");
                    }
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ v invoke(cn.mucang.android.jiakaoyi.signal.ai.b bVar) {
                    invoke2(bVar);
                    return v.f15822a;
                }
            }).i();
        } else {
            m.h().Q(Cmd.AiEnableFaceCover, new byte[]{0});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(AISignalActivity this$0, CompoundButton compoundButton, boolean z) {
        r.e(this$0, "this$0");
        if (z) {
            this$0.f7927e = 0;
            this$0.f7926d = 0;
            this$0.g().tvCoverCount.setText("总计：" + this$0.f7926d + "帧， 遮挡：" + this$0.f7927e + "帧， 准确率：-");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(AIOtaMsgResult aIOtaMsgResult) {
        cn.mucang.android.core.utils.u.h(aIOtaMsgResult.getMsgDesc());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(AISignalActivity this$0, cn.mucang.android.jiakaoyi.signal.ai.b bVar) {
        r.e(this$0, "this$0");
        this$0.g().tvCoverEnable.setText(r.m("是否开启遮挡检测: ", Boolean.valueOf(bVar.b)));
        if (bVar.b) {
            cn.mucang.android.core.utils.u.h("遮挡检测已打开");
        } else {
            cn.mucang.android.core.utils.u.h("遮挡检测已关闭");
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "AI调试";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"SetTextI18n"})
    protected void init() {
        super.init();
        AiManager.f7544a.a();
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AISignalActivity.n(this.f7932a, view);
            }
        });
        g().title.titleTv.setText("AI调试");
        g().dataRcv.setLayoutManager(new GridLayoutManager(this, 2));
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(AISignalItem.class, new AISignalBinder());
        g().dataRcv.setAdapter(fVar);
        g().dataRcv.setItemAnimator(null);
        RecyclerView.Adapter adapter = g().dataRcv.getAdapter();
        Objects.requireNonNull(adapter, "null cannot be cast to non-null type com.drakeet.multitype.MultiTypeAdapter");
        ((com.drakeet.multitype.f) adapter).i(this.b);
        g().btnOtaStart.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AISignalActivity.o(view);
            }
        });
        g().btnOtaVer.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AISignalActivity.p(this.f7933a, view);
            }
        });
        g().cbEnableCover.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.g
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AISignalActivity.q(compoundButton, z);
            }
        });
        g().cbStatistic.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.h
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AISignalActivity.r(this.f7937a, compoundButton, z);
            }
        });
        LiveBus.d(AIOtaMsgResult.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AISignalActivity.s((AIOtaMsgResult) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.b.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AISignalActivity.t(this.f7935a, (cn.mucang.android.jiakaoyi.signal.ai.b) obj);
            }
        });
        LiveBus.d(AIFaceCoverModel.class).h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.ai.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AISignalActivity.m(this.f7938a, (AIFaceCoverModel) obj);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        AiManager.f7544a.b();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        m.h().Q(Cmd.AiEnableFaceCover, new byte[]{0});
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        cn.mucang.android.jiakaoyi.signal.ai.a aVarA = signalGetter.a();
        r.d(aVarA, "signalGetter.aiData");
        D(aVarA);
        String str = "";
        for (CheckModuleStatus checkModuleStatus : this.c) {
            if (!checkModuleStatus.checkPass(checkModuleStatus.getCheckInt(signalGetter))) {
                str = str + checkModuleStatus.getTitle() + ", ";
            }
        }
        String strK0 = StringsKt__StringsKt.k0(str, ", ");
        if (n0.e(strK0)) {
            strK0 = "正常";
        }
        g().errorTv.setText(strK0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f7928f > 10000) {
            this.f7928f = jCurrentTimeMillis;
            g().communicationTv.setText(m.h().j(ComName.AiNet).desc);
        }
    }
}
