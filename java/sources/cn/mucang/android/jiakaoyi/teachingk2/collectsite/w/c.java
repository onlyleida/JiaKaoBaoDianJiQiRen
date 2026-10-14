package cn.mucang.android.jiakaoyi.teachingk2.collectsite.w;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    public c(Activity activity, final String str, String str2, String str3, final cn.mucang.android.jiakaoyi.framework.h.b<PolygonModel> bVar) {
        final Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.dialog__create_item);
        TextView textView = (TextView) dialog.findViewById(R.id.title);
        final EditText editText = (EditText) dialog.findViewById(R.id.input);
        final EditText editText2 = (EditText) dialog.findViewById(R.id.name);
        textView.setText(str2);
        editText.setText(str3);
        dialog.findViewById(R.id.make_sure).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.w.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6970a.c(editText, editText2, str, bVar, dialog, view);
            }
        });
        dialog.show();
    }

    private String a(EditText editText) {
        return editText.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c(EditText editText, EditText editText2, String str, cn.mucang.android.jiakaoyi.framework.h.b bVar, Dialog dialog, View view) {
        String strA = a(editText);
        String strA2 = a(editText2);
        if (strA2.isEmpty()) {
            u.h("名称不能空");
            return;
        }
        if (strA.length() < 10) {
            u.h("描述不能少于10个字");
            return;
        }
        PolygonModel polygonModel = new PolygonModel();
        polygonModel.examSiteId = str;
        polygonModel.desc = strA;
        polygonModel.name = strA2;
        polygonModel.examSiteId = str;
        polygonModel.gpsData = new ArrayList();
        bVar.callback(polygonModel);
        dialog.dismiss();
    }
}
