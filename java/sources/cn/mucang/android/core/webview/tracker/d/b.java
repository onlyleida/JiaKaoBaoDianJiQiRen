package cn.mucang.android.core.webview.tracker.d;

import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.t;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b extends cn.mucang.android.core.api.a {
    public void b(cn.mucang.android.core.webview.tracker.http.model.a aVar) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MucangNameValuePair("url", aVar.d()));
            arrayList.add(new MucangNameValuePair("fromUrl", aVar.a()));
            arrayList.add(new MucangNameValuePair("i", aVar.b()));
            arrayList.add(new MucangNameValuePair("r", aVar.c()));
            httpPost("/api/open/v3/stat/click.htm", arrayList);
        } catch (Exception e2) {
            t.c("e", e2);
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
