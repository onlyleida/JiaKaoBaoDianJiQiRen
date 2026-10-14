package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.k3setting.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i1 extends cn.mucang.jiakaoyi.uilib.ui.dialog.i0 {
    private RouteConfig c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Step f4292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.b<Deduct> f4293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RecyclerView f4294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RecyclerView f4295g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f4296h;
    private d i;
    private final cn.mucang.android.jiakaoyi.framework.h.b<Step> j = new a();

    class a implements cn.mucang.android.jiakaoyi.framework.h.b<Step> {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(Step step) {
            if (i1.this.f4292d == step) {
                return;
            }
            i1.this.f4292d = step;
            i1.this.f4296h.g(i1.this.C(step));
            i1.this.f4295g.scrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends RecyclerView.Adapter<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<Deduct> f4298a;
        private final cn.mucang.android.jiakaoyi.framework.h.b<Deduct> b;

        /* synthetic */ b(List list, cn.mucang.android.jiakaoyi.framework.h.b bVar, a aVar) {
            this(list, bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(Deduct deduct, View view) {
            this.b.callback(deduct);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(c cVar, int i) {
            final Deduct deduct = this.f4298a.get(i);
            cVar.f4299a.setText(String.valueOf(deduct.code));
            cVar.b.setText(deduct.name);
            cVar.c.setText(String.valueOf(deduct.deductScore));
            cVar.f4300d.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4311a.d(deduct, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public c onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.exam_fragment_manual_judge_item, viewGroup, false));
        }

        public void g(List<Deduct> list) {
            this.f4298a = list;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f4298a.size();
        }

        private b(List<Deduct> list, cn.mucang.android.jiakaoyi.framework.h.b<Deduct> bVar) {
            this.f4298a = list;
            this.b = bVar;
        }
    }

    private static class c extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f4299a;
        TextView b;
        TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f4300d;

        public c(View view) {
            super(view);
            this.f4299a = (TextView) view.findViewById(R.id.deductId);
            this.b = (TextView) view.findViewById(R.id.deductName);
            this.c = (TextView) view.findViewById(R.id.deductScore);
            this.f4300d = view.findViewById(R.id.deductAction);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class d extends RecyclerView.Adapter<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f[] f4301a;
        private final cn.mucang.android.jiakaoyi.framework.h.b<Step> b;
        private final cn.mucang.android.jiakaoyi.framework.h.b<Step> c;

        /* synthetic */ d(Step[] stepArr, Step step, cn.mucang.android.jiakaoyi.framework.h.b bVar, a aVar) {
            this(stepArr, step, bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void e(f fVar, View view) {
            this.c.callback(fVar.f4303a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(Step step) {
            this.b.callback(step);
            for (f fVar : this.f4301a) {
                fVar.b = fVar.f4303a == step;
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(e eVar, int i) {
            final f fVar = this.f4301a[i];
            eVar.f4302a.setText(fVar.f4303a.getStepName());
            eVar.f4302a.setSelected(fVar.b);
            eVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.n0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4313a.e(fVar, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f4301a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public e onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new e(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.exam_fragment_manual_judge_step_item, viewGroup, false));
        }

        private d(Step[] stepArr, Step step, cn.mucang.android.jiakaoyi.framework.h.b<Step> bVar) {
            this.c = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.o0
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f4315a.h((Step) obj);
                }
            };
            this.f4301a = new f[stepArr.length];
            for (int i = 0; i < stepArr.length; i++) {
                this.f4301a[i] = new f(stepArr[i], stepArr[i] == step);
            }
            this.b = bVar;
        }
    }

    private static class e extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f4302a;

        public e(View view) {
            super(view);
            this.f4302a = (TextView) view.findViewById(R.id.stepName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Step f4303a;
        boolean b;

        public f(Step step, boolean z) {
            this.f4303a = step;
            this.b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Deduct> C(Step step) {
        Collection<Deduct> collectionValues = this.c.steps.get(step).deductConfig.values();
        ArrayList arrayList = new ArrayList();
        for (Deduct deduct : collectionValues) {
            if (deduct.judgeType.needManual()) {
                arrayList.add(deduct);
            }
        }
        return arrayList;
    }

    static /* synthetic */ int D(Step step, Step step2) {
        return step.type - step2.type;
    }

    private void E() {
        int i = 0;
        for (int i2 = 0; i2 < this.i.f4301a.length; i2++) {
            if (this.i.f4301a[i2].f4303a == this.f4292d) {
                i = i2;
                break;
            }
        }
        this.f4294f.getLayoutManager().scrollToPosition(i);
    }

    public static void F(FragmentManager fragmentManager, RouteConfig routeConfig, Step step, cn.mucang.android.jiakaoyi.framework.h.b<Deduct> bVar) {
        i1 i1Var = new i1();
        if (step == null) {
            step = Step.K3_Global;
        }
        i1Var.f4292d = step;
        i1Var.c = routeConfig;
        i1Var.f4293e = bVar;
        i1Var.show(fragmentManager, "ManualDeductFragment");
    }

    private Step[] G() {
        Step[] stepArr = (Step[]) this.c.steps.keySet().toArray(new Step[0]);
        Arrays.sort(stepArr, new Comparator() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.p0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return i1.D((Step) obj, (Step) obj2);
            }
        });
        return stepArr;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.c = null;
        this.f4293e = null;
        this.f4292d = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.stepList);
        this.f4294f = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        a aVar = null;
        d dVar = new d(G(), this.f4292d, this.j, aVar);
        this.i = dVar;
        this.f4294f.setAdapter(dVar);
        E();
        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(R.id.deductList);
        this.f4295g = recyclerView2;
        recyclerView2.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        b bVar = new b(C(this.f4292d), this.f4293e, aVar);
        this.f4296h = bVar;
        this.f4295g.setAdapter(bVar);
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.i0
    protected int v() {
        return R.layout.exam_fragment_manual_judge;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.i0
    protected String w() {
        return getString(R.string.k3setting_manual_deduct);
    }
}
