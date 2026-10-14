package cn.mucang.android.jiakaoyi.speech.provider;

import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.dataprovider.BaseDataProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/provider/AbsInteractionProvider;", "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;", "args", "Landroid/os/Bundle;", "(Landroid/os/Bundle;)V", "getServerKemu", "", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class AbsInteractionProvider extends BaseDataProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsInteractionProvider(Bundle args) {
        super(args);
        r.e(args, "args");
    }

    public abstract String getServerKemu();
}
