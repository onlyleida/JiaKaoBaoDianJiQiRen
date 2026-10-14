package cn.mucang.android.jiakaoyi.teachingk2.collect.render.form;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.d0;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.variable.RelativeVariableCreator;
import cn.mucang.android.jiakaoyi.teachingk2.form.UnityShowLine;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6636a;
    private TextView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LineTipModel f6637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> f6638e;

    public l(ViewGroup viewGroup, final int i, cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar) {
        this.f6638e = bVar;
        View viewFindViewById = viewGroup.findViewById(R.id.addLineModel);
        View viewFindViewById2 = viewGroup.findViewById(R.id.selectorContainer);
        this.f6636a = viewFindViewById2;
        viewFindViewById2.setVisibility(8);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6626a.c(view);
            }
        });
        this.b = (TextView) viewGroup.findViewById(R.id.lineTypeTv);
        this.c = (TextView) viewGroup.findViewById(R.id.selectOptionTv);
        this.b.setSelected(false);
        this.c.setSelected(true);
        this.b.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6631a.e(i, view);
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6627a.g(i, view);
            }
        });
        viewGroup.findViewById(R.id.deleteIv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6624a.i(view);
            }
        });
    }

    private boolean a() {
        return this.f6636a.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(View view) {
        if (a()) {
            return;
        }
        this.f6636a.setVisibility(0);
        LineTipModel lineTipModel = new LineTipModel();
        this.f6637d = lineTipModel;
        lineTipModel.onTime = 500;
        lineTipModel.offTime = 500;
        lineTipModel.duration = 5000;
        this.b.setText("选择线类型");
        this.c.setText("选项");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(int i, View view) {
        LineTipModel lineTipModel;
        if (this.c.isSelected() || (lineTipModel = this.f6637d) == null) {
            return;
        }
        int i2 = lineTipModel.lineType;
        if (i2 == 1) {
            cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar = this.f6638e;
            if (bVar != null) {
                bVar.callback(lineTipModel);
                this.f6636a.setVisibility(8);
                return;
            }
            return;
        }
        if (i2 == 2) {
            s(i, view);
            return;
        }
        if (i2 == 3) {
            u(i, view);
        } else if (i2 == 4) {
            r(i, view, true);
        } else if (i2 == 5) {
            r(i, view, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(View view) {
        this.f6636a.setVisibility(8);
        this.f6637d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(String[] strArr, d0 d0Var, AdapterView adapterView, View view, int i, long j) {
        String str = strArr[i];
        LineTipModel lineTipModel = this.f6637d;
        if (lineTipModel != null) {
            lineTipModel.pointIndexList = RelativeVariableCreator.e(str);
            cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar = this.f6638e;
            if (bVar != null) {
                bVar.callback(this.f6637d);
                this.f6636a.setVisibility(8);
            }
            this.f6636a.setVisibility(8);
        }
        d0Var.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(List list, d0 d0Var, AdapterView adapterView, View view, int i, long j) {
        UnityShowLine unityShowLine = (UnityShowLine) list.get(i);
        LineTipModel lineTipModel = this.f6637d;
        if (lineTipModel != null && TextUtils.equals(lineTipModel.objectName, unityShowLine.unityName)) {
            d0Var.dismiss();
            return;
        }
        this.c.setSelected(false);
        LineTipModel lineTipModel2 = this.f6637d;
        if (lineTipModel2 != null) {
            lineTipModel2.objectName = unityShowLine.unityName;
            cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar = this.f6638e;
            if (bVar != null) {
                bVar.callback(lineTipModel2);
                this.f6636a.setVisibility(8);
            }
            this.f6636a.setVisibility(8);
        }
        d0Var.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(List list, d0 d0Var, int i, AdapterView adapterView, View view, int i2, long j) {
        if (TextUtils.equals(this.b.getText(), (CharSequence) list.get(i2))) {
            d0Var.dismiss();
            return;
        }
        int type = LineTipTypeModel.getLineTipTypes(i).get(i2).getType();
        if (type == 2) {
            this.c.setText("选择线段");
        } else if (type == 3) {
            this.c.setText("选择点");
        } else if (type == 1) {
            this.c.setText("采集线框");
        } else if (type == 4) {
            this.c.setText("选择区域");
        } else if (type == 5) {
            this.c.setText("选择角");
        }
        this.b.setText((CharSequence) list.get(i2));
        this.c.setSelected(false);
        LineTipModel lineTipModel = this.f6637d;
        if (lineTipModel != null) {
            lineTipModel.lineType = type;
        }
        d0Var.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(int[] iArr, d0 d0Var, AdapterView adapterView, View view, int i, long j) {
        int i2 = iArr[i];
        LineTipModel lineTipModel = this.f6637d;
        if (lineTipModel != null && lineTipModel.pointIndex == i2) {
            d0Var.dismiss();
            return;
        }
        this.c.setSelected(false);
        LineTipModel lineTipModel2 = this.f6637d;
        if (lineTipModel2 != null) {
            lineTipModel2.pointIndex = i2;
            cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar = this.f6638e;
            if (bVar != null) {
                bVar.callback(lineTipModel2);
                this.f6636a.setVisibility(8);
            }
            this.f6636a.setVisibility(8);
        }
        d0Var.dismiss();
    }

    private void r(int i, View view, boolean z) {
        final String[] areas = z ? LineTipTypeModel.getAreas(i) : LineTipTypeModel.getAngles(i);
        if (areas == null || areas.length == 0) {
            return;
        }
        Context context = view.getContext();
        final d0 d0Var = new d0(context);
        d0Var.l(new ArrayAdapter(context, R.layout.new_collect_list_item, areas));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.a
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                this.f6623a.k(areas, d0Var, adapterView, view2, i2, j);
            }
        });
        d0Var.I(true);
        d0Var.show();
    }

    private void s(int i, View view) {
        final List<UnityShowLine> listFind = UnityShowLine.find(i);
        if (cn.mucang.android.core.utils.g.b(listFind)) {
            return;
        }
        Context context = view.getContext();
        String[] strArr = new String[listFind.size()];
        for (int i2 = 0; i2 < listFind.size(); i2++) {
            strArr[i2] = listFind.get(i2).name;
        }
        final d0 d0Var = new d0(context);
        d0Var.l(new ArrayAdapter(context, R.layout.new_collect_list_item, strArr));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.c
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                this.f6625a.m(listFind, d0Var, adapterView, view2, i3, j);
            }
        });
        d0Var.I(true);
        d0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void e(View view, final int i) {
        Context context = view.getContext();
        final d0 d0Var = new d0(context);
        final List<String> typeNames = LineTipTypeModel.getTypeNames(i);
        d0Var.l(new ArrayAdapter(context, R.layout.new_collect_list_item, typeNames));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.f
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                this.f6628a.o(typeNames, d0Var, i, adapterView, view2, i2, j);
            }
        });
        d0Var.show();
    }

    private void u(int i, View view) {
        final int[] points = LineTipTypeModel.getPoints(i);
        if (points == null || points.length == 0) {
            return;
        }
        Context context = view.getContext();
        String[] strArr = new String[points.length];
        for (int i2 = 0; i2 < points.length; i2++) {
            strArr[i2] = String.valueOf(points[i2]);
        }
        final d0 d0Var = new d0(context);
        d0Var.l(new ArrayAdapter(context, R.layout.new_collect_list_item, strArr));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.g
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i3, long j) {
                this.f6630a.q(points, d0Var, adapterView, view2, i3, j);
            }
        });
        d0Var.I(true);
        d0Var.show();
    }
}
