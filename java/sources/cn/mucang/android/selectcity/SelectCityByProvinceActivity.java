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
import cn.mucang.android.framework.select.city.R;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SelectCityByProvinceActivity extends cn.mucang.android.core.config.n implements View.OnClickListener, AdapterView.OnItemClickListener {
    public static final String EXTRA_PROVINCE = "EXTRA_PROVINCE";
    public static final String EXTRA_SELECT_REGION = "EXTRA_SELECT_REGION";
    public static final String EXTRA_SHOW_WHOLE_PROVINCE = "EXTRA_SHOW_WHOLE_PROVINCE";
    private static final int REQUEST_SELECT_REGION = 1;
    public static final String RESULT_CITY = "RESULT_CITY";
    public static final String TAG = SelectCityByProvinceActivity.class.getSimpleName();
    private ListView mCitiesListView;
    private Area mProvince;
    private boolean mShowWholeProvince = true;
    private boolean mNeedSelectRegion = false;

    private void finishWithLocation(Area area) {
        Intent intent = new Intent();
        intent.putExtra(RESULT_CITY, area);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(List list) {
        if (this.mShowWholeProvince) {
            this.mProvince.setAreaName(getResources().getString(R.string.select_city__whole_province_title, this.mProvince.getAreaName()));
            list.add(0, new cn.mucang.android.selectcity.a0.a(this.mProvince, 0));
        }
        this.mCitiesListView.setAdapter((ListAdapter) new cn.mucang.android.selectcity.z.b(this, list));
        this.mCitiesListView.setOnItemClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(List list, Area area) {
        if (cn.mucang.android.core.utils.g.d(list)) {
            SelectRegionByCityActivity.l(this, 1, list);
        } else {
            cn.mucang.android.core.utils.t.a(TAG, "当前城市没有分区");
            finishWithLocation(area);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l() {
        final List<cn.mucang.android.selectcity.a0.a> listG = cn.mucang.android.selectcity.c0.a.g(this.mProvince.getAreaCode());
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.selectcity.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f8928a.h(listG);
            }
        });
    }

    public static void launchForResult(Activity activity, int i, boolean z, Area area, boolean z2) {
        if (z2) {
            z = false;
        }
        Intent intent = new Intent(activity, (Class<?>) SelectCityByProvinceActivity.class);
        intent.putExtra(EXTRA_PROVINCE, area);
        intent.putExtra("EXTRA_SHOW_WHOLE_PROVINCE", z);
        intent.putExtra(EXTRA_SELECT_REGION, z2);
        activity.startActivityForResult(intent, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(final Area area) {
        final List<Area> listN = cn.mucang.android.selectcity.c0.a.n(area.getAreaCode());
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.selectcity.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f8929a.j(listN, area);
            }
        });
    }

    private void pickRegionIfExist(final Area area) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.selectcity.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f8926a.n(area);
            }
        });
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择城市";
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null && i == 1) {
            setResult(i2, intent);
            finish();
        }
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
        setContentView(R.layout.select_city__by_province_activity);
        findViewById(R.id.back).setOnClickListener(this);
        ((TextView) findViewById(R.id.selected_cities_bar_title)).setText("选择城市");
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.mProvince = (Area) extras.getParcelable(EXTRA_PROVINCE);
            this.mShowWholeProvince = extras.getBoolean("EXTRA_SHOW_WHOLE_PROVINCE", this.mShowWholeProvince);
            this.mNeedSelectRegion = extras.getBoolean(EXTRA_SELECT_REGION, this.mNeedSelectRegion);
        }
        ListView listView = (ListView) findViewById(R.id.cities);
        this.mCitiesListView = listView;
        listView.setDividerHeight(0);
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.selectcity.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f8917a.l();
            }
        });
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        cn.mucang.android.selectcity.a0.a aVar = (cn.mucang.android.selectcity.a0.a) ((cn.mucang.android.selectcity.z.b) this.mCitiesListView.getAdapter()).getItem(i);
        if (this.mNeedSelectRegion) {
            pickRegionIfExist(aVar.a());
        } else {
            finishWithLocation(aVar.a());
        }
    }

    public static void launchForResult(Fragment fragment, int i, boolean z, Area area, boolean z2) {
        if (z2) {
            z = false;
        }
        Intent intent = new Intent(fragment.getActivity(), (Class<?>) SelectCityByProvinceActivity.class);
        intent.putExtra(EXTRA_PROVINCE, area);
        intent.putExtra("EXTRA_SHOW_WHOLE_PROVINCE", z);
        intent.putExtra(EXTRA_SELECT_REGION, z2);
        fragment.startActivityForResult(intent, i);
    }
}
