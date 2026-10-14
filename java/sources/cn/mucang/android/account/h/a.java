package cn.mucang.android.account.h;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f2168a;
    private cn.mucang.android.account.api.data.a b;

    /* JADX INFO: renamed from: cn.mucang.android.account.h.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0057a implements View.OnClickListener {
        ViewOnClickListenerC0057a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.mucang.android.account.utils.a.onEvent("实名认证-确认提交信息");
            if (a.this.f2168a != null) {
                a.this.f2168a.a();
            }
            a.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.dismiss();
        }
    }

    public interface c {
        void a();
    }

    private void s(View view) {
        TextView textView = (TextView) view.findViewById(R.id.real_name);
        TextView textView2 = (TextView) view.findViewById(R.id.card_number);
        textView.setText(this.b.b() + "");
        textView2.setText(this.b.a() + "");
        Button button = (Button) view.findViewById(R.id.ok_btn);
        Button button2 = (Button) view.findViewById(R.id.cancel_btn);
        button.setOnClickListener(new ViewOnClickListenerC0057a());
        button2.setOnClickListener(new b());
    }

    public static void t(FragmentManager fragmentManager, cn.mucang.android.account.api.data.a aVar, c cVar) {
        if (aVar == null) {
            return;
        }
        a aVar2 = new a();
        aVar2.b = aVar;
        aVar2.f2168a = cVar;
        aVar2.show(fragmentManager, (String) null);
    }

    @Override // androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(getContext(), R.style.Account__Dialog);
        View viewInflate = View.inflate(getContext(), R.layout.account__dialog_auth_real_name_confirm, null);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        s(viewInflate);
        return dialog;
    }
}
