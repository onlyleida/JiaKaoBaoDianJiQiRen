package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.util.SparseArray;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.BaseConditionHandler;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J(\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010J(\u0010\u0011\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010J\u001c\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/GroupPassHelper;", "", "conditionType", "", "handlerList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;", "(ILjava/util/List;)V", "getPassDesc", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GroupPassHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7269a;
    private final List<BaseConditionHandler> b;

    /* JADX WARN: Multi-variable type inference failed */
    public GroupPassHelper(int i, List<? extends BaseConditionHandler> handlerList) {
        kotlin.jvm.internal.r.e(handlerList, "handlerList");
        this.f7269a = i;
        this.b = handlerList;
    }

    public final void a(StringBuilder sb, UserLevelData data, SparseArray<UserLevelData> list) {
        kotlin.jvm.internal.r.e(sb, "sb");
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(list, "list");
        String relationKey = this.f7269a == 1 ? k0.a(R.string.teachbase_and) : k0.a(R.string.teachbase_or);
        for (BaseConditionHandler baseConditionHandler : this.b) {
            if (!n0.f(baseConditionHandler.a(data, list))) {
                sb.append(baseConditionHandler.a(data, list));
                sb.append(relationKey);
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "sb.toString()");
        kotlin.jvm.internal.r.d(relationKey, "relationKey");
        if (t.o(string, relationKey, false, 2, null)) {
            sb.delete(sb.length() - relationKey.length(), sb.length());
        }
    }

    public final void b(StringBuilder sb, UserLevelData data, SparseArray<UserLevelData> list) {
        kotlin.jvm.internal.r.e(sb, "sb");
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(list, "list");
        for (BaseConditionHandler baseConditionHandler : this.b) {
            if (!n0.f(baseConditionHandler.b(data, list))) {
                sb.append(baseConditionHandler.b(data, list));
                sb.append("、");
            }
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "sb.toString()");
        if (t.o(string, "、", false, 2, null)) {
            sb.delete(sb.length() - 1, sb.length());
        }
    }

    public final boolean c(UserLevelData data, SparseArray<UserLevelData> list) {
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(list, "list");
        Iterator<T> it = this.b.iterator();
        while (it.hasNext()) {
            boolean zC = ((BaseConditionHandler) it.next()).c(data, list);
            int i = this.f7269a;
            if (i == 1 && !zC) {
                return false;
            }
            if (i == 2 && zC) {
                return true;
            }
        }
        return this.f7269a == 1;
    }
}
