package cn.mucang.android.core.webview.k;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.core.callphone.PhoneCallRequest;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.k;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.webview.core.h;
import cn.mucang.android.framework.webview.R;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.k.a$a, reason: collision with other inner class name */
    class RunnableC0086a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f2788a;
        final /* synthetic */ String b;
        final /* synthetic */ cn.mucang.android.core.webview.j.a c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f2789d;

        RunnableC0086a(h hVar, String str, cn.mucang.android.core.webview.j.a aVar, List list) {
            this.f2788a = hVar;
            this.b = str;
            this.c = aVar;
            this.f2789d = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f(this.f2788a.b().getContext(), this.b, this.c, this.f2789d);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.webview.j.a f2790a;
        final /* synthetic */ String b;
        final /* synthetic */ Dialog c;

        b(cn.mucang.android.core.webview.j.a aVar, String str, Dialog dialog) {
            this.f2790a = aVar;
            this.b = str;
            this.c = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.d(this.f2790a, this.b);
            k.b(this.c);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Dialog f2791a;

        c(Dialog dialog) {
            this.f2791a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k.b(this.f2791a);
        }
    }

    public static void c(Map<String, String> map, h hVar) {
        if (map == null || hVar == null || hVar.b() == null) {
            return;
        }
        cn.mucang.android.core.webview.j.a aVar = new cn.mucang.android.core.webview.j.a(map.get("title"), map.get("group"), map.get("label"), map.get(SocialConstants.PARAM_SOURCE));
        List<cn.mucang.android.core.webview.j.b> listE = e(map.get("phone"));
        if (g.b(listE)) {
            u.h("当前电话为空");
            return;
        }
        String strA = hVar.a();
        if (!n0.e(aVar.f2784a)) {
            u.c(new RunnableC0086a(hVar, strA, aVar, listE));
        } else {
            aVar.f2786e = listE.get(0).b.replace("-", "");
            d(aVar, strA);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(cn.mucang.android.core.webview.j.a aVar, String str) {
        try {
            cn.mucang.android.core.callphone.a.h().d(new PhoneCallRequest(aVar.f2786e, aVar.b, aVar.f2785d, aVar.c));
            f.a.a.a.c.p(str);
        } catch (Exception e2) {
            t.c("Exception", e2);
        }
    }

    private static List<cn.mucang.android.core.webview.j.b> e(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                arrayList.add(new cn.mucang.android.core.webview.j.b(next, jSONObject.optString(next)));
            }
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Context context, String str, cn.mucang.android.core.webview.j.a aVar, List<cn.mucang.android.core.webview.j.b> list) {
        Dialog dialog = new Dialog(context, R.style.core__dialog);
        View viewInflate = View.inflate(MucangConfig.getContext(), R.layout.core__call_phone_dialog, null);
        dialog.setContentView(viewInflate);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.call_phone_main);
        for (cn.mucang.android.core.webview.j.b bVar : list) {
            View viewInflate2 = View.inflate(MucangConfig.getContext(), R.layout.core__white_button, null);
            TextView textView = (TextView) viewInflate2.findViewById(R.id.daijia_dialog_driver);
            TextView textView2 = (TextView) viewInflate2.findViewById(R.id.daijia_dialog_tv);
            textView.setText(aVar.f2784a);
            String str2 = bVar.f2787a + ":" + bVar.b;
            aVar.f2786e = bVar.b.replace("-", "");
            textView2.setText(str2);
            viewInflate2.setOnClickListener(new b(aVar, str, dialog));
            linearLayout.addView(viewInflate2);
        }
        Button button = new Button(MucangConfig.i());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(s0.a(240.0f), -2);
        layoutParams.topMargin = s0.a(20.0f);
        layoutParams.gravity = 17;
        button.setLayoutParams(layoutParams);
        button.setBackgroundResource(R.drawable.core__white_btn);
        button.setTextColor(-13421773);
        button.setText("取消");
        button.setTextSize(0, s0.a(20.0f));
        button.setOnClickListener(new c(dialog));
        linearLayout.addView(button);
        dialog.show();
    }
}
