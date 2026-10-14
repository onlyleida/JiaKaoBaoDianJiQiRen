package cn.mucang.android.jiakaoyi.teachingk2.collect.render.form;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.form.UnityShowLine;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.LineTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<LineTipModel> f6639a;
    private final LinearLayout b;
    private final cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f6640d;

    class a extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LineTipModel f6641a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m mVar, LineTipModel lineTipModel) {
            super(null);
            this.f6641a = lineTipModel;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                this.f6641a.onTime = Integer.parseInt(editable.toString());
                p0.a();
            } catch (Exception unused) {
                u.h("请正确填写时间");
            }
        }
    }

    class b extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LineTipModel f6642a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(m mVar, LineTipModel lineTipModel) {
            super(null);
            this.f6642a = lineTipModel;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                this.f6642a.offTime = Integer.parseInt(editable.toString());
                p0.a();
            } catch (Exception unused) {
                u.h("请正确填写时间");
            }
        }
    }

    class c extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LineTipModel f6643a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(m mVar, LineTipModel lineTipModel) {
            super(null);
            this.f6643a = lineTipModel;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                this.f6643a.duration = Integer.parseInt(editable.toString());
                p0.a();
            } catch (Exception unused) {
                u.h("请正确填写时间");
            }
        }
    }

    private static class d implements TextWatcher {
        private d() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    public m(LinearLayout linearLayout, List<LineTipModel> list, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar2) {
        this.f6639a = list;
        this.b = linearLayout;
        this.c = bVar2;
        this.f6640d = bVar;
    }

    private Pos b(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, CarPos carPos) {
        return cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar).a(carPos.center);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(View view, LineTipModel lineTipModel, View view2) {
        this.b.removeView(view);
        cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar = this.c;
        if (bVar != null) {
            bVar.callback(lineTipModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(LineTipModel lineTipModel, TextView textView, TextView textView2, View view) {
        n(lineTipModel, this.f6640d);
        textView.setText(((int) lineTipModel.center.x) + "," + ((int) lineTipModel.center.y));
        textView2.setText(String.valueOf(lineTipModel.degree));
        p0.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(View view, LineTipModel lineTipModel, View view2) {
        this.b.removeView(view);
        cn.mucang.android.jiakaoyi.framework.h.b<LineTipModel> bVar = this.c;
        if (bVar != null) {
            bVar.callback(lineTipModel);
        }
    }

    private void j(LineTipModel lineTipModel, View view) {
        EditText editText = (EditText) view.findViewById(R.id.onTimeEt);
        editText.setText(String.valueOf(lineTipModel.onTime));
        editText.addTextChangedListener(new a(this, lineTipModel));
        EditText editText2 = (EditText) view.findViewById(R.id.offTimeEt);
        editText2.setText(String.valueOf(lineTipModel.offTime));
        editText2.addTextChangedListener(new b(this, lineTipModel));
        EditText editText3 = (EditText) view.findViewById(R.id.displayTimeEt);
        editText3.setText(String.valueOf(lineTipModel.duration));
        editText3.addTextChangedListener(new c(this, lineTipModel));
    }

    @SuppressLint({"SetTextI18n"})
    private void k(final LineTipModel lineTipModel, final View view) {
        view.findViewById(R.id.deleteIv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6635a.d(view, lineTipModel, view2);
            }
        });
        final TextView textView = (TextView) view.findViewById(R.id.posTv);
        final TextView textView2 = (TextView) view.findViewById(R.id.degreeTv);
        if (lineTipModel.center == null) {
            lineTipModel.center = new Pos();
        }
        textView.setText(((int) lineTipModel.center.x) + "," + ((int) lineTipModel.center.y));
        textView2.setText(String.valueOf(lineTipModel.degree));
        view.findViewById(R.id.refresh).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6633a.f(lineTipModel, textView, textView2, view2);
            }
        });
        j(lineTipModel, view);
    }

    private void l(final LineTipModel lineTipModel, final View view, String str) {
        ((TextView) view.findViewById(R.id.titleTv)).setText(str);
        view.findViewById(R.id.deleteIv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.form.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f6632a.h(view, lineTipModel, view2);
            }
        });
        j(lineTipModel, view);
    }

    private void n(LineTipModel lineTipModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        CarPos carPosC;
        if (bVar == null || (carPosC = cn.mucang.android.jiakaoyi.signal.c.d.t().c()) == null) {
            return;
        }
        if ((bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) || (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b)) {
            lineTipModel.center = new Pos(b(bVar, carPosC));
            SparseArray<Pos> sparseArrayJ = bVar.j();
            int i = (sparseArrayJ.get(4).vectorTo(sparseArrayJ.get(3)).cross(sparseArrayJ.get(3).vectorTo(sparseArrayJ.get(6))) > 0.0d ? 1 : (sparseArrayJ.get(4).vectorTo(sparseArrayJ.get(3)).cross(sparseArrayJ.get(3).vectorTo(sparseArrayJ.get(6))) == 0.0d ? 0 : -1)) > 0 ? 1 : -1;
            t.h("Debug129", carPosC.degree + "");
            lineTipModel.degree = (int) (((float) i) * cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (((double) cn.mucang.android.jiakaoyi.signal.utils.d.c((float) carPosC.degree)) - Math.toDegrees(sparseArrayJ.get(4).angleTo(sparseArrayJ.get(3))))));
        }
    }

    public void a(LineTipModel lineTipModel, boolean z) {
        View viewInflate;
        if (lineTipModel == null) {
            return;
        }
        int i = lineTipModel.lineType;
        if (i == 1) {
            viewInflate = LayoutInflater.from(this.b.getContext()).inflate(R.layout.layout_teach_form_line_tip_frame_item, (ViewGroup) this.b, false);
            k(lineTipModel, viewInflate);
        } else {
            String str = "";
            if (i == 2) {
                UnityShowLine unityShowLineFind = UnityShowLine.find(lineTipModel.objectName);
                if (unityShowLineFind != null) {
                    str = "线段：" + unityShowLineFind.name;
                }
            } else if (i == 3) {
                str = "点：" + lineTipModel.pointIndex;
            } else if (i == 4) {
                str = "区域：" + lineTipModel.getIndexDesc();
            } else if (i == 5) {
                str = "角：" + lineTipModel.getIndexDesc();
            }
            viewInflate = LayoutInflater.from(this.b.getContext()).inflate(R.layout.layout_teach_form_line_tip_title_item, (ViewGroup) this.b, false);
            l(lineTipModel, viewInflate, str);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (z) {
            this.b.addView(viewInflate, 0, layoutParams);
        } else {
            this.b.addView(viewInflate, layoutParams);
        }
    }

    public void i() {
        this.b.removeAllViews();
        if (cn.mucang.android.core.utils.g.b(this.f6639a)) {
            return;
        }
        Iterator<LineTipModel> it = this.f6639a.iterator();
        while (it.hasNext()) {
            a(it.next(), false);
        }
    }

    public void m(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        this.f6640d = bVar;
    }
}
