package cn.mucang.android.jiakaoyi.teachingk2.level.handler;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserItemData;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.t.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u0017\u0010\u0010\u001a\u00020\b2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/TimeConditionHandler;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;", "time", "", "(I)V", "getTime", "()I", "getPassDesc", "", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "", "timeDesc", "(Ljava/lang/Integer;)Ljava/lang/String;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TimeConditionHandler extends BaseConditionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7284a;

    public TimeConditionHandler(int i) {
        this.f7284a = i;
    }

    private final String d(Integer num) {
        if (num == null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_senconds);
            r.d(strA, "getString(R.string.teachbase_senconds)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{"0"}, 1));
            r.d(str, "java.lang.String.format(format, *args)");
            return str;
        }
        if (num.intValue() < 60) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
            String strA2 = k0.a(R.string.teachbase_senconds);
            r.d(strA2, "getString(R.string.teachbase_senconds)");
            String str2 = String.format(strA2, Arrays.copyOf(new Object[]{num}, 1));
            r.d(str2, "java.lang.String.format(format, *args)");
            return str2;
        }
        if (num.intValue() >= 3600) {
            int iIntValue = num.intValue() / 3600;
            int iIntValue2 = (num.intValue() % 3600) / 60;
            int iIntValue3 = (num.intValue() % 3600) % 60;
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f14671a;
            String strA3 = k0.a(R.string.teachbase_hours_minutes_sencods);
            r.d(strA3, "getString(R.string.teach…se_hours_minutes_sencods)");
            String str3 = String.format(strA3, Arrays.copyOf(new Object[]{Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2), Integer.valueOf(iIntValue3)}, 3));
            r.d(str3, "java.lang.String.format(format, *args)");
            return str3;
        }
        int iIntValue4 = num.intValue() % 60;
        if (iIntValue4 == 0) {
            StringCompanionObject stringCompanionObject4 = StringCompanionObject.f14671a;
            String strA4 = k0.a(R.string.teachbase_minutes);
            r.d(strA4, "getString(R.string.teachbase_minutes)");
            String str4 = String.format(strA4, Arrays.copyOf(new Object[]{Integer.valueOf(num.intValue() / 60)}, 1));
            r.d(str4, "java.lang.String.format(format, *args)");
            return str4;
        }
        StringCompanionObject stringCompanionObject5 = StringCompanionObject.f14671a;
        String strA5 = k0.a(R.string.teachbase_minutes_sencords);
        r.d(strA5, "getString(R.string.teachbase_minutes_sencords)");
        String str5 = String.format(strA5, Arrays.copyOf(new Object[]{Integer.valueOf(num.intValue() / 60), Integer.valueOf(iIntValue4)}, 2));
        r.d(str5, "java.lang.String.format(format, *args)");
        return str5;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String a(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_html4);
        r.d(strA, "getString(R.string.teachbase_html4)");
        Object[] objArr = new Object[1];
        UserItemData data2 = data.getData();
        objArr[0] = d(data2 == null ? null : Integer.valueOf((int) data2.getCostTime()));
        String str = String.format(strA, Arrays.copyOf(objArr, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String b(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        UserItemData data2 = data.getData();
        return d(data2 == null ? null : Integer.valueOf((int) data2.getCostTime()));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public boolean c(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        UserItemData data2 = data.getData();
        return (data2 == null ? BitmapDescriptorFactory.HUE_RED : data2.getCostTime()) >= ((float) (this.f7284a * 60));
    }
}
