package cn.mucang.android.jiakaoyi.teachingk2.collectsite.w;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.widget.ImageView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    public d(Activity activity, String str) {
        final Dialog dialog = new Dialog(activity);
        dialog.setContentView(R.layout.dialog__link_site);
        f.a.a.b.a.a.i((ImageView) dialog.findViewById(R.id.qrCode), str, 0);
        dialog.findViewById(R.id.make_sure).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collectsite.w.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }
}
