package cn.mucang.android.core.webview.tracker.d;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.webview.tracker.http.model.Track;
import cn.mucang.android.core.webview.tracker.http.model.TrackerPostModel;
import com.alibaba.fastjson.JSON;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends cn.mucang.android.core.api.a {
    public void b(List<Track> list) throws ApiException, InternalException, HttpException {
        new TrackerPostModel().setData(list);
        httpPostEncrypted("/api/internal/click/statistics.htm", JSON.toJSONString(list));
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return "https://open-res.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#epVJa5N5iKN2dm6PeKN5g4Ju";
    }
}
