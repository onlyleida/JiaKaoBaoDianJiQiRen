package cn.mucang.android.jiakaoyi.teachingk2.setting;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.com.Cmd;
import cn.mucang.android.jiakaoyi.signal.communicate.MessageSender;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityAutoTeachDebugBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemAutoTeachDebugBinding;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.AutoPilotState;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.AutoTeachDebugger;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.test.BackCenterTestPage;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0019\u001aB\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\rH\u0014J\b\u0010\u0013\u001a\u00020\rH\u0002J\b\u0010\u0014\u001a\u00020\rH\u0002J\b\u0010\u0015\u001a\u00020\rH\u0002J\u0012\u0010\u0016\u001a\u00020\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;", "Landroid/view/View$OnClickListener;", "()V", "receiveAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "receiveList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;", "sendAdapter", "sendList", "addReceiveData", "", "any", "", "getStatName", "", "init", "initAutoTeach", "initListen", "initOrder", "onClick", "v", "Landroid/view/View;", "Companion", "ItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class AutoTeachDebugActivity extends BaseViewBindingActivity<ActivityAutoTeachDebugBinding> implements View.OnClickListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f7907f = new a(null);
    private final List<AutoTeachDebugger> b = new ArrayList();
    private final com.drakeet.multitype.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<AutoTeachDebugger> f7908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.drakeet.multitype.f f7909e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) AutoTeachDebugActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$ItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemAutoTeachDebugBinding;", "()V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ViewBindingBinder<AutoTeachDebugger, ItemAutoTeachDebugBinding> {
        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemAutoTeachDebugBinding> holder, AutoTeachDebugger item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemAutoTeachDebugBinding) holder.getViewBinding()).textTv.setText(item.getData());
        }
    }

    public AutoTeachDebugActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(AutoTeachDebugger.class, new b());
        kotlin.v vVar = kotlin.v.f15822a;
        this.c = fVar;
        this.f7908d = new ArrayList();
        com.drakeet.multitype.f fVar2 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar2.g(AutoTeachDebugger.class, new b());
        this.f7909e = fVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0124d it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    private final void D() {
        g().wheelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.J(this.f7924a, view);
            }
        });
        g().gearTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.M(this.f7981a, view);
            }
        });
        g().speedTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.E(this.f7969a, view);
            }
        });
        g().motorTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.H(this.f7923a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(AutoTeachDebugActivity this$0, View view) {
        int i;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            i = Integer.parseInt(this$0.g().speedEt.getText().toString());
        } catch (Exception unused) {
            i = 0;
        }
        if (i == 0) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.i(false, 0, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.p
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachDebugActivity.F((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e) obj);
                }
            });
        } else {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.i(true, i, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.x
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachDebugActivity.G((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e eVar) {
        if (eVar.f5428a) {
            cn.mucang.android.core.utils.u.h("不控制速度成功");
        } else {
            cn.mucang.android.core.utils.u.h("不控制速度失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e eVar) {
        if (eVar.f5428a) {
            cn.mucang.android.core.utils.u.h("控制速度成功");
        } else {
            cn.mucang.android.core.utils.u.h("控制速度失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(AutoTeachDebugActivity this$0, View view) {
        int i;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i2 = 0;
        try {
            i = Integer.parseInt(this$0.g().motorEt.getText().toString());
        } catch (Exception unused) {
            i = 0;
        }
        try {
            i2 = Integer.parseInt(this$0.g().directionEt.getText().toString());
        } catch (Exception unused2) {
        }
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.l((byte) i, (byte) i2, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.l
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachDebugActivity.I((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c cVar) {
        if (cVar.f5428a) {
            cn.mucang.android.core.utils.u.h("控制电机成功");
        } else {
            cn.mucang.android.core.utils.u.h("控制电机失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(AutoTeachDebugActivity this$0, View view) {
        int i;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            i = Integer.parseInt(this$0.g().wheelEt.getText().toString());
        } catch (Exception unused) {
            i = 0;
        }
        if (i == 0) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.k(false, (short) 0, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.e
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachDebugActivity.K((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g) obj);
                }
            });
        } else {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.k(true, (short) i, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.m
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachDebugActivity.L((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g gVar) {
        if (gVar.f5428a) {
            cn.mucang.android.core.utils.u.h("不控制方向盘成功");
        } else {
            cn.mucang.android.core.utils.u.h("不控制方向盘失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g gVar) {
        if (gVar.f5428a) {
            cn.mucang.android.core.utils.u.h("控制方向盘成功");
        } else {
            cn.mucang.android.core.utils.u.h("控制方向盘失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(AutoTeachDebugActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Gear gear = Gear.Invalid;
        try {
            Gear gear2 = Gear.parse(Integer.parseInt(this$0.g().gearEt.getText().toString()));
            kotlin.jvm.internal.r.d(gear2, "parse(viewBinding.gearEt.text.toString().toInt())");
            gear = gear2;
        } catch (Exception unused) {
        }
        if (gear != Gear.Invalid) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.g(gear, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.h
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachDebugActivity.N((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b bVar) {
        if (bVar.f5428a) {
            cn.mucang.android.core.utils.u.h("设置挡位成功");
        } else {
            cn.mucang.android.core.utils.u.h("设置挡位失败");
        }
    }

    private final void j(Object obj) {
        AutoTeachDebugger autoTeachDebugger = new AutoTeachDebugger(JSON.toJSONString(obj));
        if (this.f7908d.size() > 500) {
            List<AutoTeachDebugger> list = this.f7908d;
            list.remove(list.size() - 1);
        } else {
            this.f7908d.add(0, autoTeachDebugger);
        }
        this.f7909e.i(this.f7908d);
        this.f7909e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(AutoTeachDebugActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(AutoTeachDebugActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.startActivity(new Intent(this$0, (Class<?>) BackCenterTestPage.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(final AutoTeachDebugActivity this$0, final View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final boolean z = !view.isSelected();
        LocalConfigManager.c(this$0, LocalConfig.AutoTeach, String.valueOf(z), new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity$init$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                view.setSelected(z);
                this$0.g().pathTv.setText(LocalConfigManager.f(LocalConfig.AutoTeach) ? "下发路线" : "准备示教");
            }
        });
    }

    private final void n() {
        g().pathTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.o(this.f7977a, view);
            }
        });
        g().startTv.setOnClickListener(this);
        g().pauseTv.setOnClickListener(this);
        g().resumeTv.setOnClickListener(this);
        g().endTv.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(AutoTeachDebugActivity this$0, View view) {
        int i;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!LocalConfigManager.f(LocalConfig.AutoTeach)) {
            new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity$initAutoTeach$1$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                    vVar.c((byte) 5);
                    vVar.c((byte) 0);
                    byte[] bArrB = vVar.b();
                    cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AutoAssist, bArrB);
                    Tiger.h(new AutoTeachDebugger(cn.mucang.android.jiakaoyi.framework.utils.h0.a(bArrB)));
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity$initAutoTeach$1$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    cn.mucang.android.core.utils.u.h("超时");
                }
            }, null, 32, null).i();
            return;
        }
        try {
            i = Integer.parseInt(this$0.g().numberEt.getText().toString());
        } catch (Exception unused) {
            i = 0;
        }
        final ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < i) {
            i2++;
            TraceItemModel traceItemModel = new TraceItemModel();
            traceItemModel.gear = (byte) Gear.Gear1.gear;
            traceItemModel.heading = (short) 45;
            traceItemModel.wheel = (short) 0;
            double d2 = ((double) i2) * 30.0d;
            traceItemModel.x = d2;
            traceItemModel.y = d2 + ((double) 100);
            arrayList.add(traceItemModel);
        }
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.f6211a.execute(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.z
            @Override // java.lang.Runnable
            public final void run() {
                AutoTeachDebugActivity.p(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(List list) {
        kotlin.jvm.internal.r.e(list, "$list");
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.h(list, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.v
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachDebugActivity.q((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Boolean it) {
        kotlin.jvm.internal.r.d(it, "it");
        if (it.booleanValue()) {
            cn.mucang.android.core.utils.u.h("下发路线成功");
        } else {
            cn.mucang.android.core.utils.u.h("下发路线失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f fVar) {
        if (fVar.f5428a) {
            cn.mucang.android.core.utils.u.h("设置状态成功");
        } else {
            cn.mucang.android.core.utils.u.h("设置状态失败");
        }
    }

    private final void r() {
        Tiger.i(this, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.b0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachDebugActivity.s(this.f7941a, (AutoTeachDebugger) obj);
            }
        }, AutoTeachDebugger.class);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.t(this.f7952a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.u(this.f7940a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.n
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.v(this.f7967a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.w(this.f7942a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.q
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.x(this.f7973a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.y(this.f7944a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.c) obj);
            }
        });
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.b.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.t
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachDebugActivity.z(this.f7979a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.b) obj);
            }
        });
        Tiger.i(this, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.f
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachDebugActivity.A(this.f7950a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c) obj);
            }
        }, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.c.class);
        Tiger.i(this, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.r
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachDebugActivity.B(this.f7975a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b) obj);
            }
        }, cn.mucang.android.jiakaoyi.signal.communicate.receive.e.b.class);
        Tiger.i(this, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.i
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachDebugActivity.C(this.f7956a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0124d) obj);
            }
        }, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.C0124d.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(AutoTeachDebugActivity this$0, AutoTeachDebugger it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.b.size() > 500) {
            List<AutoTeachDebugger> list = this$0.b;
            list.remove(list.size() - 1);
        } else {
            List<AutoTeachDebugger> list2 = this$0.b;
            kotlin.jvm.internal.r.d(it, "it");
            list2.add(0, it);
        }
        this$0.c.i(this$0.b);
        this$0.c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.g it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.b it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.e it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.c it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.c it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(AutoTeachDebugActivity this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.b it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.j(it);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "自动示教指令调试页";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.k(this.f7961a, view);
            }
        });
        g().titleLayout.titleTv.setText("自动示教调试");
        g().titleLayout.titleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.l(this.f7985a, view);
            }
        });
        ImageView imageView = g().teachCb;
        LocalConfig localConfig = LocalConfig.AutoTeach;
        imageView.setSelected(LocalConfigManager.f(localConfig));
        g().teachCb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachDebugActivity.m(this.f7987a, view);
            }
        });
        g().middle.setLayoutManager(new LinearLayoutManager(this));
        g().middle.setAdapter(this.c);
        g().right.setLayoutManager(new LinearLayoutManager(this));
        g().right.setAdapter(this.f7909e);
        g().pathTv.setText(LocalConfigManager.f(localConfig) ? "下发路线" : "准备示教");
        D();
        n();
        r();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (LocalConfigManager.f(LocalConfig.AutoTeach)) {
            AutoPilotState autoPilotState = AutoPilotState.Start;
            if (!kotlin.jvm.internal.r.a(v, g().startTv)) {
                if (kotlin.jvm.internal.r.a(v, g().pauseTv)) {
                    autoPilotState = AutoPilotState.Pause;
                } else if (kotlin.jvm.internal.r.a(v, g().resumeTv)) {
                    autoPilotState = AutoPilotState.Resume;
                } else if (kotlin.jvm.internal.r.a(v, g().endTv)) {
                    autoPilotState = AutoPilotState.Stop;
                }
            }
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(autoPilotState, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.j
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    AutoTeachDebugActivity.q0((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.f) obj);
                }
            });
            return;
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 1;
        if (kotlin.jvm.internal.r.a(v, g().startTv)) {
            ref$IntRef.element = 1;
        } else if (kotlin.jvm.internal.r.a(v, g().endTv)) {
            ref$IntRef.element = 2;
        } else if (kotlin.jvm.internal.r.a(v, g().pauseTv)) {
            ref$IntRef.element = 3;
        } else if (kotlin.jvm.internal.r.a(v, g().resumeTv)) {
            ref$IntRef.element = 4;
        }
        new MessageSender(cn.mucang.android.jiakaoyi.signal.communicate.receive.c.class, 0, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity.onClick.2
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.jiakaoyi.signal.communicate.v vVar = new cn.mucang.android.jiakaoyi.signal.communicate.v(true);
                vVar.c((byte) 5);
                vVar.c((byte) ref$IntRef.element);
                byte[] bArrB = vVar.b();
                cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().Q(Cmd.AutoAssist, bArrB);
                Tiger.h(new AutoTeachDebugger(cn.mucang.android.jiakaoyi.framework.utils.h0.a(bArrB)));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }
        }, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity.onClick.3
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                invoke2();
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                cn.mucang.android.core.utils.u.h("超时");
            }
        }, null, 32, null).i();
    }
}
