package cn.mucang.jiakaoyi.uilib.ui.setting;

import android.graphics.Point;
import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bH\u0016J*\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u00062\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u000fH&¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getDefaultVolume", "", "getPermissionClickPoint", "Lkotlin/Pair;", "Landroid/graphics/Point;", "getSetting", "", "", "loadType", "itemList", "Landroidx/lifecycle/MutableLiveData;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsSettingProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsSettingProvider(Bundle args) {
        super(args);
        kotlin.jvm.internal.r.e(args, "args");
    }

    public int getDefaultVolume() {
        return 78;
    }

    public Pair<Point, Point> getPermissionClickPoint() {
        return new Pair<>(new Point(Videoio.CAP_PROP_XI_LENS_FOCUS_DISTANCE, 527), new Point(1480, 570));
    }

    public abstract List<Object> getSetting(int i, androidx.lifecycle.z<List<Object>> zVar);
}
