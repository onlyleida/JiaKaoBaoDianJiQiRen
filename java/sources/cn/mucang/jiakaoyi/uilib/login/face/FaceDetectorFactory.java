package cn.mucang.jiakaoyi.uilib.login.face;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u0007H&¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;", "", "getDetector", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;", "getMaskDetector", "", "callback", "Lkotlin/Function1;", "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface FaceDetectorFactory {
    void a(Function1<? super IMaskDetector, v> function1);

    IFaceDetector b();
}
