package cn.mucang.android.jiakaoyi.signal.communicate;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\b\u0010\b\u001a\u00020\tH'J\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getBluetoothName", "", "", "getComProvider", "Lcn/mucang/android/jiakaoyi/signal/communicate/ComProviderWrap;", "useNonOldProtocol", "", "signal_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsSignalProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsSignalProvider(Bundle args) {
        super(args);
        kotlin.jvm.internal.r.e(args, "args");
    }

    public List<String> getBluetoothName() {
        return kotlin.collections.u.j();
    }

    public abstract ComProviderWrap getComProvider();

    public boolean useNonOldProtocol() {
        return false;
    }
}
