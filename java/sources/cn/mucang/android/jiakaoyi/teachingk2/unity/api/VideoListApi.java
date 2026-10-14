package cn.mucang.android.jiakaoyi.teachingk2.unity.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.utils.a;
import cn.mucang.android.jiakaoyi.signal.utils.f;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VideoDataModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.b1.d.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/api/VideoListApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getVideoList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoListApi extends BaseDeviceManagerApi {
    public final List<VideoDataModel.VideoItem> m() throws ApiException, InternalException, HttpException {
        CarItemModel config;
        StringBuilder sb = new StringBuilder();
        sb.append("/api/open/video/list.htm?carType=");
        LocalCarModel localCarModelB = RealCarSelectManager.b();
        Integer numValueOf = null;
        if (localCarModelB != null && (config = localCarModelB.getConfig()) != null) {
            numValueOf = Integer.valueOf(config.getCode());
        }
        sb.append(numValueOf);
        sb.append("&gearType=");
        sb.append(f.a());
        sb.append("&gearPosition=");
        sb.append(a.a());
        List<VideoDataModel.VideoItem> dataArray = httpGet(sb.toString()).getDataArray(VideoDataModel.VideoItem.class);
        r.d(dataArray, "httpGet(\n            \"/a…el.VideoItem::class.java)");
        return dataArray;
    }
}
