package cn.mucang.android.selectcity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.framework.select.city.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SelectRegionByCityActivity extends cn.mucang.android.core.config.n implements View.OnClickListener, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ListView f8911a;

    private void finishWithLocation(Area area) {
        Intent intent = new Intent();
        intent.putExtra(SelectCityByProvinceActivity.RESULT_CITY, area);
        setResult(-1, intent);
        finish();
    }

    private void g(final String str) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.selectcity.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f8943a.i(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(String str) {
        final List<Area> listN = cn.mucang.android.selectcity.c0.a.n(str);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.selectcity.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f8944a.k(listN);
            }
        });
    }

    public static void l(Activity activity, int i, List<Area> list) {
        Intent intent = new Intent(activity, (Class<?>) SelectRegionByCityActivity.class);
        intent.putParcelableArrayListExtra("EXTRA_REGION_LIST", new ArrayList<>(list));
        activity.startActivityForResult(intent, i);
    }

    public static void m(Fragment fragment, int i, List<Area> list) {
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) SelectRegionByCityActivity.class);
        intent.putParcelableArrayListExtra("EXTRA_REGION_LIST", new ArrayList<>(list));
        fragment.startActivityForResult(intent, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void k(List<Area> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Area> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new cn.mucang.android.selectcity.a0.a(it.next(), -1));
        }
        this.f8911a.setAdapter((ListAdapter) new cn.mucang.android.selectcity.z.b(this, arrayList));
        this.f8911a.setOnItemClickListener(this);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择区县";
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.back) {
            finish();
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.select_region__by_city_activity);
        findViewById(R.id.back).setOnClickListener(this);
        ((TextView) findViewById(R.id.selected_cities_bar_title)).setText("选择区县");
        ListView listView = (ListView) findViewById(R.id.cities);
        this.f8911a = listView;
        listView.setDividerHeight(0);
        String stringExtra = getIntent().getStringExtra("EXTRA_CITY_CODE");
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("EXTRA_REGION_LIST");
        if (cn.mucang.android.core.utils.g.d(parcelableArrayListExtra)) {
            j(parcelableArrayListExtra);
        } else if (n0.g(stringExtra)) {
            g(stringExtra);
        } else {
            setResult(0);
            finish();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        finishWithLocation(((cn.mucang.android.selectcity.a0.a) ((cn.mucang.android.selectcity.z.b) this.f8911a.getAdapter()).getItem(i)).a());
    }
}
