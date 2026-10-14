package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.R;
import f.a.a.a.p009n.dialog.SafeDialogFragment;

/* JADX INFO: loaded from: classes3.dex */
public class d1 extends SafeDialogFragment {
    public static d1 B(FragmentManager fragmentManager) {
        d1 d1Var = new d1();
        d1Var.show(fragmentManager, "AroundLandDialogFragment");
        return d1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(View view) {
        TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_huandao_left), TtsGrade.GlobalTip);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(View view) {
        TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_huandao_right), TtsGrade.GlobalTip);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w(View view) {
        TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_huandao_diaotou), TtsGrade.GlobalTip);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void y(View view) {
        TtsManager.r(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_huandao_zhixing), TtsGrade.GlobalTip);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void A(View view) {
        dismiss();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_around_land_hint, viewGroup, false);
        viewInflate.findViewById(R.id.txt_left).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4304a.s(view);
            }
        });
        viewInflate.findViewById(R.id.txt_right).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4312a.u(view);
            }
        });
        viewInflate.findViewById(R.id.txt_diaotou).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4306a.w(view);
            }
        });
        viewInflate.findViewById(R.id.txt_straight).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4310a.y(view);
            }
        });
        viewInflate.findViewById(R.id.img_close).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4308a.A(view);
            }
        });
        return viewInflate;
    }
}
