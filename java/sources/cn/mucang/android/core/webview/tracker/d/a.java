package cn.mucang.android.core.webview.tracker.d;

import cn.mucang.android.core.utils.t;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a extends cn.mucang.android.core.api.cache.b {
    public List<String> b() {
        try {
            return httpGet("/api/open/v3/stat/url-list.htm").getDataArray(String.class);
        } catch (Exception e2) {
            t.c("e", e2);
            return null;
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://789.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "advert.mucang.tech";
    }
}
