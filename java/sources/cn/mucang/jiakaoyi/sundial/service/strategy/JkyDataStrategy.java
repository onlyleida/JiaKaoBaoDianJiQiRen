package cn.mucang.jiakaoyi.sundial.service.strategy;

import android.content.Context;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.data.gnss.BaseDataStrategy;
import cn.mucang.sundial.android.tcp.data.gnss.DataCallBack;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.service.strategy.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/service/strategy/JkyDataStrategy;", "Lcn/mucang/sundial/android/tcp/data/gnss/BaseDataStrategy;", "()V", "sendCarModel", "", "carModel", "Lcn/mucang/sundial/android/model/CarModel;", TtmlNode.START, "p0", "Landroid/content/Context;", "stop", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkyDataStrategy extends BaseDataStrategy {
    public final void a(CarModel carModel) {
        r.e(carModel, "carModel");
        DataCallBack dataCallBack = this.dataCallBack;
        if (dataCallBack == null) {
            return;
        }
        dataCallBack.onResult(carModel);
    }

    @Override // cn.mucang.sundial.android.tcp.data.gnss.DataStrategy
    public void start(Context p0) {
    }

    @Override // cn.mucang.sundial.android.tcp.data.gnss.DataStrategy
    public void stop() {
    }
}
