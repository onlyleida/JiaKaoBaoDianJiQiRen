package cn.mucang.android.jiakaoyi.mapcollect.collect.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.CarSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.d;

/* JADX INFO: loaded from: classes3.dex */
public class j {
    public j(Activity activity, final d dVar, final boolean z) {
        final Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.hpmap__windshield_dialog);
        TextView textView = (TextView) dialog.findViewById(R.id.title);
        final EditText editText = (EditText) dialog.findViewById(R.id.input);
        if (z) {
            textView.setText("设置前天线距离前挡风玻璃的距离(单位:厘米)");
            editText.setText(((CarSrcData) dVar.f4847a).frontDistance + "");
        } else {
            textView.setText("设置主天线距离后挡风玻璃的距离(单位:厘米)");
            editText.setText(((CarSrcData) dVar.f4847a).backDistance + "");
        }
        dialog.findViewById(R.id.make_sure).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y0.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4983a.c(editText, z, dVar, dialog, view);
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
    public /* synthetic */ void c(EditText editText, boolean z, d dVar, Dialog dialog, View view) {
        double dA = a(editText);
        if (z) {
            dVar.t(dA);
        } else {
            dVar.s(dA);
        }
        dialog.dismiss();
    }
}
