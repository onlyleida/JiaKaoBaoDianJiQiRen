package cn.mucang.android.core.config;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Fragment f2494a;
    private t b;

    public r(Fragment fragment, t tVar) {
        this.f2494a = fragment;
        this.b = tVar;
        cn.mucang.android.core.utils.v.b(fragment);
    }

    private String a() {
        String str;
        KeyEventDispatcher.Component activity = this.f2494a.getActivity();
        if (activity instanceof t) {
            str = ((t) activity).getStatName() + "-";
        } else if (activity != null) {
            str = activity.getClass().getSimpleName() + "-";
        } else {
            str = "";
        }
        String statName = this.b.getStatName();
        if (n0.e(statName)) {
            cn.mucang.android.core.utils.t.d("hadeslee", "此片段没有设置名字:" + str);
            statName = "空";
        }
        return str + statName;
    }

    public void b(Bundle bundle) {
    }

    public void c(Bundle bundle) {
    }

    public View d(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void e() {
    }

    public void f() {
        String strA = a();
        l0.d(this.f2494a.getActivity(), "片段-" + strA, this.b.getProperties());
    }

    public void g() {
        String strA = a();
        l0.f(this.f2494a.getActivity(), "片段-" + strA, this.b.getProperties());
    }

    public void h(Bundle bundle) {
    }

    public void i() {
    }

    public void j() {
    }

    public void k(View view) {
    }

    public void l(Bundle bundle) {
    }
}
