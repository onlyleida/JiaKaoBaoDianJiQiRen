package cn.mucang.android.jiakaoyi.teachingk2.level.handler;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.t.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0016J\u001e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0016J\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/SinglePassConditionHandler;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;", "passId", "", "(I)V", "getPassDesc", "", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SinglePassConditionHandler extends BaseConditionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7283a;

    public SinglePassConditionHandler(int i) {
        this.f7283a = i;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public String a(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        int size = list.size();
        if (size <= 0) {
            return "";
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            list.keyAt(i);
            UserLevelData userLevelDataValueAt = list.valueAt(i);
            if (userLevelDataValueAt.getSubCode() == this.f7283a) {
                String name = userLevelDataValueAt.getName();
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA = k0.a(R.string.teachbase_pass);
                r.d(strA, "getString(R.string.teachbase_pass)");
                String str = String.format(strA, Arrays.copyOf(new Object[0], 0));
                r.d(str, "java.lang.String.format(format, *args)");
                return r.m(name, str);
            }
            if (i2 >= size) {
                return "";
            }
            i = i2;
        }
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
        int size = list.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                list.keyAt(i);
                UserLevelData userLevelDataValueAt = list.valueAt(i);
                if (userLevelDataValueAt.getSubCode() == this.f7283a && userLevelDataValueAt.getPass()) {
                    return true;
                }
                if (i2 < size) {
                    i = i2;
                }
            }
        }
        return false;
    }
}
