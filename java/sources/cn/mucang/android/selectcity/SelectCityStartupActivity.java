package cn.mucang.android.selectcity;

import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes4.dex */
public class SelectCityStartupActivity extends f.a.a.e.a.a.a {
    public static final String EXTRA_ADD_AUTO_LOCATION_CITY = "__extra_add_auto_location_city__";
    public static final String EXTRA_CUSTOM_EXIT_TIPS_MESSAGE = "EXTRA_CUSTOM_EXIT_TIPS_MESSAGE";
    public static final String EXTRA_DEFAULT_CITIES = "__extra_default_cities__";
    public static final String EXTRA_IS_AUTO_LOCATE = "__extra_is_auto_locate__";
    public static final String EXTRA_MAX_CITY_COUNT_IN_MULTI_MODE = "__extra_max_city_count_in_multi_mode__";
    public static final String EXTRA_ONLY_SELECT_PROVINCE = "EXTRA_ONLY_SELECT_PROVINCE";
    public static final String EXTRA_ONLY_SELECT_REGION = "EXTRA_ONLY_SELECT_REGION";
    public static final String EXTRA_ONLY_SHOW_CITY = "EXTRA_ONLY_SHOW_CITY";
    public static final String EXTRA_PERMISSION_LOCATION_DESCRIPTION = "EXTRA_PERMISSION_LOCATION_DESCRIPTION";
    public static final String EXTRA_SHOW_LOCATION_DIALOG = "EXTRA_SHOW_LOCATION_DIALOG";
    public static final String EXTRA_SHOW_LOCATION_PANEL = "EXTRA_SHOW_LOCATION_PANEL";
    public static final String EXTRA_SHOW_RECENT_CITIES = "EXTRA_SHOW_RECENT_CITIES";
    public static final String EXTRA_SHOW_SEARCH_BAR = "EXTRA_SHOW_SEARCH_BAR";
    public static final String EXTRA_SHOW_WHOLE_COUNTRY = "EXTRA_SHOW_WHOLE_COUNTRY";
    public static final String EXTRA_SHOW_WHOLE_PROVINCE = "EXTRA_SHOW_WHOLE_PROVINCE";
    public static final String EXTRA_SUPPORT_MULTI_CITY = "__extra_support_mulit_city__";
    public static final String RESULT_CITY_CODE = "RESULT_CITY_CODE";
    public static final String RESULT_CITY_DATA = "RESULT_CITY_DATA";
    public static final String RESULT_CITY_LIST = "RESULT_CITY_LIST";
    public static final String RESULT_CITY_NAME = "RESULT_CITY_NAME";
    public static final String RESULT_PROVINCE_NAME = "RESULT_PROVINCE_NAME";
    public static final String TAG = SelectCityStartupActivity.class.getName();

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择城市";
    }

    @Override // f.a.a.e.a.a.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (v.f8955a == null) {
            if (MucangConfig.v()) {
                cn.mucang.android.core.utils.u.h("请引入选择城市模块");
            }
            cn.mucang.android.core.utils.t.d(TAG, "请引入选择城市模块");
            setResult(0);
            finish();
        }
        f.a.a.e.a.c.b bVarA = v.f8955a.a(this, getIntent().getExtras());
        this.fragment = bVarA;
        replaceFragment(bVarA);
    }
}
