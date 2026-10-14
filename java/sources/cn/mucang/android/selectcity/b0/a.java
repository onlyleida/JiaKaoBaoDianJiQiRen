package cn.mucang.android.selectcity.b0;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.select.city.R;
import cn.mucang.android.selectcity.CityNameCodeMapping;
import cn.mucang.android.selectcity.z.d;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends f.a.a.e.a.c.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f8919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ListView f8920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private EditText f8921g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<CityNameCodeMapping.MucangPOI> f8918d = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f8922h = new RunnableC0148a();

    /* JADX INFO: renamed from: cn.mucang.android.selectcity.b0.a$a, reason: collision with other inner class name */
    class RunnableC0148a implements Runnable {
        RunnableC0148a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String string = a.this.f8921g.getText().toString();
            ArrayList arrayList = new ArrayList();
            for (CityNameCodeMapping.MucangPOI mucangPOI : a.this.f8918d) {
                if (mucangPOI.getName().contains(string)) {
                    arrayList.add(mucangPOI);
                }
            }
            a.this.f8919e.a(arrayList);
        }
    }

    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            u.e(a.this.f8922h);
            u.d(a.this.f8922h, 300L);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (a.this.isAdded()) {
                Intent intent = new Intent();
                intent.putExtra("selected_city", JSON.toJSON(a.this.f8919e.getItem(i)).toString());
                a.this.getActivity().setResult(-1, intent);
                a.this.getActivity().finish();
            }
        }
    }

    private void A() {
        this.f8918d.addAll(CityNameCodeMapping.c());
        this.f8919e.a(this.f8918d);
    }

    private void B() {
        d dVar = new d();
        this.f8919e = dVar;
        dVar.a(this.f8918d);
        this.f8920f.setAdapter((ListAdapter) this.f8919e);
    }

    private void C() {
        this.f8921g.addTextChangedListener(new b());
        this.f8920f.setOnItemClickListener(new c());
    }

    private void D() {
        this.f8920f = (ListView) r(R.id.list_view);
        this.f8921g = (EditText) r(R.id.edit);
    }

    @Override // f.a.a.e.a.c.b
    protected int s() {
        return R.layout.select__city_list_fragment;
    }

    @Override // f.a.a.e.a.c.b
    protected void t(View view, Bundle bundle) {
        D();
        B();
        A();
        C();
    }
}
