package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.BusLiveData;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.d;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachbase.databinding.AutoTeachDebugViewBinding;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.AutoPilotState;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.f;
import cn.mucang.android.jiakaoyi.teachingk2.autopilot.utm.SpecialPointData;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AutoTeachController;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.UnityDrawSender;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLineModel;
import cn.mucang.android.jiakaoyi.teachingk2.setting.AutoTeachDebugActivity;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.a;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.z;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import com.amap.api.fence.GeoFence;
import com.sixents.sdk.BuildConfig;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.s;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.u0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0003J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u001bH\u0016J\b\u0010\u001e\u001a\u00020\u001bH\u0016J\b\u0010\u001f\u001a\u00020\u001bH\u0016J\u001a\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u00152\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\b\u0010$\u001a\u00020\u001bH\u0002R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/AutoTeachPage;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;", "()V", "controller", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;", "debugViewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;", "errorCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseError;", "specialObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/utm/SpecialPointData;", "statusCallback", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseState;", "traceModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;", "traceObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/CarTraceSideData;", "unityLineGroup", "", "handleEvent", "", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;", "initDebug", "", "initDebugView", "onEnter", "onExit", "showLastTeach", "unitySetStatus", "state", "data", "", "unregister", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"SetTextI18n"})
public final class AutoTeachPage implements a0.a, BaseTeachFunc {
    public static final a i = new a(null);
    private static boolean j;
    private AutoTeachDebugViewBinding b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final UnityLineModel f8659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b<e.c> f8660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b<e.b> f8661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.teachingk2.traceerror.a> f8662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.a0<SpecialPointData> f8663h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AutoTeachController f8658a = new AutoTeachController();
    private final int c = 7;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.u0$a */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/AutoTeachPage$Companion;", "", "()V", BuildConfig.BUILD_TYPE, "", "getDebug$annotations", "getDebug", "()Z", "setDebug", "(Z)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final boolean a() {
            return AutoTeachPage.j;
        }

