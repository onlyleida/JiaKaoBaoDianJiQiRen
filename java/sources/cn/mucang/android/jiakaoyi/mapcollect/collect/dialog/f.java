package cn.mucang.android.jiakaoyi.mapcollect.collect.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.CarSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.d;

/* JADX INFO: loaded from: classes3.dex */
public class f {
    public f(Activity activity, final d dVar) {
        final Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.hpmap__windshield_dialog);
        TextView textView = (TextView) dialog.findViewById(R.id.title);
        final EditText editText = (EditText) dialog.findViewById(R.id.input);
        textView.setText("采集主天线蘑菇头顶部到地面的距离(单位:厘米)");
        editText.setText(((CarSrcData) dVar.f4847a).mainPosHeight + "");
        dialog.findViewById(R.id.make_sure).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4973a.c(editText, dVar, dialog, view);
            }
        });
        dialog.show();
    }

    private double a(EditText editText) {
        try {
            return Double.parseDouble(editText.getText().toString());
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(EditText editText, d dVar, Dialog dialog, View view) {
        double dA = a(editText);
        if (dA <= 0.0d) {
            u.h("数据不合法");
        } else {
            dVar.A(dA, true);
            dialog.dismiss();
        }
    }
}
