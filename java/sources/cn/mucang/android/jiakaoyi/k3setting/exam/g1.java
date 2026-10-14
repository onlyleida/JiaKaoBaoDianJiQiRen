package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExam;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.jiakaoyi.uilib.utils.VoiceTextUtil;
import f.a.a.a.p009n.dialog.SafeDialogFragment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class g1 extends SafeDialogFragment implements DialogInterface.OnKeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LightExam.LightExamCallback f4271a = new a();
    private final cn.mucang.android.jiakaoyi.signal.c.f.a b = new b();
    private List<LightExamModel> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private K3DengGuangStepConfig f4272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<Integer, Deduct> f4273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LightExam.LightExamCallback f4274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.c<Boolean> f4275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LightExam f4276h;
    private MucangImageView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private c m;
    private boolean n;

    class a implements LightExam.LightExamCallback {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onClickClose() {
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFailure(LightExamModel lightExamModel, Deduct deduct) {
            if (g1.this.isDetached() || g1.this.f4274f == null) {
                return;
            }
            g1.this.f4274f.onFailure(lightExamModel, deduct);
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onFinish() {
            if (g1.this.isDetached() || g1.this.f4274f == null) {
                return;
            }
            g1.this.dismiss();
        }

        @Override // cn.mucang.android.jiakaoyi.exam.k3.light.LightExam.LightExamCallback
        public void onStart(LightExamModel lightExamModel) {
            if (g1.this.isDetached() || g1.this.f4274f == null) {
                return;
            }
            g1.this.i.d(lightExamModel.icon, R.drawable.step_icon_dengguang);
            g1.this.j.setText(VoiceTextUtil.f9586a.a(lightExamModel.desc));
            g1.this.k.setText(lightExamModel.standard);
        }
    }

    class b implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            if (g1.this.m != null) {
                g1.this.m.g(eVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c extends RecyclerView.Adapter<d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<Light> f4279a;
        private final Map<Light, Boolean> b;

        /* synthetic */ c(a aVar) {
            this();
        }

        static /* synthetic */ boolean c(Light light, cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
            dVar.d().x = cn.mucang.android.jiakaoyi.signal.d.j.a.f(dVar.d().x, light.lightId, !dVar.d().j(light));
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(d dVar, int i) {
            final Light light = this.f4279a.get(i);
            dVar.f4280a.setImageResource(light.iconRes);
            Boolean bool = this.b.get(light);
            if (bool == null || !bool.booleanValue()) {
                dVar.f4280a.setColorFilter(-6710887);
            } else {
                dVar.f4280a.setColorFilter(-46528);
            }
            if (MucangConfig.v()) {
                dVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.d0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        cn.mucang.android.jiakaoyi.signal.c.d.u(new cn.mucang.android.jiakaoyi.signal.c.d.a() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.e0
                            @Override // cn.mucang.android.jiakaoyi.signal.c.d.a
                            public final boolean a(cn.mucang.android.jiakaoyi.signal.center.model.d dVar2) {
                                return g1.c.c(light, dVar2);
                            }
                        });
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public d onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.exam_light_dialog_item, viewGroup, false));
        }

        public void g(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            boolean z = true;
            for (Light light : this.f4279a) {
                Boolean bool = this.b.get(light);
                boolean z2 = bool != null && bool.booleanValue();
                Light light2 = Light.RearFogLight;
                boolean zJ = (light == light2 || light == Light.FrontFogLight) ? eVar.d().j(light2) || eVar.d().j(Light.FrontFogLight) : eVar.d().j(light);
                if (z2 != zJ) {
                    this.b.put(light, Boolean.valueOf(zJ));
                    z = false;
                }
            }
            if (z) {
                return;
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f4279a.size();
        }

        private c() {
            ArrayList arrayList = new ArrayList();
            this.f4279a = arrayList;
            this.b = new HashMap();
            arrayList.addAll(Arrays.asList(Light.WidthLight, Light.NearLight, Light.FarLight, Light.FrontFogLight, Light.RearFogLight, Light.WarningLight, Light.TurnLeftLight, Light.TurnRightLight));
        }
    }

    private static class d extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f4280a;

        public d(View view) {
            super(view);
            this.f4280a = (ImageView) view.findViewById(R.id.lightIcon);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void B(View view) {
        if (this.k.getVisibility() == 0) {
            this.l.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_show_light_desc));
            this.l.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_exam_show_light, 0, 0, 0);
            this.k.setVisibility(8);
        } else {
            this.l.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_hide_light_desc));
            this.l.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_exam_hide_light, 0, 0, 0);
            this.k.setVisibility(0);
        }
    }

    public static void E(FragmentManager fragmentManager, List<LightExamModel> list, K3DengGuangStepConfig k3DengGuangStepConfig, Map<Integer, Deduct> map, LightExam.LightExamCallback lightExamCallback, cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar, boolean z) {
        g1 g1Var = new g1();
        g1Var.c = list;
        g1Var.f4272d = k3DengGuangStepConfig;
        g1Var.f4273e = map;
        g1Var.f4274f = lightExamCallback;
        g1Var.f4275g = cVar;
        g1Var.n = z;
        g1Var.show(fragmentManager, "LightExamFragment");
    }

    private void G() {
        LightExam lightExam = this.f4276h;
        if (lightExam != null) {
            lightExam.stop();
            this.f4276h = null;
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(View view) {
        LightExam.LightExamCallback lightExamCallback = this.f4274f;
        if (lightExamCallback != null) {
            lightExamCallback.onClickClose();
        }
        G();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(CloseExam closeExam) {
        if (closeExam.getF4236a() == 1) {
            F();
            return;
        }
        if (closeExam.getF4236a() == 3) {
            C();
        } else if (closeExam.getF4236a() == 2) {
            D();
        } else {
            F();
        }
    }

    public void C() {
        LightExam lightExam;
        if (isDetached() || !isAdded() || cn.mucang.android.core.utils.d.d(getActivity()) || (lightExam = this.f4276h) == null) {
            return;
        }
        lightExam.pause();
    }

    public void D() {
        LightExam lightExam;
        if (isDetached() || !isAdded() || cn.mucang.android.core.utils.d.d(getActivity()) || (lightExam = this.f4276h) == null) {
            return;
        }
        lightExam.resume();
    }

    public void F() {
        G();
        dismiss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.exam_light_dialog, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f4273e = null;
        this.f4272d = null;
        this.c = null;
        this.f4275g = null;
        this.f4274f = null;
        G();
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.f4274f.onFinish();
        G();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) (((double) displayMetrics.heightPixels) * 0.57d);
        int i2 = (int) (((double) displayMetrics.widthPixels) * 0.656d);
        if (getDialog() != null && getDialog().getWindow() != null) {
            WindowManager.LayoutParams attributes = getDialog().getWindow().getAttributes();
            attributes.width = i2;
            attributes.height = i;
            getDialog().getWindow().setAttributes(attributes);
        }
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog == null) {
            return;
        }
        getDialog().setCanceledOnTouchOutside(false);
        dialog.setOnKeyListener(this);
        view.findViewById(R.id.close_dialog).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f4282a.x(view2);
            }
        });
        this.k = (TextView) view.findViewById(R.id.examTopicDesc);
        this.j = (TextView) view.findViewById(R.id.examTopicName);
        this.i = (MucangImageView) view.findViewById(R.id.currentLight);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.lightList);
        this.l = (TextView) view.findViewById(R.id.hideTv);
        this.m = new c(null);
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 5));
        recyclerView.setAdapter(this.m);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.b);
        LightExam lightExam = new LightExam(this.c, this.f4272d, this.f4271a, this.f4273e, this.f4275g, this.n);
        this.f4276h = lightExam;
        lightExam.start();
        this.f4274f.onStart(this.c.get(0));
        LiveBus.d(CloseExam.class).h(getViewLifecycleOwner(), new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.f0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f4261a.z((CloseExam) obj);
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f4270a.B(view2);
            }
        });
    }
}
