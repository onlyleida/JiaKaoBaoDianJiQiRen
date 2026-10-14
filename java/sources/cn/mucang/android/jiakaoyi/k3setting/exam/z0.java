package cn.mucang.android.jiakaoyi.k3setting.exam;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import f.a.a.a.p009n.dialog.SafeDialogFragment;

/* JADX INFO: loaded from: classes3.dex */
public class z0 extends SafeDialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f4342a;
    private cn.mucang.android.jiakaoyi.framework.h.b<Boolean> b;
    private int c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SafeRunnable f4343d = new SafeRunnable(MucangConfig.i(), new a());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (z0.this.getDialog() == null || !z0.this.getDialog().isShowing()) {
                return;
            }
            z0.s(z0.this);
            if (z0.this.c <= 0) {
                z0.this.v(false);
            } else {
                z0.this.f4342a.setText(String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_count_down_dialog_msg), Integer.valueOf(z0.this.c)));
                cn.mucang.android.core.utils.u.d(z0.this.f4343d, 1000L);
            }
        }
    }

    public static z0 A(FragmentManager fragmentManager, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        z0 z0Var = new z0();
        z0Var.b = bVar;
        z0Var.show(fragmentManager, "ChaocheHintDialogFragment");
        return z0Var;
    }

    static /* synthetic */ int s(z0 z0Var) {
        int i = z0Var.c;
        z0Var.c = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(boolean z) {
        cn.mucang.android.core.utils.u.e(this.f4343d);
        this.b.callback(Boolean.valueOf(z));
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(View view) {
        v(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(View view) {
        v(true);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_chaoche_dao_hint, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_time);
        this.f4342a = textView;
        textView.setText(String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.k3setting_count_down_dialog_msg), Integer.valueOf(this.c)));
        cn.mucang.android.core.utils.u.d(this.f4343d, 1000L);
        viewInflate.findViewById(R.id.txt_buzai).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4248a.x(view);
            }
        });
        viewInflate.findViewById(R.id.txt_zai).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.exam.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4250a.z(view);
            }
        });
        return viewInflate;
    }
}
