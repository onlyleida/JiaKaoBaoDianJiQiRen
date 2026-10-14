package cn.mucang.android.core.webview.l;

import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.framework.webview.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.fragment.app.d f2802a;
    private String b;
    private e c;

    public d(androidx.fragment.app.d dVar) {
        this.f2802a = dVar;
    }

    private List<String> a() {
        if (n0.e(this.b)) {
            this.b = "refresh,copy";
        }
        ArrayList arrayList = new ArrayList();
        for (String str : this.b.split(",")) {
            if (n0.g(str)) {
                arrayList.add(str.trim());
            }
        }
        return arrayList;
    }

    private View b(boolean z, boolean z2, final c cVar) {
        if (!z && !z2) {
            return null;
        }
        View viewInflate = View.inflate(MucangConfig.getContext(), R.layout.core__h5_view_share_copy_refresh, null);
        if (z) {
            viewInflate.findViewById(R.id.btn_copy).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.webview.l.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2799a.d(cVar, view);
                }
            });
        } else {
            viewInflate.findViewById(R.id.btn_copy).setVisibility(8);
        }
        if (z2) {
            viewInflate.findViewById(R.id.btn_refresh).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.webview.l.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2800a.f(cVar, view);
                }
            });
        } else {
            viewInflate.findViewById(R.id.btn_refresh).setVisibility(8);
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d(c cVar, View view) {
        e eVar = this.c;
        if (eVar != null) {
            eVar.b();
        }
        cVar.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f(c cVar, View view) {
        e eVar = this.c;
        if (eVar != null) {
            eVar.a();
        }
        cVar.dismiss();
    }

    public d g(String str) {
        this.b = str;
        return this;
    }

    public d h(e eVar) {
        this.c = eVar;
        return this;
    }

    public void i() {
        List<String> listA = a();
        c cVar = new c();
        cVar.t(this.f2802a, b(listA.contains(MenuOptions.COPY), listA.contains(MenuOptions.REFRESH), cVar));
    }
}
