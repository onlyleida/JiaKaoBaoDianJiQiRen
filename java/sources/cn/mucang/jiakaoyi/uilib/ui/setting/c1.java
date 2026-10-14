package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import com.mucang.android.jiakaoyi.uilib.R;
import f.a.a.a.p009n.dialog.SafeDialogFragment;

/* JADX INFO: loaded from: classes5.dex */
public class c1 extends SafeDialogFragment {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(View view) {
        dismiss();
    }

    public static void t(FragmentManager fragmentManager) {
        new c1().show(fragmentManager, "WxAccountQrDialog");
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_wx_official_account, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.close_dialog).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f10198a.s(view2);
            }
        });
    }
}
