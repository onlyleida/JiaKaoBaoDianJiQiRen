package cn.mucang.android.jiakaoyi.teachingk2.teachplan.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.TeachProgrammeApi;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.teachplan.TeachPlanListViewModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class r {

    static class a extends ArrayAdapter<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f8046a;
        final /* synthetic */ Spinner b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, int i, String[] strArr, String[] strArr2, Spinner spinner) {
            super(context, i, strArr);
            this.f8046a = strArr2;
            this.b = spinner;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(getContext(), R.layout.select_teach_plan_template_item, null);
            }
            ((TextView) view.findViewById(R.id.tv)).setText(this.f8046a[i]);
            ((ImageView) view.findViewById(R.id.check)).setSelected(this.b.getSelectedItemPosition() == i);
            return view;
        }
    }

    static class b implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f8047a;

        b(e eVar) {
            this.f8047a = eVar;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            this.f8047a.f8052e = i;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    static class c extends ArrayAdapter<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f8048a;
        final /* synthetic */ Spinner b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i, String[] strArr, String[] strArr2, Spinner spinner) {
            super(context, i, strArr);
            this.f8048a = strArr2;
            this.b = spinner;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(getContext(), R.layout.select_teach_plan_template_item, null);
            }
            ((TextView) view.findViewById(R.id.tv)).setText(this.f8048a[i]);
            ((ImageView) view.findViewById(R.id.check)).setSelected(this.b.getSelectedItemPosition() == i);
            return view;
        }
    }

    static class d implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f8049a;
        final /* synthetic */ List b;

        d(e eVar, List list) {
            this.f8049a = eVar;
            this.b = list;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                this.f8049a.f8051d = 0L;
            } else {
                this.f8049a.f8051d = ((TeachPlanItemModel) this.b.get(i - 1)).id;
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f8050a;
        String b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f8051d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f8052e;

        private e() {
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    public static void a(final Activity activity, final long j, final TeachPlanListViewModel teachPlanListViewModel) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.f
            @Override // java.lang.Runnable
            public final void run() {
                r.f(activity, j, teachPlanListViewModel);
            }
        });
    }

    private static void b(final Activity activity, final long j, final TeachPlanListViewModel teachPlanListViewModel, final Dialog dialog, final e eVar) {
        new u(activity).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.g
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                r.g(eVar, j, activity, dialog, teachPlanListViewModel);
            }
        }, "正在创建...", "创建失败");
    }

    private static boolean c(e eVar, long j) throws ApiException, InternalException, HttpException {
        return new TeachProgrammeApi().n(eVar.c, eVar.f8050a, eVar.b, j, eVar.f8051d, eVar.f8052e);
    }

    private static void d(Activity activity, e eVar, Dialog dialog) {
        Spinner spinner = (Spinner) dialog.findViewById(R.id.select_gear_type_sp);
        String[] strArr = {"全部档位", "手动挡", "自动挡"};
        a aVar = new a(activity, R.layout.template_simple_spinner_item, strArr, strArr, spinner);
        spinner.setOnItemSelectedListener(new b(eVar));
        spinner.setAdapter((SpinnerAdapter) aVar);
    }

    private static void e(Activity activity, List<TeachPlanItemModel> list, e eVar, Dialog dialog) {
        Spinner spinner = (Spinner) dialog.findViewById(R.id.select_template);
        View viewFindViewById = dialog.findViewById(R.id.head_select_template);
        if (cn.mucang.android.core.utils.g.b(list)) {
            spinner.setVisibility(8);
            viewFindViewById.setVisibility(8);
        } else {
            String[] strArrO = o(list);
            c cVar = new c(activity, R.layout.template_simple_spinner_item, strArrO, strArrO, spinner);
            spinner.setOnItemSelectedListener(new d(eVar, list));
            spinner.setAdapter((SpinnerAdapter) cVar);
        }
    }

    static /* synthetic */ void f(final Activity activity, final long j, final TeachPlanListViewModel teachPlanListViewModel) {
        try {
            final List<TeachPlanItemModel> listN = new cn.mucang.android.jiakaoyi.teachingk2.teachplan.b.b().n();
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.h
                @Override // java.lang.Runnable
                public final void run() {
                    r.n(activity, j, listN, teachPlanListViewModel);
                }
            });
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("获取创建信息失败");
        }
    }

    static /* synthetic */ void g(e eVar, long j, Activity activity, Dialog dialog, TeachPlanListViewModel teachPlanListViewModel) throws Exception {
        boolean zC = c(eVar, j);
        if (cn.mucang.android.core.utils.d.d(activity)) {
            return;
        }
        if (!zC) {
            cn.mucang.android.core.utils.u.h("创建教学方案失败");
            return;
        }
        cn.mucang.android.core.utils.u.h("创建教学方案成功");
        dialog.dismiss();
        teachPlanListViewModel.c(j);
    }

    static /* synthetic */ void i(TextView textView, e eVar, LocalCarModel localCarModel) {
        if (localCarModel == null || localCarModel.getConfig() == null) {
            return;
        }
        textView.setText(localCarModel.getCarDesc());
        eVar.b = localCarModel.getCarDesc();
        eVar.f8050a = localCarModel.getConfig().getCode();
    }

    static /* synthetic */ void j(e eVar, TextView textView, RadioGroup radioGroup, int i) {
        if (i == R.id.allTypeRb) {
            eVar.f8050a = 0;
            eVar.b = "";
            textView.setText("");
        }
    }

    static /* synthetic */ void k(RadioGroup radioGroup, Activity activity, final TextView textView, final e eVar, View view) {
        if (radioGroup.getCheckedRadioButtonId() == R.id.allTypeRb) {
            return;
        }
        RealCarSelectActivity.z(activity, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.b
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                r.i(textView, eVar, (LocalCarModel) obj);
            }
        });
    }

    static /* synthetic */ void l(TextView textView, RadioGroup radioGroup, e eVar, Activity activity, long j, TeachPlanListViewModel teachPlanListViewModel, Dialog dialog, View view) {
        String string = textView.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            cn.mucang.android.core.utils.u.h("请输入方案名称");
        } else if (radioGroup.getCheckedRadioButtonId() == R.id.singleTypeRb && eVar.f8050a == 0) {
            cn.mucang.android.core.utils.u.h("请选择车型");
        } else {
            eVar.c = string;
            b(activity, j, teachPlanListViewModel, dialog, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(final Activity activity, final long j, List<TeachPlanItemModel> list, final TeachPlanListViewModel teachPlanListViewModel) {
        final e eVar = new e(null);
        final Dialog dialog = new Dialog(activity, R.style.jiakaoyi__dialog);
        dialog.setContentView(R.layout.dialog_create_teach_plan);
        final TextView textView = (TextView) dialog.findViewById(R.id.name);
        final TextView textView2 = (TextView) dialog.findViewById(R.id.select_car_model);
        final RadioGroup radioGroup = (RadioGroup) dialog.findViewById(R.id.carTypeRg);
        d(activity, eVar, dialog);
        e(activity, list, eVar, dialog);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.c
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                r.j(eVar, textView2, radioGroup2, i);
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.k(radioGroup, activity, textView2, eVar, view);
            }
        });
        dialog.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.l(textView, radioGroup, eVar, activity, j, teachPlanListViewModel, dialog, view);
            }
        });
        dialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        DialogExtensionKt.c(dialog);
        dialog.show();
    }

    private static String[] o(List<TeachPlanItemModel> list) {
        String[] strArr = new String[list.size() + 1];
        strArr[0] = "不选择模块";
        for (int i = 1; i <= list.size(); i++) {
            strArr[i] = list.get(i - 1).programmeName;
        }
        return strArr;
    }
}
