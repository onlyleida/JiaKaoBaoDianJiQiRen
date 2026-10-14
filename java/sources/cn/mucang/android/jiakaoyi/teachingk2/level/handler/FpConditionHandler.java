package cn.mucang.android.jiakaoyi.teachingk2.level.handler;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserItemData;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.t.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/FpConditionHandler;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;", TtmlNode.ATTR_ID, "", "totalCount", "passCount", "(III)V", "getPassDesc", "", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FpConditionHandler extends BaseConditionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7281a;
    private final int b;

    public FpConditionHandler(int i, int i2, int i3) {
        this.f7281a = i2;
        this.b = i3;
        FirstPracticeStep.findByCode(i).setConfigCount(i2, i3);
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
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_pass_num_unpass_num);
        r.d(strA, "getString(R.string.teachbase_pass_num_unpass_num)");
        Object[] objArr = new Object[2];
        UserItemData data2 = data.getData();
        objArr[0] = Integer.valueOf(data2 == null ? 0 : data2.getCoursePassCount());
        UserItemData data3 = data.getData();
        int courseTotalCount = data3 == null ? 0 : data3.getCourseTotalCount();
        UserItemData data4 = data.getData();
        objArr[1] = Integer.valueOf(courseTotalCount - (data4 != null ? data4.getCoursePassCount() : 0));
        String str = String.format(strA, Arrays.copyOf(objArr, 2));
        r.d(str, "java.lang.String.format(format, *args)");
        return str;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler
    public boolean c(UserLevelData data, SparseArray<UserLevelData> list) {
        r.e(data, "data");
        r.e(list, "list");
        UserItemData data2 = data.getData();
        if ((data2 == null ? 0 : data2.getCourseTotalCount()) > this.f7281a) {
            return false;
        }
        UserItemData data3 = data.getData();
        return (data3 == null ? 0 : data3.getCoursePassCount()) >= this.b;
    }
}
