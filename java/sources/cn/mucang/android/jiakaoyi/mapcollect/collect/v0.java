package cn.mucang.android.jiakaoyi.mapcollect.collect;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DaoKuSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class v0 {
    public cn.mucang.android.jiakaoyi.signal.i.a b;
    private final PosCollectActivity c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f4850d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ExamSiteModel f4852f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<SourceData> f4849a = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Step, cn.mucang.android.jiakaoyi.mapcollect.collect.data.d> f4851e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> f4853g = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.l0
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            this.f4800a.D((List) obj);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    class b extends RecyclerView.Adapter<c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View.OnClickListener f4854a;
        private final View.OnLongClickListener b;
        private final View.OnClickListener c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final View.OnClickListener f4855d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final View.OnClickListener f4856e;

        class a implements View.OnLongClickListener {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void b(String str, SourceData sourceData) {
                b.this.notifyDataSetChanged();
                ((cn.mucang.android.jiakaoyi.mapcollect.collect.data.d) v0.this.f4851e.get(b.this.d(str))).c(sourceData);
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void e(final SourceData sourceData, final String str, ProgressDialog progressDialog) {
                String str2;
                final String name = sourceData.getName();
                try {
                    sourceData.setName(str);
                    v0.this.f4852f.mapData = JSON.toJSONString(v0.this.f4849a);
                    new GeneralBusinessApi().u(v0.this.f4852f);
                    cn.mucang.android.core.utils.u.c(new SafeRunnable(v0.this.c, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.e0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f4786a.b(str, sourceData);
                        }
                    }));
                    if (!progressDialog.isShowing()) {
                    }
                } catch (Throwable th) {
                    try {
                        cn.mucang.android.core.utils.u.c(new SafeRunnable(v0.this.c, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.f0
                            @Override // java.lang.Runnable
                            public final void run() {
                                sourceData.setName(name);
                            }
                        }));
                        StringBuilder sb = new StringBuilder();
                        sb.append("修改失败");
                        if (MucangConfig.v()) {
                            str2 = ":" + th.getLocalizedMessage();
                        } else {
                            str2 = "";
                        }
                        sb.append(str2);
                        cn.mucang.android.core.utils.u.h(sb.toString());
                    } finally {
                        if (progressDialog.isShowing()) {
                            progressDialog.dismiss();
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public /* synthetic */ void g(EditText editText, final SourceData sourceData, DialogInterface dialogInterface, int i) {
                try {
                    int i2 = Integer.parseInt(editText.getText().toString());
                    if (i2 < 1 || i2 > 100) {
                        cn.mucang.android.core.utils.u.h("序号只能在1-100内");
                    } else {
                        final String str = sourceData.getName().split("-")[0] + "-" + i2;
                        if (v0.this.q(str)) {
                            cn.mucang.android.core.utils.u.h("修改失败: 这个序号已经存在");
                        } else {
                            final ProgressDialog progressDialogShow = ProgressDialog.show(v0.this.c, null, "正在修改...");
                            cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.d0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f4776a.e(sourceData, str, progressDialogShow);
                                }
                            });
                        }
                    }
                } catch (Throwable unused) {
                    cn.mucang.android.core.utils.u.h("序号只能是1-100的数字");
                }
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                final SourceData sourceData = (SourceData) view.getTag();
                final EditText editText = new EditText(v0.this.c);
                editText.setInputType(2);
                new androidx.appcompat.app.c.a(v0.this.c).setTitle("修改序号").setView(editText).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.g0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f4790a.g(editText, sourceData, dialogInterface, i);
                    }
                }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
                return true;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.collect.v0$b$b, reason: collision with other inner class name */
        class ViewOnClickListenerC0117b implements View.OnClickListener {
            ViewOnClickListenerC0117b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                v0.this.c.R((SourceData) view.getTag());
                b.this.notifyDataSetChanged();
            }
        }

        private b() {
            this.f4854a = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4796a.f(view);
                }
            };
            this.b = new a();
            this.c = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4794a.h(view);
                }
            };
            this.f4855d = new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4792a.j(view);
                }
            };
            this.f4856e = new ViewOnClickListenerC0117b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Step d(String str) {
            for (Step step : Step.k2Steps()) {
                if (str.contains(step.getStepName())) {
                    return step;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void f(View view) {
            v0.this.m((SourceData) view.getTag());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void h(View view) {
            v0.this.k((SourceData) view.getTag());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void j(View view) {
            v0.this.l((SourceData) view.getTag());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return v0.this.f4849a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(c cVar, int i) {
            SourceData sourceData = (SourceData) v0.this.f4849a.get(i);
            String name = sourceData.getName();
            SourceData sourceDataP = v0.this.c.p();
            cVar.f4862e.setVisibility(name.equals(sourceDataP != null ? sourceDataP.getName() : null) ? 0 : 4);
            cVar.f4860a.setText(sourceData.getName());
            cVar.c.setVisibility(sourceData.canTurnOrientation() ? 0 : 8);
            if (!(sourceData instanceof C2DaoKuSrcData) || ((C2DaoKuSrcData) sourceData).hasTurnOrientation) {
                cVar.f4861d.setVisibility(8);
            } else {
                cVar.f4861d.setVisibility(0);
            }
            cVar.b.setTag(sourceData);
            cVar.c.setTag(sourceData);
            cVar.f4861d.setTag(sourceData);
            cVar.itemView.setTag(sourceData);
            cVar.b.setOnClickListener(this.f4854a);
            cVar.c.setOnClickListener(this.c);
            cVar.f4861d.setOnClickListener(this.f4855d);
            cVar.itemView.setOnClickListener(this.f4856e);
            cVar.itemView.setOnLongClickListener(this.b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public c onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.hpmap__collect_step_item, viewGroup, false));
        }
    }

    private static class c extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f4860a;
        private View b;
        private View c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f4861d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f4862e;

        public c(View view) {
            super(view);
            this.f4860a = (TextView) view.findViewById(R.id.text);
            this.b = view.findViewById(R.id.delete);
            this.c = view.findViewById(R.id.changOrientation);
            this.f4861d = view.findViewById(R.id.copy_turn);
            this.f4862e = view.findViewById(R.id.select_this);
        }
    }

    public v0(MapView mapView, RecyclerView recyclerView, PosCollectActivity posCollectActivity, ExamSiteModel examSiteModel) {
        this.c = posCollectActivity;
        this.f4852f = examSiteModel;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        b bVar = new b();
        this.f4850d = bVar;
        recyclerView.setAdapter(bVar);
        r(examSiteModel.examSiteId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(final SourceData sourceData, DialogInterface dialogInterface, int i) {
        final Step stepO = o(sourceData);
        if (stepO == null) {
            return;
        }
        final ProgressDialog progressDialogShow = ProgressDialog.show(this.c, null, "正在删除...");
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f4864a.Q(sourceData, stepO, progressDialogShow);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void D(List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        s(((SourceData) list.get(0)).giveOnePointToCalZero());
        i(list, ((SourceData) list.get(0)).canTurnOrientation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void F(SourceData sourceData, Boolean bool) {
        if (this.c.isFinishing() || this.c.isDestroyed() || !bool.booleanValue()) {
            return;
        }
        cn.mucang.android.core.utils.u.h("更改成功");
        SourceData sourceDataP = this.c.p();
        if (sourceDataP == null || !sourceData.getName().equals(sourceDataP.getName())) {
            return;
        }
        this.c.R(sourceData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void H(Boolean bool) {
        if (this.c.isFinishing() || this.c.isDestroyed()) {
            return;
        }
        if (bool.booleanValue()) {
            cn.mucang.android.core.utils.u.h("复制更改成功");
        } else {
            cn.mucang.android.core.utils.u.h("复制更改失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void J(Step step, boolean z, SourceData sourceData, cn.mucang.android.jiakaoyi.framework.h.b bVar) {
        try {
            cn.mucang.android.jiakaoyi.mapcollect.collect.data.d dVar = this.f4851e.get(step);
            if (dVar != null) {
                if (z) {
                    this.f4849a.add(sourceData);
                    dVar.b(sourceData);
                } else {
                    for (SourceData sourceData2 : this.f4849a) {
                        if (sourceData2.getName().equals(sourceData.getName())) {
                            sourceData2.set(sourceData);
                            break;
                        }
                    }
                    dVar.c(sourceData);
                }
            }
            this.f4850d.notifyDataSetChanged();
            bVar.callback(Boolean.TRUE);
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("dataAction可能为空, size:" + this.f4851e.size());
        }
    }

    static /* synthetic */ void L(ProgressDialog progressDialog) {
        if (progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void N(Step step, SourceData sourceData) {
        this.f4851e.get(step).a(sourceData);
        this.f4849a.remove(sourceData);
        this.f4850d.notifyDataSetChanged();
    }

    static /* synthetic */ void O(ProgressDialog progressDialog) {
        if (progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void Q(final SourceData sourceData, final Step step, final ProgressDialog progressDialog) {
        Runnable runnable;
        try {
            ArrayList arrayList = new ArrayList(this.f4849a);
            arrayList.remove(sourceData);
            this.f4852f.mapData = JSON.toJSONString(arrayList);
            new GeneralBusinessApi().u(this.f4852f);
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4848a.N(step, sourceData);
                }
            });
            runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y
                @Override // java.lang.Runnable
                public final void run() {
                    v0.O(progressDialog);
                }
            };
        } catch (Throwable th) {
            try {
                cn.mucang.android.core.utils.u.h("删除失败");
                cn.mucang.android.core.utils.t.d("TAG", "删除失败 : " + th.getLocalizedMessage());
                runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        v0.O(progressDialog);
                    }
                };
            } catch (Throwable th2) {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        v0.O(progressDialog);
                    }
                });
                throw th2;
            }
        }
        cn.mucang.android.core.utils.u.c(runnable);
    }

    private void R(long j, List<SourceData> list) throws ApiException, InternalException, HttpException {
        ArrayList<Gps> arrayList = new ArrayList();
        Iterator<SourceData> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().giveOnePointToCalZero());
        }
        int i = 0;
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (Gps gps : arrayList) {
            if (gps != null) {
                d3 += gps.longitude;
                d2 += gps.latitude;
                i++;
            }
        }
        if (i != 0) {
            double d4 = i;
            double d5 = d2 / d4;
            double d6 = d3 / d4;
            if (new GeneralBusinessApi().v(j, d5, d6, 0.0d)) {
                ExamSiteModel examSiteModel = this.f4852f;
                examSiteModel.originLatitude = d5;
                examSiteModel.originLongitude = d6;
                ExamSiteModel examSiteModelD = ExamSiteUtil.d();
                if (examSiteModelD != null) {
                    long j2 = examSiteModelD.examSiteId;
                    ExamSiteModel examSiteModel2 = this.f4852f;
                    if (j2 == examSiteModel2.examSiteId) {
                        ExamSiteUtil.r(examSiteModel2);
                    }
                }
            }
        }
    }

    private <T extends SourceData> void i(List<T> list, boolean z) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        this.f4849a.addAll(list);
        Collections.sort(this.f4849a, new Comparator() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.m0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((SourceData) obj).getTime(), ((SourceData) obj2).getTime());
            }
        });
        b bVar = this.f4850d;
        if (bVar != null) {
            bVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(final SourceData sourceData) {
        new androidx.appcompat.app.c.a(this.c).setMessage("确定更改方向?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.o0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f4808a.x(sourceData, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final SourceData sourceData) {
        new androidx.appcompat.app.c.a(this.c).setMessage("确定复制并更改方向?").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.c0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f4763a.z(sourceData, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(final SourceData sourceData) {
        new androidx.appcompat.app.c.a(this.c).setMessage("确定删除?").setPositiveButton(SundialNumKeyBoardView.KEY_DELETE, new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.z
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f4988a.B(sourceData, dialogInterface, i);
            }
        }).setNegativeButton("不删除", (DialogInterface.OnClickListener) null).create().show();
    }

    private int n(Step step) {
        String stepName = step.getStepName();
        HashMap map = new HashMap();
        Iterator<SourceData> it = this.f4849a.iterator();
        while (it.hasNext()) {
            String[] strArrSplit = it.next().getName().split("-");
            if (strArrSplit.length == 2 && stepName.equals(strArrSplit[0])) {
                try {
                    map.put(Integer.valueOf(Integer.parseInt(strArrSplit[1])), Boolean.TRUE);
                } catch (Throwable unused) {
                }
            }
        }
        for (int i = 1; i < 100; i++) {
            Boolean bool = (Boolean) map.get(Integer.valueOf(i));
            if (bool == null || !bool.booleanValue()) {
                return i;
            }
        }
        return 1;
    }

    private Step o(SourceData sourceData) {
        return Step.findWithType(sourceData.stepId());
    }

    private boolean p(ExamSiteModel examSiteModel) {
        return examSiteModel.originLatitude > 1.0E-8d && examSiteModel.originLongitude > 1.0E-8d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q(String str) {
        Iterator<SourceData> it = this.f4849a.iterator();
        while (it.hasNext()) {
            if (it.next().getName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void r(long j) {
        if (j <= 0) {
            return;
        }
        this.f4851e.putAll(cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d.c().a(String.valueOf(j), this.f4853g));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(final SourceData sourceData, final Step step, List list, final cn.mucang.android.jiakaoyi.framework.h.b bVar, final ProgressDialog progressDialog) {
        Runnable runnable;
        boolean z;
        try {
            List<String> listM = this.f4852f.examSiteId > 0 ? new cn.mucang.android.jiakaoyi.mapcollect.b.a.a().m(this.f4852f.examSiteId) : null;
            if (sourceData.getName() == null) {
                sourceData.setName(step.getStepName() + "-" + n(step));
                list.add(sourceData);
                z = true;
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    SourceData sourceData2 = (SourceData) it.next();
                    if (sourceData2.getName().equals(sourceData.getName())) {
                        if (listM != null && listM.contains(sourceData2.createKey())) {
                            listM.remove(sourceData2.createKey());
                            listM.add(sourceData.createKey());
                        }
                        sourceData2.set(sourceData);
                        break;
                    }
                }
                if (listM != null) {
                    Iterator<String> it2 = listM.iterator();
                    while (it2.hasNext()) {
                        String next = it2.next();
                        Iterator it3 = list.iterator();
                        String strCreateKey = null;
                        while (it3.hasNext()) {
                            SourceData sourceData3 = (SourceData) it3.next();
                            if (sourceData3.createKey().equals(next)) {
                                strCreateKey = sourceData3.createKey();
                            }
                        }
                        if (strCreateKey == null) {
                            it2.remove();
                        }
                    }
                }
                z = false;
            }
            this.f4852f.mapData = JSON.toJSONString(list);
            if (this.f4852f.examSiteId <= 0) {
                ExamSiteModel examSiteModelN = new GeneralBusinessApi().n(this.f4852f, false);
                this.f4852f.examSiteId = examSiteModelN.examSiteId;
                r(examSiteModelN.examSiteId);
            } else {
                new GeneralBusinessApi().u(this.f4852f);
                if ((listM == null || listM.isEmpty()) && !AppUtils.j()) {
                    new cn.mucang.android.jiakaoyi.mapcollect.b.a.a().n(this.f4852f.examSiteId, listM);
                }
            }
            if (!p(this.f4852f)) {
                R(this.f4852f.examSiteId, list);
            }
            final boolean z2 = z;
            cn.mucang.android.core.utils.u.c(new SafeRunnable(this.c, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.n0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4804a.J(step, z2, sourceData, bVar);
                }
            }));
            runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.w
                @Override // java.lang.Runnable
                public final void run() {
                    v0.L(progressDialog);
                }
            };
        } catch (Throwable th) {
            try {
                cn.mucang.android.jiakaoyi.framework.utils.q0.d(th);
                cn.mucang.android.core.utils.u.h("操作失败");
                cn.mucang.android.core.utils.u.c(new SafeRunnable(this.c, new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.callback(Boolean.FALSE);
                    }
                }));
                runnable = new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        v0.L(progressDialog);
                    }
                };
            } catch (Throwable th2) {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        v0.L(progressDialog);
                    }
                });
                throw th2;
            }
        }
        cn.mucang.android.core.utils.u.c(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(final SourceData sourceData, DialogInterface dialogInterface, int i) {
        sourceData.turnOrientation();
        j(sourceData, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.p0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f4810a.F(sourceData, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(SourceData sourceData, DialogInterface dialogInterface, int i) {
        SourceData sourceDataCopy = sourceData.copy();
        sourceDataCopy.turnOrientation();
        sourceDataCopy.setName(null);
        j(sourceDataCopy, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.a0
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                this.f4748a.H((Boolean) obj);
            }
        });
    }

    public void j(final SourceData sourceData, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        final Step stepO = o(sourceData);
        if (stepO == null) {
            cn.mucang.android.core.utils.u.h("没找到这个步骤");
            return;
        }
        final ArrayList arrayList = new ArrayList();
        Iterator<SourceData> it = this.f4849a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        final ProgressDialog progressDialogShow = ProgressDialog.show(this.c, null, "正在更新...");
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f4753a.v(sourceData, stepO, arrayList, bVar, progressDialogShow);
            }
        });
    }

    public void s(Gps gps) {
        if (this.b != null || gps.latitude <= 1.0E-8d || gps.longitude <= 1.0E-8d) {
            return;
        }
        this.b = new cn.mucang.android.jiakaoyi.signal.i.b(gps);
    }
}
