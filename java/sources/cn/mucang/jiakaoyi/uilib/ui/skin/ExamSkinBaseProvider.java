package cn.mucang.jiakaoyi.uilib.ui.skin;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&¨\u0006\b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/skin/ExamSkinBaseProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getSkinList", "", "Lcn/mucang/jiakaoyi/uilib/ui/skin/BaseSkin;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class ExamSkinBaseProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExamSkinBaseProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    public abstract List<BaseSkin> getSkinList();
}
