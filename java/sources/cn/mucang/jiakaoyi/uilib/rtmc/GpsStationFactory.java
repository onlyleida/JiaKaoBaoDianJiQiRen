package cn.mucang.jiakaoyi.uilib.rtmc;

import cn.mucang.jiakaoyi.uilib.rtmc.liufen.LiufenStation;
import cn.mucang.jiakaoyi.uilib.rtmc.self.SelfGpsStation;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationModel;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rtmc.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rtmc/GpsStationFactory;", "", "()V", "newStation", "Lcn/mucang/jiakaoyi/uilib/rtmc/AbsGpsStation;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/rtmc/DiffDataListener;", "stationModel", "Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsStationFactory {
    public final AbsGpsStation a(DiffDataListener diffDataListener, GpsStationModel stationModel) {
        r.e(stationModel, "stationModel");
        byte b = stationModel.station;
        if (b == 2) {
            return new LiufenStation(diffDataListener, stationModel);
        }
        return b == 1 ? new SelfGpsStation(diffDataListener) : new SelfGpsStation(diffDataListener);
    }
}
