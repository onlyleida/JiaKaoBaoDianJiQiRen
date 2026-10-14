package cn.mucang.android.jiakaoyi.teachingk2.level.handler;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.t.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0016J\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0016¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/AllPassConditionHandler;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;", "()V", "getPassDesc", "", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AllPassConditionHandler extends BaseConditionHandler {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String a(UserLevelData data, SparseArray<UserLevelData> list) {
        int i;
        int i2;
        r.e(data, "data");
        r.e(list, "list");
        int size = list.size();
        if (size > 0) {
            int i3 = 0;
            i = 0;
            i2 = 0;
            while (true) {
                int i4 = i3 + 1;
                list.keyAt(i3);
                UserLevelData userLevelDataValueAt = list.valueAt(i3);
                if (userLevelDataValueAt.getSubCode() != 0) {
                    i++;
                    if (userLevelDataValueAt.getPass()) {
                        i2++;
                    }
                }
                if (i4 >= size) {
                    break;
                }
                i3 = i4;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_html3);
        r.d(strA, "getString(R.string.teachbase_html3)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(i2), Integer.valueOf(i)}, 2));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String b(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        return "";
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public boolean c(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        if (list.size() == 0) {
            return false;
        }
        int size = list.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                list.keyAt(i);
                UserLevelData userLevelDataValueAt = list.valueAt(i);
                if (userLevelDataValueAt.getSubCode() != 0 && !userLevelDataValueAt.getPass()) {
                    return false;
                }
                if (i2 >= size) {
                    break;
                }
                i = i2;
            }
        }
        return true;
    }
}
