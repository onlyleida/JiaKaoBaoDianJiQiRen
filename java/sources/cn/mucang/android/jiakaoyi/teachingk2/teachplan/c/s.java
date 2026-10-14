package cn.mucang.android.jiakaoyi.teachingk2.teachplan.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.u;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.TeachProgrammeApi;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.teachplan.TeachPlanListViewModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.car.RealCarSelectActivity;

/* JADX INFO: loaded from: classes4.dex */
public class s {

    static class a extends ArrayAdapter<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f8053a;
        final /* synthetic */ Spinner b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, int i, String[] strArr, String[] strArr2, Spinner spinner) {
            super(context, i, strArr);
            this.f8053a = strArr2;
            this.b = spinner;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = View.inflate(getContext(), R.layout.select_teach_plan_template_item, null);
            }
            ((TextView) view.findViewById(R.id.tv)).setText(this.f8053a[i]);
            ((ImageView) view.findViewById(R.id.check)).setSelected(this.b.getSelectedItemPosition() == i);
            return view;
        }
    }

    static class b implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TeachPlanItemModel f8054a;

        b(TeachPlanItemModel teachPlanItemModel) {
            this.f8054a = teachPlanItemModel;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            this.f8054a.gearType = i;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public static void a(final Activity activity, final long j, final long j2, final TeachPlanListViewModel teachPlanListViewModel) {
        final Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.dialog_del_teach_plan);
        dialog.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.b(activity, j, j2, dialog, teachPlanListViewModel);
            }
        });
        dialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Activity activity, final long j, final long j2, final Dialog dialog, final TeachPlanListViewModel teachPlanListViewModel) {
        new u(activity).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.j
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                s.h(j2, activity, teachPlanListViewModel, j, dialog);
            }
        }, "正在删除...", "删除失败");
    }

    private static void c(final Activity activity, final TeachPlanItemModel teachPlanItemModel, final Dialog dialog, final TeachPlanListViewModel teachPlanListViewModel, final boolean z) {
        new u(activity).h(new u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.o
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws Exception {
                s.i(z, teachPlanItemModel, activity, teachPlanListViewModel, dialog);
            }
        }, "正在执行...", "操作失败");
    }

    public static void d(final Activity activity, final TeachPlanItemModel teachPlanItemModel, final TeachPlanListViewModel teachPlanListViewModel, final boolean z) {
        final TeachPlanItemModel teachPlanItemModelCopy = teachPlanItemModel.copy();
        final Dialog dialog = new Dialog(activity, R.style.jiakaoyi__dialog);
        dialog.setContentView(R.layout.dialog_create_teach_plan);
        String str = "（" + teachPlanItemModel.getVersionText() + "）";
        TextView textView = (TextView) dialog.findViewById(R.id.title);
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "复制方案" : "信息编辑");
        sb.append(str);
        textView.setText(sb.toString());
        final TextView textView2 = (TextView) dialog.findViewById(R.id.select_car_model);
        final EditText editText = (EditText) dialog.findViewById(R.id.name);
        final RadioGroup radioGroup = (RadioGroup) dialog.findViewById(R.id.carTypeRg);
        dialog.findViewById(R.id.editGroup).setVisibility(8);
        e(activity, teachPlanItemModelCopy, dialog);
        editText.setText(teachPlanItemModel.programmeName);
        if (!n0.f(teachPlanItemModel.universalModelName)) {
            radioGroup.check(R.id.singleTypeRb);
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.n
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                s.j(teachPlanItemModelCopy, textView2, teachPlanItemModel, radioGroup2, i);
            }
        });
        textView2.setText(n0.f(teachPlanItemModel.universalModelName) ? "全部车型" : teachPlanItemModel.universalModelName);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.k(radioGroup, activity, textView2, teachPlanItemModelCopy, view);
            }
        });
        dialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                s.m(editText, radioGroup, teachPlanItemModelCopy, teachPlanItemModel, z, activity, dialog, teachPlanListViewModel, view);
            }
        });
        DialogExtensionKt.c(dialog);
        dialog.show();
    }

    private static void e(Activity activity, TeachPlanItemModel teachPlanItemModel, Dialog dialog) {
        Spinner spinner = (Spinner) dialog.findViewById(R.id.select_gear_type_sp);
        String[] strArr = {"全部档位", "手动挡", "自动挡"};
        a aVar = new a(activity, R.layout.template_simple_spinner_item, strArr, strArr, spinner);
        spinner.setOnItemSelectedListener(new b(teachPlanItemModel));
        spinner.setAdapter((SpinnerAdapter) aVar);
        spinner.setSelection(teachPlanItemModel.gearType);
    }

    static /* synthetic */ void h(long j, Activity activity, TeachPlanListViewModel teachPlanListViewModel, long j2, Dialog dialog) throws Exception {
        try {
            boolean zO = new TeachProgrammeApi().o(j);
            if (cn.mucang.android.core.utils.d.d(activity)) {
                return;
            }
            if (zO) {
                cn.mucang.android.core.utils.u.h("删除教学方案成功");
                teachPlanListViewModel.c(j2);
                dialog.dismiss();
            } else {
                cn.mucang.android.core.utils.u.h("删除教学方案失败");
            }
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("删除教学方案失败");
        }
    }

    static /* synthetic */ void i(boolean z, TeachPlanItemModel teachPlanItemModel, Activity activity, TeachPlanListViewModel teachPlanListViewModel, Dialog dialog) throws Exception {
        try {
            boolean zM = z ? new TeachProgrammeApi().m(teachPlanItemModel) : new TeachProgrammeApi().p(teachPlanItemModel);
            if (cn.mucang.android.core.utils.d.d(activity)) {
                return;
            }
            if (!zM) {
                cn.mucang.android.core.utils.u.h("操作失败");
                return;
            }
            cn.mucang.android.core.utils.u.h("操作成功");
            teachPlanListViewModel.c(teachPlanItemModel.examSiteId);
            dialog.dismiss();
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("操作失败");
        }
    }

    static /* synthetic */ void j(TeachPlanItemModel teachPlanItemModel, TextView textView, TeachPlanItemModel teachPlanItemModel2, RadioGroup radioGroup, int i) {
        if (i == R.id.allTypeRb) {
            teachPlanItemModel.universalModelNum = 0;
            teachPlanItemModel.universalModelName = "";
            textView.setText("");
        } else if (i == R.id.singleTypeRb && n0.f(teachPlanItemModel2.universalModelName)) {
            textView.setText("");
        }
    }

    static /* synthetic */ void k(RadioGroup radioGroup, Activity activity, final TextView textView, final TeachPlanItemModel teachPlanItemModel, View view) {
        if (radioGroup.getCheckedRadioButtonId() == R.id.allTypeRb) {
            return;
        }
        RealCarSelectActivity.z(activity, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.k
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                s.n(textView, teachPlanItemModel, (LocalCarModel) obj);
            }
        });
    }

    static /* synthetic */ void m(EditText editText, RadioGroup radioGroup, TeachPlanItemModel teachPlanItemModel, TeachPlanItemModel teachPlanItemModel2, boolean z, Activity activity, Dialog dialog, TeachPlanListViewModel teachPlanListViewModel, View view) {
        String string = editText.getText().toString();
        if (n0.e(string)) {
            cn.mucang.android.core.utils.u.h("方案名称不能为空");
            return;
        }
        if (radioGroup.getCheckedRadioButtonId() == R.id.singleTypeRb && teachPlanItemModel.universalModelNum == 0) {
            cn.mucang.android.core.utils.u.h("请选择车型");
            return;
        }
        teachPlanItemModel.programmeName = string;
        if (!teachPlanItemModel2.equals(teachPlanItemModel) || z) {
            c(activity, teachPlanItemModel, dialog, teachPlanListViewModel, z);
        } else {
            cn.mucang.android.core.utils.u.h("信息没更新");
        }
    }

    static /* synthetic */ void n(TextView textView, TeachPlanItemModel teachPlanItemModel, LocalCarModel localCarModel) {
        if (localCarModel == null || localCarModel.getConfig() == null) {
            return;
        }
        textView.setText(localCarModel.getCarDesc());
        teachPlanItemModel.universalModelName = localCarModel.getCarDesc();
        teachPlanItemModel.universalModelNum = localCarModel.getConfig().getCode();
    }
}
