package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.PictureModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VideoModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public class f2 implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K2TeachCollectActivity f6613a;
    private TeachModel b;
    private final ViewPager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextView f6614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TextView f6615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TextView f6616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View f6617g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final MapView f6618h;
    private final View i;
    private final View j;
    private final EditText k;
    private final EditText l;
    private final TextView m;
    private final View n;
    private final CollectMapPreviewer p;
    private boolean q;
    private final cn.mucang.android.jiakaoyi.teachingk2.traceerror.g o = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.g();
    private boolean r = false;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            try {
                int i4 = Integer.parseInt(charSequence.toString());
                TraceVariable traceVariable = f2.this.b.getTraceVariable();
                if (traceVariable != null) {
                    traceVariable.range = i4;
                    f2.this.q = true;
                }
            } catch (Exception unused) {
                cn.mucang.android.core.utils.u.h("解析出错");
            }
        }
    }

    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            try {
                int i4 = Integer.parseInt(charSequence.toString());
                TraceVariable traceVariable = f2.this.b.getTraceVariable();
                if (traceVariable != null) {
                    traceVariable.time = i4;
                    f2.this.q = true;
                }
            } catch (Exception unused) {
                cn.mucang.android.core.utils.u.h("解析出错");
            }
        }
    }

    class c extends androidx.fragment.app.p {
        c(f2 f2Var, FragmentManager fragmentManager, int i) {
            super(fragmentManager, i);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 3;
        }

        @Override // androidx.fragment.app.p
        public Fragment getItem(int i) {
            if (i == 0) {
                return new VariableFragment();
            }
            return i == 1 ? new e2() : new ErrorFragment();
        }
    }

    class d implements ViewPager.OnPageChangeListener {
        d() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f2, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            f2.this.f6614d.setSelected(i == 0);
            f2.this.f6615e.setSelected(i == 1);
            f2.this.f6616f.setSelected(i == 2);
        }
    }

    public static class e {
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TeachModel f6622a;

        public f(TeachModel teachModel) {
            this.f6622a = teachModel;
        }
    }

    public f2(K2TeachCollectActivity k2TeachCollectActivity, CollectMapPreviewer collectMapPreviewer) {
        this.f6613a = k2TeachCollectActivity;
        this.p = collectMapPreviewer;
        this.f6617g = k2TeachCollectActivity.findViewById(R.id.itemContainer);
        this.c = (ViewPager) k2TeachCollectActivity.findViewById(R.id.variableContainer);
        this.f6614d = (TextView) k2TeachCollectActivity.findViewById(R.id.tab_variable);
        this.f6615e = (TextView) k2TeachCollectActivity.findViewById(R.id.tab_form);
        this.f6616f = (TextView) k2TeachCollectActivity.findViewById(R.id.tab_error);
        this.f6618h = (MapView) k2TeachCollectActivity.findViewById(R.id.map);
        this.i = k2TeachCollectActivity.findViewById(R.id.traceRoot);
        this.j = k2TeachCollectActivity.findViewById(R.id.collectRoot);
        this.k = (EditText) k2TeachCollectActivity.findViewById(R.id.rangeEt);
        this.l = (EditText) k2TeachCollectActivity.findViewById(R.id.timeEt);
        this.m = (TextView) k2TeachCollectActivity.findViewById(R.id.startTv);
        this.n = k2TeachCollectActivity.findViewById(R.id.previewFl);
        n();
        LiveBus.d(e.class).h(k2TeachCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.r1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6685a.H((f2.e) obj);
            }
        });
        LiveBus.d(TeachModel.class).h(k2TeachCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.h1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6651a.J((TeachModel) obj);
            }
        });
        k2TeachCollectActivity.findViewById(R.id.save).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.s1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6688a.L(view);
            }
        });
        k2TeachCollectActivity.findViewById(R.id.closeIv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6654a.N(view);
            }
        });
        m();
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(View view) {
        this.c.setCurrentItem(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(View view) {
        this.c.setCurrentItem(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F(View view) {
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void H(e eVar) {
        this.q = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void J(TeachModel teachModel) {
        TeachModel teachModel2 = this.b;
        if (teachModel2 != null) {
            teachModel2.boundary = teachModel.boundary;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void L(View view) {
        a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void N(View view) {
        this.n.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void P(TeachModel teachModel) {
        this.b = null;
        k();
        b0(teachModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void R() {
        this.b = null;
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void T(final TeachModel teachModel) throws Exception {
        if (!cn.mucang.android.core.utils.n0.e(teachModel.teachModelId)) {
            new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().v(teachModel);
            cn.mucang.android.core.utils.u.h("更新成功");
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.d1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6577a.R();
                }
            });
            LiveBus.d(b2.g.class).l(new b2.g(teachModel));
            return;
        }
        if (new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().n(teachModel)) {
            cn.mucang.android.core.utils.u.h("创建成功");
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.n1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6673a.P(teachModel);
                }
            });
            LiveBus.d(b2.e.class).l(new b2.e(teachModel));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void V(TeachModel teachModel, DialogInterface dialogInterface, int i) {
        TeachModel teachModelCopy = teachModel.copy();
        teachModelCopy.setVoice("听到提示音请停车");
        teachModelCopy.teachModelId = null;
        p(teachModelCopy);
    }

    private void W() {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarL = l();
        if (bVarL != null) {
            this.r = true;
            this.o.j();
            this.m.setText("结束采集");
            cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
            this.p.h(bVarL);
        }
    }

    private void X() {
        this.r = false;
        this.m.setText("开始采集");
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        List<TraceItemModel> listK = this.o.k(cn.mucang.android.jiakaoyi.signal.c.d.t(), this.p.b());
        TraceVariable traceVariable = this.b.getTraceVariable();
        if (traceVariable != null) {
            List<TraceItemModel> listI = this.p.i(listK);
            traceVariable.traces = listI;
            if (this.b != null && listI != null) {
                Iterator<TraceItemModel> it = listI.iterator();
                while (it.hasNext()) {
                    it.next().step = (short) this.b.step;
                }
            }
            traceVariable.left = this.o.f(this.p.b());
            traceVariable.right = this.o.i(this.p.b());
            this.q = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    /* JADX WARN: Code duplicated, block: B:18:0x0044  */
    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059  */
    /* JADX WARN: Code duplicated, block: B:25:0x0060  */
    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    /* JADX WARN: Code duplicated, block: B:28:0x006e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0070  */
    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:32:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0086 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private void Y(TeachModel teachModel) {
        LineTipModel lineTipModel;
        int i;
        for (int size = teachModel.data.size() - 1; size >= 0; size--) {
            FormModel formModel = teachModel.data.get(size);
            if (formModel instanceof VoiceModel) {
                VoiceModel voiceModel = (VoiceModel) formModel;
                if (cn.mucang.android.core.utils.n0.e(voiceModel.voice) && !voiceModel.sound) {
                    teachModel.data.remove(size);
                } else if (!(formModel instanceof PictureModel) && cn.mucang.android.core.utils.n0.e(((PictureModel) formModel).imageUrl)) {
                    teachModel.data.remove(size);
                } else if (!(formModel instanceof VideoModel) && cn.mucang.android.core.utils.n0.e(((VideoModel) formModel).videoUrl)) {
                    teachModel.data.remove(size);
                } else if (formModel instanceof LineTipModel) {
                    lineTipModel = (LineTipModel) formModel;
                    i = lineTipModel.lineType;
                    if (i == 2) {
                        if (cn.mucang.android.core.utils.n0.e(lineTipModel.objectName)) {
                            teachModel.data.remove(size);
                        }
                    } else if (i == 1) {
                        if (lineTipModel.center == null) {
                            teachModel.data.remove(size);
                        }
                    } else if (i != 3 && lineTipModel.pointIndex <= 0) {
                        teachModel.data.remove(size);
                    }
                }
            } else if (!(formModel instanceof PictureModel)) {
                if (!(formModel instanceof VideoModel)) {
                    if (formModel instanceof LineTipModel) {
                        lineTipModel = (LineTipModel) formModel;
                        i = lineTipModel.lineType;
                        if (i == 2) {
                            if (cn.mucang.android.core.utils.n0.e(lineTipModel.objectName)) {
                                teachModel.data.remove(size);
                            }
                        } else if (i == 1) {
                            if (lineTipModel.center == null) {
                                teachModel.data.remove(size);
                            }
                        } else if (i != 3) {
                        }
                    }
                } else if (formModel instanceof LineTipModel) {
                    lineTipModel = (LineTipModel) formModel;
                    i = lineTipModel.lineType;
                    if (i == 2) {
                        if (cn.mucang.android.core.utils.n0.e(lineTipModel.objectName)) {
                            teachModel.data.remove(size);
                        }
                    } else if (i == 1) {
                        if (lineTipModel.center == null) {
                            teachModel.data.remove(size);
                        }
                    } else if (i != 3) {
                    }
                }
            } else if (!(formModel instanceof VideoModel)) {
                if (formModel instanceof LineTipModel) {
                    lineTipModel = (LineTipModel) formModel;
                    i = lineTipModel.lineType;
                    if (i == 2) {
                        if (cn.mucang.android.core.utils.n0.e(lineTipModel.objectName)) {
                            teachModel.data.remove(size);
                        }
                    } else if (i == 1) {
                        if (lineTipModel.center == null) {
                            teachModel.data.remove(size);
                        }
                    } else if (i != 3) {
                    }
                }
            } else if (formModel instanceof LineTipModel) {
                lineTipModel = (LineTipModel) formModel;
                i = lineTipModel.lineType;
                if (i == 2) {
                    if (cn.mucang.android.core.utils.n0.e(lineTipModel.objectName)) {
                        teachModel.data.remove(size);
                    }
                } else if (i == 1) {
                    if (lineTipModel.center == null) {
                        teachModel.data.remove(size);
                    }
                } else if (i != 3) {
                }
            }
        }
    }

    private void Z(final TeachModel teachModel) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this.f6613a).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.l1
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6667a.T(teachModel);
            }
        }, "正在保存...", "保存失败");
    }

    private void a0() {
        boolean z;
        if (this.r) {
            cn.mucang.android.core.utils.u.h("请先停止采集");
            return;
        }
        TeachModel teachModel = this.b;
        if (teachModel == null) {
            k();
            return;
        }
        if (cn.mucang.android.core.utils.g.b(teachModel.variableList)) {
            cn.mucang.android.core.utils.u.h("没有选择任何变量条件");
            return;
        }
        boolean z2 = true;
        if (cn.mucang.android.core.utils.g.d(teachModel.errors)) {
            Iterator<ErrorModel> it = teachModel.errors.iterator();
            while (it.hasNext()) {
                FormModel formModel = it.next().errorForm;
                if ((formModel instanceof VoiceModel) && cn.mucang.android.core.utils.n0.e(((VoiceModel) formModel).voice)) {
                    cn.mucang.android.core.utils.u.h("请输入错误项提示语音");
                    return;
                }
            }
            z = true;
        } else {
            z = false;
        }
        if (z || !i(teachModel)) {
            Y(teachModel);
            Iterator<Variable> it2 = teachModel.variableList.iterator();
            do {
                if (!it2.hasNext()) {
                    z2 = false;
                    break;
                }
            } while (!it2.next().enable);
            if (z2) {
                Z(teachModel);
            } else {
                cn.mucang.android.core.utils.u.h("没有选择任何变量条件");
            }
        }
    }

    private void b0(final TeachModel teachModel) {
        if (teachModel.isStopTeach()) {
            new androidx.appcompat.app.c.a(this.f6613a).setMessage("此教学点需要停车，是否提前增加停车提示点？").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.o1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f6676a.V(teachModel, dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        }
    }

    private void h() {
        ComponentCallbacks2 context = MucangConfig.getContext();
        if (this.r) {
            if ((context instanceof TeachEventHandler) && ((TeachEventHandler) context).a(AutoTeachEvent.OpenAutoTeach)) {
                cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(false, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.e1
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        this.f6591a.x((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a) obj);
                    }
                });
                return;
            } else {
                X();
                return;
            }
        }
        if ((context instanceof TeachEventHandler) && ((TeachEventHandler) context).a(AutoTeachEvent.OpenAutoTeach)) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(true, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.p1
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f6679a.v((cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a) obj);
                }
            });
        } else {
            W();
        }
    }

    private boolean i(TeachModel teachModel) {
        if (cn.mucang.android.core.utils.g.b(teachModel.data)) {
            cn.mucang.android.core.utils.u.h("没有添加任何输出形式");
            return true;
        }
        for (FormModel formModel : teachModel.data) {
            if (formModel instanceof VoiceModel) {
                if (((VoiceModel) formModel).isValid()) {
                    return false;
                }
                cn.mucang.android.core.utils.u.h("请输入语音提示");
                return true;
            }
        }
        cn.mucang.android.core.utils.u.h("请输入语音提示");
        return true;
    }

    private cn.mucang.android.jiakaoyi.hpmap.a.a.b l() {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar;
        Step stepFindWithType = Step.findWithType(this.b.step);
        TeachModel teachModel = this.b;
        if (teachModel == null || (bVar = teachModel.boundary) == null || (stepFindWithType != Step.K2_CeFangTingChe ? stepFindWithType != Step.K2_DaoCheRuKu ? stepFindWithType != Step.K2_ZhiJiaoZhuanWan ? stepFindWithType != Step.K2_SQuXian ? stepFindWithType != Step.K2_ShangPoQiBu ? stepFindWithType != Step.K2_ShiHuaLuMian ? stepFindWithType != Step.K2_SuiDao ? stepFindWithType != Step.K2_JinJiQingKuang ? stepFindWithType != Step.K2_ETC ? stepFindWithType != Step.K2_QuKa ? stepFindWithType != Step.K2_QiDianQuYu || !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.h) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.i) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.e) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.g) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.l) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.f) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) : !(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b))) {
            bVar = null;
        }
        if (bVar == null) {
            cn.mucang.android.core.utils.u.h("请驶入" + stepFindWithType.zhStepName + "项目");
        }
        return bVar;
    }

    private void m() {
        this.f6614d.setSelected(true);
        this.f6615e.setSelected(false);
        this.f6616f.setSelected(false);
        this.c.setAdapter(new c(this, this.f6613a.getSupportFragmentManager(), 1));
        this.c.setOffscreenPageLimit(2);
        this.c.addOnPageChangeListener(new d());
        this.c.setCurrentItem(0);
        this.f6614d.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6682a.z(view);
            }
        });
        this.f6615e.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.j1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6661a.B(view);
            }
        });
        this.f6616f.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6646a.D(view);
            }
        });
    }

    private void n() {
        this.m.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.m1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6670a.F(view);
            }
        });
        this.k.addTextChangedListener(new a());
        this.l.addTextChangedListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(DialogInterface dialogInterface, int i) {
        a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(Function0 function0, DialogInterface dialogInterface, int i) {
        this.b = null;
        k();
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a aVar) {
        if (aVar.f5428a) {
            W();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a aVar) {
        if (aVar.f5428a) {
            X();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(View view) {
        this.c.setCurrentItem(0);
    }

    public void c0(TeachModel teachModel) {
        this.b = teachModel;
        LiveBus.d(f.class).l(new f(teachModel));
        this.f6617g.setVisibility(0);
        ((ViewGroup.MarginLayoutParams) this.f6618h.getLayoutParams()).leftMargin = (int) this.f6613a.getResources().getDimension(R.dimen.rpx_600);
        if (!teachModel.isTraceTeach()) {
            this.n.setVisibility(8);
            this.i.setVisibility(8);
            this.j.setVisibility(0);
            return;
        }
        this.n.setVisibility(0);
        this.i.setVisibility(0);
        this.j.setVisibility(8);
        TraceVariable traceVariable = teachModel.getTraceVariable();
        if (traceVariable != null) {
            this.k.setText(String.valueOf(traceVariable.range));
            this.l.setText(String.valueOf(traceVariable.time));
        }
        this.q = false;
    }

    public void d0(TeachModel teachModel) {
        TeachModel teachModel2 = this.b;
        if (teachModel2 == teachModel || (teachModel2 != null && teachModel2.teachModelId.equals(teachModel.teachModelId))) {
            this.b = null;
            k();
        }
    }

    public void f(TeachModel teachModel) {
        c0(teachModel);
    }

    void g(final Function0<?> function0) {
        if (this.r) {
            cn.mucang.android.core.utils.u.h("请先停止采集");
        } else {
            if (this.q) {
                new androidx.appcompat.app.c.a(this.f6613a).setMessage("当前有未保存内容，是否需要保存后退出？").setPositiveButton("保存并退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.f1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f6612a.r(dialogInterface, i);
                    }
                }).setNegativeButton("直接退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.k1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f6664a.t(function0, dialogInterface, i);
                    }
                }).create().show();
                return;
            }
            this.b = null;
            k();
            function0.invoke();
        }
    }

    public void j() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    public void k() {
        this.q = false;
        this.f6617g.setVisibility(8);
        this.n.setVisibility(8);
        ((ViewGroup.MarginLayoutParams) this.f6618h.getLayoutParams()).leftMargin = 0;
    }

    public boolean o() {
        return this.q;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        Pos posG = this.o.g(eVar, this.p.b());
        if (posG != null) {
            this.p.a(posG);
        }
    }

    public boolean p(TeachModel teachModel) {
        if (this.q) {
            cn.mucang.android.core.utils.u.h("当前数据没有保存，请先保存数据或取消");
            return false;
        }
        long jNanoTime = System.nanoTime();
        TeachModel teachModelCopy = teachModel.copy();
        Log.e("TAG", "复制时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
        c0(teachModelCopy);
        return true;
    }
}