        public final void b(boolean z) {
            AutoTeachPage.j = z;
        }
    }

    public AutoTeachPage() {
        UnityLineModel unityLineModel = new UnityLineModel();
        unityLineModel.group = 7;
        unityLineModel.width = 15;
        unityLineModel.alpha = 1.0f;
        unityLineModel.height = 3;
        unityLineModel.open = true;
        unityLineModel.color = "#00FF00";
        unityLineModel.showName = "标准轨迹";
        v vVar = v.f15822a;
        this.f8659d = unityLineModel;
        this.f8660e = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.m
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachPage.S(this.f8641a, (e.c) obj);
            }
        };
        this.f8661f = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.f
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachPage.e(this.f8601a, (e.b) obj);
            }
        };
        this.f8662g = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachPage.T(this.f8607a, (a) obj);
            }
        };
        this.f8663h = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                AutoTeachPage.R(this.f8589a, (SpecialPointData) obj);
            }
        };
    }

    public static final void Q(boolean z) {
        i.b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(AutoTeachPage this$0, SpecialPointData specialPointData) {
        r.e(this$0, "this$0");
        if (specialPointData == null) {
            return;
        }
        for (Pos pos : specialPointData.a()) {
            double d2 = 5;
            UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 0, this$0.c, u.p(new Pos(pos.x - d2, pos.y - d2), new Pos(pos.x + d2, pos.y + d2)), "#FF0000", 1.0f, 15, 10, false, null, null, false, 3843, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(AutoTeachPage this$0, e.c cVar) {
        String string;
        r.e(this$0, "this$0");
        if (cVar.b.unknownCode > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            sb.append(cVar.b.unknownCode);
            sb.append(')');
            string = sb.toString();
        } else {
            string = "";
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this$0.b;
        r.c(autoTeachDebugViewBinding);
        autoTeachDebugViewBinding.stateTv.setText("状态：" + ((Object) cVar.b.desc) + string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(AutoTeachPage this$0, cn.mucang.android.jiakaoyi.teachingk2.traceerror.a aVar) {
        r.e(this$0, "this$0");
        if (aVar == null || !aVar.b) {
            return;
        }
        UnityLineModel unityLineModel = this$0.f8659d;
        unityLineModel.positions = aVar.f5937a;
        UnityDrawLineHelper.a.f(UnityDrawLineHelper.f6360a, unityLineModel, false, 0, 6, null);
    }

    private final void U() {
        Tiger.l(this.f8660e, e.c.class);
        Tiger.l(this.f8661f, e.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(AutoTeachPage this$0, e.b bVar) {
        String string;
        r.e(this$0, "this$0");
        if (bVar.b.unknownCode > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            sb.append(bVar.b.unknownCode);
            sb.append(')');
            string = sb.toString();
        } else {
            string = "";
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this$0.b;
        r.c(autoTeachDebugViewBinding);
        autoTeachDebugViewBinding.errorTv.setText("异常：" + ((Object) bVar.b.desc) + string);
    }

    public static final boolean f() {
        return i.a();
    }

    @SuppressLint({"SetTextI18n"})
    private final void h() {
        TextView textView;
        EditText editText;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        TextView textView6;
        TextView textView7;
        TextView textView8;
        TextView textView9;
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this.b;
        if (autoTeachDebugViewBinding != null && (textView9 = autoTeachDebugViewBinding.debugTv) != null) {
            textView9.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.u(view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding2 = this.b;
        if (autoTeachDebugViewBinding2 != null && (textView8 = autoTeachDebugViewBinding2.pointTv) != null) {
            textView8.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.v(this.f8570a, view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding3 = this.b;
        if (autoTeachDebugViewBinding3 != null && (textView7 = autoTeachDebugViewBinding3.startTv) != null) {
            textView7.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.w(this.f8605a, view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding4 = this.b;
        if (autoTeachDebugViewBinding4 != null && (textView6 = autoTeachDebugViewBinding4.pauseTv) != null) {
            textView6.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.j(view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding5 = this.b;
        if (autoTeachDebugViewBinding5 != null && (textView5 = autoTeachDebugViewBinding5.resumeTv) != null) {
            textView5.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.l(view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding6 = this.b;
        if (autoTeachDebugViewBinding6 != null && (textView4 = autoTeachDebugViewBinding6.endTv) != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.p(view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding7 = this.b;
        if (autoTeachDebugViewBinding7 != null && (textView3 = autoTeachDebugViewBinding7.startEngineTv) != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.r(this.f8645a, view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding8 = this.b;
        if (autoTeachDebugViewBinding8 != null && (textView2 = autoTeachDebugViewBinding8.stopEngineTv) != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AutoTeachPage.s(this.f8639a, view);
                }
            });
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding9 = this.b;
        if (autoTeachDebugViewBinding9 != null && (editText = autoTeachDebugViewBinding9.delayEt) != null) {
            editText.setText(String.valueOf(i0.f("keyDebugDelay", 500L)));
        }
        AutoTeachDebugViewBinding autoTeachDebugViewBinding10 = this.b;
        if (autoTeachDebugViewBinding10 == null || (textView = autoTeachDebugViewBinding10.saveTv) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AutoTeachPage.t(this.f8649a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(View view) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Pause, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachPage.k((d.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(d.f fVar) {
        if (fVar.f5428a) {
            cn.mucang.android.core.utils.u.h("暂停成功");
        } else {
            cn.mucang.android.core.utils.u.h("暂停失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(View view) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Resume, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.e
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachPage.m((d.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(d.f fVar) {
        if (fVar.f5428a) {
            cn.mucang.android.core.utils.u.h("恢复成功");
        } else {
            cn.mucang.android.core.utils.u.h("恢复失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(View view) {
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Stop, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.p
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachPage.q((d.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(d.f fVar) {
        if (fVar.f5428a) {
            cn.mucang.android.core.utils.u.h("结束成功");
        } else {
            cn.mucang.android.core.utils.u.h("结束失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(AutoTeachPage this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f8658a.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(AutoTeachPage this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f8658a.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(AutoTeachPage this$0, View view) {
        EditText editText;
        Editable text;
        String string;
        Long l;
        r.e(this$0, "this$0");
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this$0.b;
        long jLongValue = 500;
        if (autoTeachDebugViewBinding != null && (editText = autoTeachDebugViewBinding.delayEt) != null && (text = editText.getText()) != null && (string = text.toString()) != null && (l = s.l(string)) != null) {
            jLongValue = l.longValue();
        }
        i0.l("keyDebugDelay", jLongValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(View view) {
        AutoTeachDebugActivity.a aVar = AutoTeachDebugActivity.f7907f;
        Context context = view.getContext();
        r.d(context, "it.context");
        aVar.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(AutoTeachPage this$0, View view) {
        r.e(this$0, "this$0");
        this$0.f8658a.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(AutoTeachPage this$0, View view) {
        r.e(this$0, "this$0");
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this$0.b;
        r.c(autoTeachDebugViewBinding);
        autoTeachDebugViewBinding.stateTv.setText("状态：无");
        AutoTeachDebugViewBinding autoTeachDebugViewBinding2 = this$0.b;
        r.c(autoTeachDebugViewBinding2);
        autoTeachDebugViewBinding2.errorTv.setText("异常：无");
        cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.j(AutoPilotState.Start, new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.g
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                AutoTeachPage.x((d.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(d.f fVar) {
        if (fVar.f5428a) {
            cn.mucang.android.core.utils.u.h("开始成功");
        } else {
            cn.mucang.android.core.utils.u.h("开始失败");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y() {
        Activity activityI = MucangConfig.i();
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this.b;
        if (autoTeachDebugViewBinding == null) {
            ViewGroup viewGroup = (ViewGroup) activityI.findViewById(R.id.content);
            this.b = AutoTeachDebugViewBinding.inflate(LayoutInflater.from(MucangConfig.i()), viewGroup, false);
            h();
            AutoTeachDebugViewBinding autoTeachDebugViewBinding2 = this.b;
            r.c(autoTeachDebugViewBinding2);
            viewGroup.addView(autoTeachDebugViewBinding2.getRoot());
        } else {
            ConstraintLayout root = autoTeachDebugViewBinding == null ? null : autoTeachDebugViewBinding.getRoot();
            if (root != null) {
                root.setVisibility(0);
            }
        }
        Objects.requireNonNull(activityI, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        androidx.lifecycle.r rVar = (androidx.lifecycle.r) activityI;
        Tiger.i(rVar, this.f8660e, e.c.class);
        Tiger.i(rVar, this.f8661f, e.b.class);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
    public boolean a(AutoTeachEvent event) {
        r.e(event, "event");
        return this.f8658a.c(event);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
    public void c() {
        this.f8658a.e();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void g() {
        AssistTeachManager.f6339a.j(1);
        f.f6212a = true;
        this.f8658a.f();
        RobotTips.f7184a.g0();
        w.r.setTraceType(6);
        UnityDrawSender.a();
        if (j) {
            y();
        } else {
            AutoTeachDebugViewBinding autoTeachDebugViewBinding = this.b;
            ConstraintLayout root = autoTeachDebugViewBinding == null ? null : autoTeachDebugViewBinding.getRoot();
            if (root != null) {
                root.setVisibility(8);
            }
            U();
        }
        ComponentCallbacks2 componentCallbacks2I = MucangConfig.i();
        BusLiveData busLiveDataD = LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class);
        Objects.requireNonNull(componentCallbacks2I, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        androidx.lifecycle.r rVar = (androidx.lifecycle.r) componentCallbacks2I;
        busLiveDataD.h(rVar, this.f8662g);
        LiveBus.d(SpecialPointData.class).h(rVar, this.f8663h);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.BaseTeachFunc
    public void i(int i2, String str) {
        this.f8658a.j(i2, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public /* synthetic */ void n() {
        z.a(this);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.b1.e.a0.a
    public void o() {
        AssistTeachManager.f6339a.j(0);
        TtsManager.F();
        UnityDrawLineHelper.f6360a.a(this.c);
        f.f6212a = false;
        this.f8658a.b();
        RobotTips.f7184a.Z();
        AutoTeachDebugViewBinding autoTeachDebugViewBinding = this.b;
        ConstraintLayout root = autoTeachDebugViewBinding == null ? null : autoTeachDebugViewBinding.getRoot();
        if (root != null) {
            root.setVisibility(8);
        }
        cn.mucang.android.jiakaoyi.teachingk2.r0.b.b();
        U();
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class).m(this.f8662g);
        LiveBus.d(SpecialPointData.class).m(this.f8663h);
    }
}
