package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.SpinnerAdapter;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.TypeSpinnerAdapter;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.DialogRouteMoveBrakePointBinding;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class c1 extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b<Gps> f4564a;
    private Gps c;
    private boolean b = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4565d = BitmapDescriptorFactory.HUE_RED;

    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                c1.this.b = true;
            } else {
                c1.this.b = false;
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(DialogRouteMoveBrakePointBinding dialogRouteMoveBrakePointBinding, View view) {
        Integer numF = y.f(dialogRouteMoveBrakePointBinding.etDistance.getText().toString().trim());
        if (numF == null || numF.intValue() <= 0) {
            u.h("输入值无效");
            return;
        }
        float fD = d.d(this.b ? this.f4565d : this.f4565d + 180.0f);
        cn.mucang.android.jiakaoyi.signal.i.b bVar = new cn.mucang.android.jiakaoyi.signal.i.b(this.c);
        Pos posA = bVar.a(this.c);
        double d2 = (((double) fD) * 3.141592653589793d) / 180.0d;
        this.f4564a.callback(bVar.b(new Pos((Math.cos(d2) * ((double) numF.intValue()) * 100.0d) + posA.x, (Math.sin(d2) * ((double) numF.intValue()) * 100.0d) + posA.y)));
        dismiss();
    }

    public static void w(FragmentManager fragmentManager, Gps gps, float f2, b<Gps> bVar) {
        c1 c1Var = new c1();
        c1Var.c = gps;
        c1Var.f4565d = f2;
        c1Var.f4564a = bVar;
        c1Var.show(fragmentManager, "ExamModeDialog");
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final DialogRouteMoveBrakePointBinding dialogRouteMoveBrakePointBindingInflate = DialogRouteMoveBrakePointBinding.inflate(layoutInflater, viewGroup, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add("向前移动");
        arrayList.add("向后移动");
        TypeSpinnerAdapter typeSpinnerAdapter = new TypeSpinnerAdapter(getContext(), android.R.layout.simple_spinner_item, arrayList);
        typeSpinnerAdapter.setDropDownViewResource(R.layout.k3_common_spinner_dropdown_item);
        dialogRouteMoveBrakePointBindingInflate.spinner.setAdapter((SpinnerAdapter) typeSpinnerAdapter);
        dialogRouteMoveBrakePointBindingInflate.spinner.setOnItemSelectedListener(new a());
        dialogRouteMoveBrakePointBindingInflate.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4582a.t(view);
            }
        });
        dialogRouteMoveBrakePointBindingInflate.tvConfirm.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4584a.v(dialogRouteMoveBrakePointBindingInflate, view);
            }
        });
        return dialogRouteMoveBrakePointBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        dialog.getWindow().setLayout(-1, -1);
        dialog.getWindow().addFlags(1024);
        dialog.setCanceledOnTouchOutside(false);
    }
}
