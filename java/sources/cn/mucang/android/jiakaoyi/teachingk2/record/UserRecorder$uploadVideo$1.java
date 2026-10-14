package cn.mucang.android.jiakaoyi.teachingk2.record;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class UserRecorder$uploadVideo$1 extends Lambda implements Function0<v> {
    final /* synthetic */ UserRecordModel $model;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserRecorder$uploadVideo$1(UserRecordModel userRecordModel) {
        super(0);
        this.$model = userRecordModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m63invoke$lambda0(UserRecordModel model, float f2) {
        r.e(model, "$model");
        UserLevelManager.y(model, f2);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ v invoke() {
        invoke2();
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        float t = this.$model.getT();
        UserRecordModel userRecordModel = UserRecorder.f7551f;
        final float t2 = t - (userRecordModel == null ? BitmapDescriptorFactory.HUE_RED : userRecordModel.getT());
        UserRecorder userRecorder = UserRecorder.f7548a;
        UserRecorder.f7551f = null;
        final UserRecordModel userRecordModel2 = this.$model;
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.record.b
            @Override // java.lang.Runnable
            public final void run() {
                UserRecorder$uploadVideo$1.m63invoke$lambda0(userRecordModel2, t2);
            }
        });
    }
}
