package cn.mucang.android.jiakaoyi.teachingk2.video;

import androidx.lifecycle.z;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.teachingk2.level.DeviceSettingApi;
import cn.mucang.android.jiakaoyi.teachingk2.model.NavImageTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VideoDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.VideoListApi;
import cn.mucang.jiakaoyi.uilib.api.PrivacyAgreementApi;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.video.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoGuideManager;", "", "()V", "guideList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;", "getGuideList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "videoList", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;", "Lkotlin/collections/ArrayList;", "videoUrl", "Landroidx/lifecycle/MutableLiveData;", "", "getVideoUrl", "()Landroidx/lifecycle/MutableLiveData;", "setVideoUrl", "(Landroidx/lifecycle/MutableLiveData;)V", "getData", "", "user", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "videoSubType", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoGuideManager {
    private static volatile z<String> b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoGuideManager f8723a = new VideoGuideManager();
    private static final ListLiveData<NavImageTipModel> c = new ListLiveData<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ArrayList<VideoDataModel.VideoItem> f8724d = new ArrayList<>();

    private VideoGuideManager() {
    }

    public static final void a(XyUserModel user) {
        Object objM139constructorimpl;
        Object objM139constructorimpl2;
        r.e(user, "user");
        b = new z<>();
        try {
            Result.Companion companion = Result.INSTANCE;
            List<VideoDataModel.VideoItem> listM = new VideoListApi().m();
            ArrayList<VideoDataModel.VideoItem> arrayList = f8724d;
            arrayList.clear();
            arrayList.addAll(listM);
            PrivacyAgreementApi privacyAgreementApi = new PrivacyAgreementApi();
            privacyAgreementApi.q(user.getAuthToken(), user.getXyToken());
            if (!privacyAgreementApi.o(DeviceType.ROBOT.getType(), "yinhe_privacy_teach_video").confirm) {
                for (VideoDataModel.VideoItem videoItem : listM) {
                    if (videoItem.videoSubType == 140) {
                        z<String> zVarC = f8723a.c();
                        if (zVarC != null) {
                            zVarC.l(videoItem.url);
                            break;
                        }
                        break;
                    }
                }
            }
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("拉取使用视频数据失败:", thM142exceptionOrNullimpl.getMessage()));
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            VideoGuideManager videoGuideManager = f8723a;
            videoGuideManager.b().r(false);
            List<NavImageTipModel> listN = new DeviceSettingApi().n();
            if (g.d(listN)) {
                videoGuideManager.b().u(listN);
            }
            objM139constructorimpl2 = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM139constructorimpl2 = Result.m139constructorimpl(k.a(th2));
        }
        Throwable thM142exceptionOrNullimpl2 = Result.m142exceptionOrNullimpl(objM139constructorimpl2);
        if (thM142exceptionOrNullimpl2 != null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("拉取学员引导配置失败:", q0.d(thM142exceptionOrNullimpl2)));
        }
    }

    public final ListLiveData<NavImageTipModel> b() {
        return c;
    }

    public final z<String> c() {
        return b;
    }

    public final String d(int i) {
        for (VideoDataModel.VideoItem videoItem : f8724d) {
            if (i == videoItem.videoSubType) {
                String str = videoItem.url;
                r.d(str, "item.url");
                return str;
            }
        }
        return "";
    }

    public final void e(z<String> zVar) {
        b = zVar;
    }
}
