package cn.mucang.android.jiakaoyi.mapcollect.collect.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.widget.EditText;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.CarSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.d;

/* JADX INFO: loaded from: classes3.dex */
public class i {
    public i(Activity activity, final d dVar) {
        final Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.hpmap__offset_dialog);
        final EditText editText = (EditText) dialog.findViewById(R.id.left_front);
        final EditText editText2 = (EditText) dialog.findViewById(R.id.left_back);
        final EditText editText3 = (EditText) dialog.findViewById(R.id.right_front);
        final EditText editText4 = (EditText) dialog.findViewById(R.id.right_back);
        final EditText editText5 = (EditText) dialog.findViewById(R.id.left_front_width);
        final EditText editText6 = (EditText) dialog.findViewById(R.id.left_back_width);
        final EditText editText7 = (EditText) dialog.findViewById(R.id.right_front_width);
        final EditText editText8 = (EditText) dialog.findViewById(R.id.right_back_width);
        editText.setText(((CarSrcData) dVar.f4847a).leftFrontOffset + "");
        editText2.setText(((CarSrcData) dVar.f4847a).leftBackOffset + "");
        editText3.setText(((CarSrcData) dVar.f4847a).rightFrontOffset + "");
        editText4.setText(((CarSrcData) dVar.f4847a).rightBackOffset + "");
        editText5.setText(((CarSrcData) dVar.f4847a).leftFrontWidth + "");
        editText6.setText(((CarSrcData) dVar.f4847a).leftBackWidth + "");
        editText7.setText(((CarSrcData) dVar.f4847a).rightFrontWidth + "");
        editText8.setText(((CarSrcData) dVar.f4847a).rightBackWidth + "");
        dialog.findViewById(R.id.make_sure).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.y0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4977a.c(dVar, editText2, editText, editText3, editText4, editText6, editText5, editText7, editText8, dialog, view);
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
    public /* synthetic */ void c(d dVar, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, EditText editText7, EditText editText8, Dialog dialog, View view) {
        dVar.u(a(editText));
        dVar.w(a(editText2));
        dVar.E(a(editText3));
        dVar.C(a(editText4));
        dVar.v(a(editText5));
        dVar.x(a(editText6));
        dVar.F(a(editText7));
        dVar.D(a(editText8));
        dialog.dismiss();
    }
}
