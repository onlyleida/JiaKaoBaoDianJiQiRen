package cn.mucang.android.jiakaoyi.framework.dataprovider;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/dataprovider/AppDataProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getKeMu", "", "getLogDeviceNum", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AppDataProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppDataProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    public abstract int getKeMu();

    public String getLogDeviceNum() {
        return null;
    }
}
