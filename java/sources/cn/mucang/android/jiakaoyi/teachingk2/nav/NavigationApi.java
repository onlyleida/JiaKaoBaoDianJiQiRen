package cn.mucang.android.jiakaoyi.teachingk2.nav;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BasePathApi;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.nav.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BasePathApi;", "()V", "getPaths", "", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationPathModel;", TtmlNode.START, "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", TtmlNode.END, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavigationApi extends BasePathApi {
    public final List<NavigationPathModel> m(Pos start, Pos end) throws ApiException, InternalException, HttpException {
        r.e(start, "start");
        r.e(end, "end");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.e(0L))));
        arrayList.add(new MucangNameValuePair("startX", String.valueOf(start.x)));
        arrayList.add(new MucangNameValuePair("startY", String.valueOf(start.y)));
        arrayList.add(new MucangNameValuePair("endX", String.valueOf(end.x)));
        arrayList.add(new MucangNameValuePair("endY", String.valueOf(end.y)));
        return httpPost("/api/open/path/find.htm", arrayList).getDataArray(NavigationPathModel.class);
    }
}
