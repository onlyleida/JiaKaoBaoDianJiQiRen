package cn.mucang.android.jiakaoyi.teachingk2.level.handler;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserItemData;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.t.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u0016\u0010\r\u001a\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000fH\u0002J\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/PassRateConditionHandler;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;", Constant.LOGIN_ACTIVITY_NUMBER, "", "minRate", "maxRate", "(III)V", "getPassDesc", "", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getRate", "passList", "", "getTrainDesc", "isPass", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PassRateConditionHandler extends BaseConditionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7282a;
    private final int b;

    public PassRateConditionHandler(int i, int i2, int i3) {
        this.f7282a = i;
        this.b = i3;
    }

    private final int d(List<Integer> list) {
        int i = 0;
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                s.t();
                throw null;
            }
            int iIntValue = ((Number) obj).intValue();
            if (i2 < this.f7282a && iIntValue == 1) {
                i++;
            }
            i2 = i3;
        }
        return (i * 100) / this.f7282a;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String a(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        return "";
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String b(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        UserItemData data2 = data.getData();
        List<Integer> trainPassList = data2 == null ? null : data2.getTrainPassList();
        if (trainPassList == null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_recent_train_count);
            r.d(strA, "getString(R.string.teachbase_recent_train_count)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{"0"}, 1));
            r.d(str, "java.lang.String.format(format, *args)");
            return str;
        }
        if (trainPassList.size() < this.f7282a) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
            String strA2 = k0.a(R.string.teachbase_recent_train_count);
            r.d(strA2, "getString(R.string.teachbase_recent_train_count)");
            String str2 = String.format(strA2, Arrays.copyOf(new Object[]{Integer.valueOf(trainPassList.size())}, 1));
            r.d(str2, "java.lang.String.format(format, *args)");
            return str2;
        }
        int iD = d(trainPassList);
        StringCompanionObject stringCompanionObject3 = StringCompanionObject.f14671a;
        String strA3 = k0.a(R.string.teachbase_recent_train_pass_rate);
        r.d(strA3, "getString(R.string.teach…e_recent_train_pass_rate)");
        String str3 = String.format(strA3, Arrays.copyOf(new Object[]{Integer.valueOf(this.f7282a), Integer.valueOf(iD)}, 2));
        r.d(str3, "java.lang.String.format(format, *args)");
        return str3;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public boolean c(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        UserItemData data2 = data.getData();
        List<Integer> trainPassList = data2 == null ? null : data2.getTrainPassList();
        return trainPassList != null && trainPassList.size() >= this.f7282a && d(trainPassList) >= this.b;
    }
}
