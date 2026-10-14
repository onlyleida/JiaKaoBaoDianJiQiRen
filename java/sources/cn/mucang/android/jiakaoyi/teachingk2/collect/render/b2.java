package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.MonitorActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.OrderModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public class b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView f6551a;
    private final K2TeachCollectActivity b;
    private final CollectMapPreviewer c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f6554f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TeachModel f6555g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private f2 f6556h;
    public final String i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.f f6552d = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.f();
    private final cn.mucang.android.jiakaoyi.framework.h.b<TeachModel> j = new a();
    private final cn.mucang.android.jiakaoyi.framework.h.b<Object> k = new b();
    private final androidx.recyclerview.widget.g l = new androidx.recyclerview.widget.g(new c());
    private TeachModel m = null;

    class a implements cn.mucang.android.jiakaoyi.framework.h.b<TeachModel> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void c(TeachModel teachModel, DialogInterface dialogInterface, int i) {
            b2.this.p(teachModel);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(final TeachModel teachModel) {
            new androidx.appcompat.app.c.a(b2.this.b).setMessage("教学点删除后不可恢复，确定要删除吗?").setPositiveButton(SundialNumKeyBoardView.KEY_DELETE, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f6610a.c(teachModel, dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        }
    }

    class b implements cn.mucang.android.jiakaoyi.framework.h.b<Object> {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        @SuppressLint({"NotifyDataSetChanged"})
        public void callback(Object obj) {
            if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b) {
                cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar = (cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b) obj;
                bVar.f6582e = !bVar.f6582e;
                b2.this.f6554f.f(b2.this.f6552d.f());
            } else if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c) {
                cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c cVar = (cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c) obj;
                cVar.f6584d = !cVar.f6584d;
                b2.this.f6554f.f(b2.this.f6552d.f());
            } else if (obj instanceof TeachModel) {
                TeachModel teachModel = (TeachModel) obj;
                if (b2.this.f6556h.p(teachModel)) {
                    b2.this.m = teachModel;
                    b2.this.f6554f.notifyDataSetChanged();
                }
            }
        }
    }

    class c extends androidx.recyclerview.widget.g.f {
        c() {
        }

        @Override // androidx.recyclerview.widget.g.f
        public void B(RecyclerView.c0 c0Var, int i) {
        }

        @Override // androidx.recyclerview.widget.g.f
        public int k(RecyclerView recyclerView, RecyclerView.c0 c0Var) {
            if (c0Var instanceof h) {
                return androidx.recyclerview.widget.g.f.t(3, 0);
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.g.f
        public boolean y(RecyclerView recyclerView, RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2) {
            int adapterPosition = c0Var.getAdapterPosition();
            int adapterPosition2 = c0Var2.getAdapterPosition();
            int i = adapterPosition + 1;
            while (i < b2.this.f6554f.c.size()) {
                Object obj = b2.this.f6554f.c.get(i);
                if (!(obj instanceof TeachModel) || ((TeachModel) obj).isTraceTeach()) {
                    break;
                }
                i++;
            }
            int i2 = i - 1;
            int i3 = adapterPosition - 1;
            while (i3 > -1) {
                Object obj2 = b2.this.f6554f.c.get(i3);
                if (!(obj2 instanceof TeachModel) || ((TeachModel) obj2).isTraceTeach()) {
                    break;
                }
                i3--;
            }
            if (adapterPosition2 >= i3 + 1 && adapterPosition2 <= i2) {
                b2.this.f6554f.notifyItemMoved(adapterPosition, adapterPosition2);
                Collections.swap(b2.this.f6554f.c, adapterPosition, adapterPosition2);
                if (c0Var instanceof h) {
                    Object tag = ((h) c0Var).b.getTag();
                    if (tag instanceof TeachModel) {
                        ((TeachModel) tag).position = adapterPosition2;
                    }
                }
                if (c0Var2 instanceof h) {
                    Object tag2 = ((h) c0Var2).b.getTag();
                    if (tag2 instanceof TeachModel) {
                        ((TeachModel) tag2).position = adapterPosition;
                    }
                }
                b2.this.f6553e = true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class d extends RecyclerView.Adapter<RecyclerView.c0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View.OnClickListener f6560a;
        private final View.OnClickListener b;
        private final List<Object> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final cn.mucang.android.jiakaoyi.framework.h.b<TeachModel> f6561d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final cn.mucang.android.jiakaoyi.framework.h.b<Object> f6562e;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.f6561d.callback((TeachModel) view.getTag());
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.f6562e.callback(view.getTag());
            }
        }

        /* synthetic */ d(b2 b2Var, List list, cn.mucang.android.jiakaoyi.framework.h.b bVar, cn.mucang.android.jiakaoyi.framework.h.b bVar2, a aVar) {
            this(list, bVar, bVar2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void h(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, View view) {
            b2.this.o0(bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void j(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, View view) {
            b2.this.n0(bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void l(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, View view) {
            b2.this.q(bVar);
        }

        @SuppressLint({"NotifyDataSetChanged"})
        void f(List<Object> list) {
            this.c.clear();
            this.c.addAll(list);
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            Object obj = this.c.get(i);
            if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b) {
                return 1;
            }
            if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c) {
                return 2;
            }
            return super.getItemViewType(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @SuppressLint({"SetTextI18n"})
        public void onBindViewHolder(RecyclerView.c0 c0Var, int i) {
            Object obj = this.c.get(c0Var.getAdapterPosition());
            c0Var.itemView.setTag(obj);
            c0Var.itemView.setOnClickListener(this.b);
            if (!(obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b)) {
                if (obj instanceof cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c) {
                    TextView textView = ((f) c0Var).f6567a;
                    cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c cVar = (cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.c) obj;
                    textView.setText(cVar.f6583a);
                    textView.setCompoundDrawablesWithIntrinsicBounds(cVar.f6584d ? R.drawable.collect_ic_expend : R.drawable.collect_ic_close, 0, 0, 0);
                    return;
                }
                h hVar = (h) c0Var;
                TeachModel teachModel = (TeachModel) obj;
                teachModel.position = c0Var.getAdapterPosition();
                hVar.f6570a.setText(teachModel.findText());
                hVar.b.setTag(teachModel);
                hVar.b.setOnClickListener(this.f6560a);
                hVar.itemView.setBackgroundColor(teachModel == b2.this.m ? -12367793 : 0);
                return;
            }
            final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar = (cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b) obj;
            f fVar = (f) c0Var;
            TextView textView2 = fVar.f6567a;
            String strT = b2.t(bVar.f6580a, bVar.b);
            fVar.b.setVisibility((cn.mucang.android.core.utils.n0.g(strT) && cn.mucang.android.core.utils.n0.f(bVar.c)) ? 0 : 8);
            fVar.b.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6652a.h(bVar, view);
                }
            });
            fVar.c.setVisibility(cn.mucang.android.core.utils.n0.f(bVar.c) ? 0 : 8);
            fVar.c.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6659a.j(bVar, view);
                }
            });
            fVar.f6568d.setVisibility(cn.mucang.android.core.utils.n0.f(bVar.c) ? 8 : 0);
            fVar.f6568d.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6662a.l(bVar, view);
                }
            });
            textView2.setText(bVar.f6580a.getStepName() + strT + b2.s(bVar.c));
            textView2.setCompoundDrawablesWithIntrinsicBounds(bVar.f6582e ? R.drawable.collect_ic_expend : R.drawable.collect_ic_close, 0, 0, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                return new f(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.teach_collect_item, viewGroup, false));
            }
            return i == 2 ? new f(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.teach_collect_step_item, viewGroup, false)) : new h(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.teach_collect_variable_item, viewGroup, false));
        }

        private d(List<Object> list, cn.mucang.android.jiakaoyi.framework.h.b<TeachModel> bVar, cn.mucang.android.jiakaoyi.framework.h.b<Object> bVar2) {
            this.f6560a = new a();
            this.b = new b();
            ArrayList arrayList = new ArrayList();
            this.c = arrayList;
            this.f6562e = bVar2;
            arrayList.addAll(list);
            this.f6561d = bVar;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TeachModel f6566a;

        public e(TeachModel teachModel) {
            this.f6566a = teachModel;
        }
    }

    private static class f extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f6567a;
        ImageView b;
        ImageView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f6568d;

        public f(View view) {
            super(view);
            this.f6567a = (TextView) view.findViewById(R.id.name);
            this.b = (ImageView) view.findViewById(R.id.refreshIv);
            this.c = (ImageView) view.findViewById(R.id.addIv);
            this.f6568d = (ImageView) view.findViewById(R.id.deleteIv);
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TeachModel f6569a;

        public g(TeachModel teachModel) {
            this.f6569a = teachModel;
        }
    }

    private static class h extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f6570a;
        View b;

        public h(View view) {
            super(view);
            this.f6570a = (TextView) view.findViewById(R.id.name);
            this.b = view.findViewById(R.id.vMore);
        }
    }

    public b2(K2TeachCollectActivity k2TeachCollectActivity, String str, String str2) {
        this.f6551a = (RecyclerView) k2TeachCollectActivity.findViewById(R.id.itemList);
        this.i = str;
        this.b = k2TeachCollectActivity;
        this.c = new CollectMapPreviewer((MapView) k2TeachCollectActivity.findViewById(R.id.previewMap));
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(k2TeachCollectActivity).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.g
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                this.f6644a.m0();
            }
        }, "正在加载数据...", "数据加载失败");
        LiveBus.d(e.class).h(k2TeachCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.z
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6731a.O((b2.e) obj);
            }
        });
        LiveBus.d(g.class).h(k2TeachCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6668a.Q((b2.g) obj);
            }
        });
        LiveBus.d(f2.f.class).h(k2TeachCollectActivity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.n
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6671a.S((f2.f) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(final TeachModel teachModel) throws Exception {
        if (new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().o(teachModel)) {
            cn.mucang.android.core.utils.u.c(new SafeRunnable(this.b, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6721a.a0(teachModel);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(final StringBuilder sb, DialogInterface dialogInterface, int i) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this.b).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.d0
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6576a.W(sb);
            }
        }, "正在删除", "删除失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F() {
        try {
            ArrayList arrayList = new ArrayList();
            for (TeachModel teachModel : this.f6552d.h()) {
                OrderModel orderModel = new OrderModel();
                orderModel.teachModelId = teachModel.teachModelId;
                orderModel.position = teachModel.position;
                arrayList.add(orderModel);
            }
            new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().w(arrayList);
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.d("CollectTeachRender", e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void I(View view) {
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void K(View view) {
        this.f6556h.g(new Function0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f6677a.Y();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void M(View view) {
        TeachModel teachModel = this.m;
        if (teachModel == null || cn.mucang.android.core.utils.n0.f(teachModel.teachModelId)) {
            cn.mucang.android.core.utils.u.h("请选择教学点");
            return;
        }
        K2TeachCollectActivity k2TeachCollectActivity = this.b;
        String str = this.i;
        TeachModel teachModel2 = this.m;
        MonitorActivity.O(k2TeachCollectActivity, str, teachModel2.teachModelId, teachModel2.step, teachModel2.subStep, teachModel2.getStepAndPlayText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void O(e eVar) {
        this.f6552d.b(eVar.f6566a);
        this.f6554f.f(this.f6552d.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void Q(g gVar) {
        this.f6552d.k(gVar.f6569a);
        this.f6554f.f(this.f6552d.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void S(f2.f fVar) {
        this.c.g(fVar.f6622a, this.f6552d.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void U(EditText editText, TeachModel teachModel, DialogInterface dialogInterface, int i) {
        int i2;
        String strTrim = editText.getText().toString().trim();
        if (cn.mucang.android.core.utils.n0.e(strTrim)) {
            cn.mucang.android.core.utils.u.h("没有输入内容");
            return;
        }
        if (cn.mucang.android.core.utils.g.b(teachModel.data)) {
            teachModel.data = new ArrayList();
        }
        teachModel.data.add(new VoiceModel(strTrim));
        int i3 = teachModel.step;
        if ((i3 == Step.K2_DaoCheRuKu.type && ((i2 = teachModel.subStep) == 1 || i2 == 3 || i2 == 5)) || (i3 == Step.K2_CeFangTingChe.type && teachModel.subStep == 1)) {
            teachModel.data.add(LineTipModel.createDefaultFrameModel(i3, teachModel.subStep));
        }
        this.f6556h.f(teachModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void W(StringBuilder sb) throws Exception {
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().p(sb.toString(), this.i);
        m0();
        cn.mucang.android.core.utils.u.h("删除成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Object Y() {
        this.m = null;
        this.f6554f.notifyDataSetChanged();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void a0(TeachModel teachModel) {
        this.f6552d.j(teachModel);
        this.f6554f.f(this.f6552d.f());
        this.f6556h.d0(teachModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Boolean e0(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, StringBuilder sb, String str) {
        if (this.f6552d.d(bVar.f6580a.type, bVar.b, str)) {
            l(bVar, str, sb.toString());
            return Boolean.TRUE;
        }
        cn.mucang.android.core.utils.u.h("方案名称重复，不能新增");
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g0(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, DialogInterface dialogInterface, int i) {
        p0(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i0(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar) throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList<TeachModel> arrayList2 = new ArrayList();
        for (TeachModel teachModel : this.f6552d.h()) {
            if (teachModel.step == bVar.f6580a.type && cn.mucang.android.core.utils.n0.f(teachModel.parkingSpaceGroup)) {
                if (teachModel.stepDirection == bVar.b) {
                    arrayList.add(teachModel);
                } else if (!teachModel.isTraceTeach()) {
                    arrayList2.add(teachModel);
                }
            }
        }
        for (TeachModel teachModel2 : arrayList2) {
            teachModel2.teachModelId = "0";
            int i = teachModel2.step;
            if (i == Step.K2_DaoCheRuKu.type) {
                teachModel2.stepDirection = 1;
                int i2 = teachModel2.subStep;
                if (i2 == 2) {
                    teachModel2.subStep = 4;
                } else if (i2 == 3) {
                    teachModel2.subStep = 5;
                } else if (i2 == 4) {
                    teachModel2.subStep = 2;
                } else if (i2 == 5) {
                    teachModel2.subStep = 3;
                }
            } else if (i == Step.K2_ZhiJiaoZhuanWan.type) {
                teachModel2.stepDirection = 2;
            } else if (i == Step.K2_SQuXian.type) {
                teachModel2.stepDirection = 1;
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append(((TeachModel) it.next()).teachModelId);
            sb.append(",");
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().t(sb.toString(), this.i, arrayList2);
        m0();
        cn.mucang.android.core.utils.u.h("同步成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k0(final TeachModel teachModel, String str) {
        if (n(teachModel, str)) {
            return;
        }
        final EditText editText = new EditText(this.b);
        editText.setPadding(24, 10, 24, 10);
        editText.setMinLines(3);
        editText.setMaxEms(128);
        editText.setText(str);
        editText.setGravity(BadgeDrawable.TOP_START);
        new androidx.appcompat.app.c.a(this.b).setTitle("请输入语音提示语:").setView(editText).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.q
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f6680a.U(editText, teachModel, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setCancelable(false).create().show();
    }

    private void l(final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, final String str, final String str2) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this.b).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.x
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6724a.x(str2, bVar, str);
            }
        }, "正在添加", "添加失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(TeachModel teachModel) {
        this.f6555g = teachModel;
    }

    private void m() {
        String[] strArr;
        if (!this.b.q()) {
            cn.mucang.android.core.utils.u.h("请先点击开始");
            return;
        }
        Step stepM = this.b.getJ();
        if (stepM == null) {
            cn.mucang.android.core.utils.u.h("请将车开到某个项目，进行采集");
            return;
        }
        if (this.f6555g == null) {
            cn.mucang.android.core.utils.u.h("还没生成教学内容");
            return;
        }
        if (this.f6556h.o()) {
            cn.mucang.android.core.utils.u.h("当前数据没有保存，请先保存数据或取消");
            return;
        }
        final TeachModel teachModel = this.f6555g;
        teachModel.step = stepM.type;
        teachModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
        teachModel.programmeId = this.i;
        if (stepM == Step.K2_DaoCheRuKu) {
            strArr = teachModel.stepDirection == 1 ? new String[]{"驶入项目", "左倒库", "右出库", "右倒库", "左出库"} : new String[]{"驶入项目", "右倒库", "左出库", "左倒库", "右出库"};
        } else {
            strArr = stepM == Step.K2_CeFangTingChe ? new String[]{"驶入项目", "倒入侧方", "驶出侧方"} : null;
        }
        if (strArr != null) {
            new androidx.appcompat.app.c.a(this.b).setItems(strArr, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.s
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f6686a.z(teachModel, dialogInterface, i);
                }
            }).create().show();
        } else {
            teachModel.subStep = 1;
            q0(teachModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        final ArrayList arrayList = new ArrayList();
        try {
            arrayList.addAll(new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().q(this.i, 0));
        } catch (Throwable th) {
            cn.mucang.android.core.utils.t.d("CollectTeachRender", "加载失败:" + th.getLocalizedMessage());
        }
        if (cn.mucang.android.core.utils.d.d(this.b)) {
            return;
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f6728a.c0(arrayList);
            }
        });
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private boolean n(TeachModel teachModel, String str) {
        if (!"采集标准轨迹".equals(str)) {
            return false;
        }
        for (TeachModel teachModel2 : this.f6552d.h()) {
            if (teachModel2.step == teachModel.step && teachModel2.stepDirection == teachModel.stepDirection && teachModel2.subStep == teachModel.subStep && teachModel2.isTraceTeach() && this.f6556h.p(teachModel2)) {
                this.m = teachModel2;
                this.f6554f.notifyDataSetChanged();
                return true;
            }
        }
        if (cn.mucang.android.core.utils.g.b(teachModel.data)) {
            teachModel.data = new ArrayList();
        }
        teachModel.variableList.clear();
        teachModel.variableList.add(new TraceVariable(teachModel.step, teachModel.subStep));
        teachModel.data.add(new VoiceModel(str));
        this.f6556h.f(teachModel);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar) {
        List<TeachModel> listH = this.f6552d.h();
        final StringBuilder sb = new StringBuilder();
        for (TeachModel teachModel : listH) {
            if (teachModel.step == bVar.f6580a.type && teachModel.stepDirection == bVar.b && cn.mucang.android.core.utils.n0.f(teachModel.parkingSpaceGroup)) {
                sb.append(teachModel.teachModelId);
                sb.append(",");
            }
        }
        if (sb.length() <= 0) {
            cn.mucang.android.core.utils.u.h("请先采集教学");
            return;
        }
        sb.deleteCharAt(sb.length() - 1);
        new AddGroupDialog(this.b, bVar.f6580a.getStepName() + t(bVar.f6580a, bVar.b), new Function1() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f6674a.e0(bVar, sb, (String) obj);
            }
        }).show();
    }

    private List<Object> o(List<TeachModel> list) {
        this.f6552d.e();
        this.f6552d.g(list);
        Step step = Step.K2_DaoCheRuKu;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step, 2);
        bVar.f6582e = true;
        bVar.d(step, true);
        this.f6552d.a(bVar);
        this.f6552d.c(step, 2);
        Step step2 = Step.K2_CeFangTingChe;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar2 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step2, 0);
        bVar2.c(step2);
        this.f6552d.a(bVar2);
        this.f6552d.c(step2, 0);
        Step step3 = Step.K2_ZhiJiaoZhuanWan;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar3 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step3, 1);
        bVar3.c(step3);
        this.f6552d.a(bVar3);
        this.f6552d.c(step3, 1);
        Step step4 = Step.K2_SQuXian;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar4 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step4, 2);
        bVar4.c(step4);
        this.f6552d.a(bVar4);
        this.f6552d.c(step4, 2);
        Step step5 = Step.K2_ShangPoQiBu;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar5 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step5, 0);
        bVar5.c(step5);
        this.f6552d.a(bVar5);
        this.f6552d.c(step5, 0);
        Step step6 = Step.K2_ShiHuaLuMian;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar6 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step6, 0);
        bVar6.c(step6);
        this.f6552d.a(bVar6);
        this.f6552d.c(step6, 0);
        Step step7 = Step.K2_SuiDao;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar7 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step7, 0);
        bVar7.c(step7);
        this.f6552d.a(bVar7);
        this.f6552d.c(step7, 0);
        Step step8 = Step.K2_ZhaiLuDiaoTou;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar8 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step8, 0);
        bVar8.c(step8);
        this.f6552d.a(bVar8);
        this.f6552d.c(step8, 0);
        Step step9 = Step.K2_QuKa;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar9 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step9, 0);
        bVar9.c(step9);
        this.f6552d.a(bVar9);
        this.f6552d.c(step9, 0);
        Step step10 = Step.K2_JinJiQingKuang;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar10 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step10, 0);
        bVar10.c(step10);
        this.f6552d.a(bVar10);
        this.f6552d.c(step10, 0);
        Step step11 = Step.K2_ETC;
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar11 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step11, 0);
        bVar11.c(step11);
        this.f6552d.a(bVar11);
        this.f6552d.c(step11, 0);
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar12 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step, 1);
        bVar12.c(step);
        this.f6552d.a(bVar12);
        this.f6552d.c(step, 1);
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar13 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step3, 2);
        bVar13.c(step3);
        this.f6552d.a(bVar13);
        this.f6552d.c(step3, 2);
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar14 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b(step4, 1);
        bVar14.c(step4);
        this.f6552d.a(bVar14);
        this.f6552d.c(step4, 1);
        if (cn.mucang.android.core.utils.g.d(list)) {
            Iterator<TeachModel> it = list.iterator();
            while (it.hasNext()) {
                this.f6552d.b(it.next());
            }
        }
        List<Object> listF = this.f6552d.f();
        if (listF.size() > 2) {
            Object obj = listF.get(2);
            if (obj instanceof TeachModel) {
                TeachModel teachModel = (TeachModel) obj;
                if (this.f6556h.p(teachModel)) {
                    this.m = teachModel;
                }
            }
        }
        return listF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar) {
        new androidx.appcompat.app.c.a(this.b).setMessage("同步正库教学会覆盖当前的教学点，是否确认同步？").setPositiveButton("确认同步", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.a0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f6543a.g0(bVar, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final TeachModel teachModel) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this.b).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.v
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6695a.B(teachModel);
            }
        }, "正在删除数据...", "数据删除失败");
    }

    private void p0(final cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this.b).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.e
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                this.f6589a.i0(bVar);
            }
        }, "正在同步", "同步失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar) {
        List<TeachModel> listH = this.f6552d.h();
        final StringBuilder sb = new StringBuilder();
        for (TeachModel teachModel : listH) {
            if (teachModel.step == bVar.f6580a.type && teachModel.stepDirection == bVar.b && bVar.c.equals(teachModel.parkingSpaceGroup)) {
                sb.append(teachModel.teachModelId);
                sb.append(",");
            }
        }
        if (sb.length() <= 0) {
            cn.mucang.android.core.utils.u.h("当前没有教学点");
        } else {
            sb.deleteCharAt(sb.length() - 1);
            new androidx.appcompat.app.c.a(this.b).setMessage("是否确认删除？").setPositiveButton("确认", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.t
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f6689a.D(sb, dialogInterface, i);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
        }
    }

    private void q0(final TeachModel teachModel) {
        new z1().a(this.b, teachModel, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.h
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f6649a.k0(teachModel, (String) obj);
            }
        });
    }

    public static String s(String str) {
        if (cn.mucang.android.core.utils.n0.e(str)) {
            return "";
        }
        return "(" + str + ")";
    }

    public static String t(Step step, int i) {
        if (step == Step.K2_DaoCheRuKu && i == 1) {
            return "(左库)";
        }
        if (step == Step.K2_ZhiJiaoZhuanWan && i == 2) {
            return "(右转)";
        }
        return (step == Step.K2_SQuXian && i == 1) ? "(反曲)" : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void c0(List<TeachModel> list) {
        if (cn.mucang.android.core.utils.d.d(this.b)) {
            return;
        }
        this.f6556h = new f2(this.b, this.c);
        this.f6554f = new d(this, o(list), this.j, this.k, null);
        this.f6551a.setLayoutManager(new LinearLayoutManager(this.b, 1, false));
        this.f6551a.setAdapter(this.f6554f);
        this.f6551a.setItemAnimator(null);
        this.l.g(this.f6551a);
        LiveBus.d(TeachModel.class).h(this.b, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.u
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f6692a.l0((TeachModel) obj);
            }
        });
        this.b.findViewById(R.id.collectOne).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6572a.I(view);
            }
        });
        this.b.findViewById(R.id.cancelModel).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6665a.K(view);
            }
        });
        this.b.findViewById(R.id.sceneTv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6549a.M(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(String str, cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.b bVar, String str2) throws Exception {
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().m(str, this.i, bVar.f6580a.type, bVar.b, str2);
        m0();
        cn.mucang.android.core.utils.u.h("添加成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(TeachModel teachModel, DialogInterface dialogInterface, int i) {
        teachModel.subStep = i + 1;
        q0(teachModel);
    }

    public void r() {
        if (this.f6553e) {
            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6683a.F();
                }
            });
        }
        f2 f2Var = this.f6556h;
        if (f2Var != null) {
            f2Var.j();
        }
    }
}
