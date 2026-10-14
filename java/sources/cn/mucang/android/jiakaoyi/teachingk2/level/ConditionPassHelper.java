package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.AllPassConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.CountConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.FpConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.NoneConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.PassRateConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.SinglePassConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.handler.TimeConditionHandler;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConditionGroup;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConditionModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.v;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u001c\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010J\u001c\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010J\u001c\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/ConditionPassHelper;", "", TtmlNode.ATTR_ID, "", "conditionGroup", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConditionGroup;", "(ILjava/util/List;)V", "handlerGroup", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/GroupPassHelper;", "getPassDesc", "", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "list", "Landroid/util/SparseArray;", "getTrainDesc", "isPass", "", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ConditionPassHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<GroupPassHelper> f7268a = new ArrayList();

    public ConditionPassHelper(int i, List<ConditionGroup> list) {
        if (list == null) {
            return;
        }
        for (ConditionGroup conditionGroup : list) {
            ArrayList arrayList = new ArrayList();
            List<ConditionModel> conditions = conditionGroup.getConditions();
            if (conditions != null) {
                for (ConditionModel conditionModel : conditions) {
                    int type = conditionModel.getType();
                    if (type == -20) {
                        arrayList.add(new AllPassConditionHandler());
                    } else if (type == -10) {
                        Integer numJ = kotlin.text.s.j(conditionModel.getValue());
                        arrayList.add(new SinglePassConditionHandler(numJ != null ? numJ.intValue() : 0));
                    } else if (type == 1) {
                        arrayList.add(new NoneConditionHandler());
                    } else if (type == 2) {
                        Integer numJ2 = kotlin.text.s.j(conditionModel.getValue());
                        arrayList.add(new TimeConditionHandler(numJ2 != null ? numJ2.intValue() : 0));
                    } else if (type == 3) {
                        Integer numJ3 = kotlin.text.s.j(conditionModel.getValue());
                        arrayList.add(new CountConditionHandler(numJ3 != null ? numJ3.intValue() : 0));
                    } else if (type == 6) {
                        List listP0 = StringsKt__StringsKt.p0(conditionModel.getValue(), new String[]{","}, false, 0, 6, null);
                        ArrayList arrayList2 = new ArrayList(v.u(listP0, 10));
                        Iterator it = listP0.iterator();
                        while (it.hasNext()) {
                            Integer numJ4 = kotlin.text.s.j((String) it.next());
                            arrayList2.add(Integer.valueOf(numJ4 == null ? 0 : numJ4.intValue()));
                        }
                        if (arrayList2.size() == 2) {
                            arrayList.add(new FpConditionHandler(i, ((Number) kotlin.collections.s.c0(arrayList2)).intValue(), ((Number) kotlin.collections.s.o0(arrayList2)).intValue()));
                        }
                    } else if (type == 7) {
                        List listP1 = StringsKt__StringsKt.p0(conditionModel.getValue(), new String[]{","}, false, 0, 6, null);
                        ArrayList arrayList3 = new ArrayList(v.u(listP1, 10));
                        Iterator it2 = listP1.iterator();
                        while (it2.hasNext()) {
                            Integer numJ5 = kotlin.text.s.j((String) it2.next());
                            arrayList3.add(Integer.valueOf(numJ5 == null ? 0 : numJ5.intValue()));
                        }
                        if (arrayList3.size() == 3) {
                            arrayList.add(new PassRateConditionHandler(((Number) kotlin.collections.s.c0(arrayList3)).intValue(), ((Number) arrayList3.get(1)).intValue(), ((Number) kotlin.collections.s.o0(arrayList3)).intValue()));
                        }
                    }
                }
            }
            this.f7268a.add(new GroupPassHelper(conditionGroup.getConditionType(), arrayList));
        }
    }

    public final String a(UserLevelData data, SparseArray<UserLevelData> list) {
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(list, "list");
        StringBuilder sb = new StringBuilder();
        Iterator<T> it = this.f7268a.iterator();
        while (it.hasNext()) {
            ((GroupPassHelper) it.next()).a(sb, data, list);
            sb.append(k0.a(R.string.teachbase_or1));
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "sb.toString()");
        return kotlin.jvm.internal.r.m("通关条件：", StringsKt__StringsKt.I0(string, "\n或", null, 2, null));
    }

    public final String b(UserLevelData data, SparseArray<UserLevelData> list) {
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(list, "list");
        StringBuilder sb = new StringBuilder();
        Iterator<T> it = this.f7268a.iterator();
        while (it.hasNext()) {
            ((GroupPassHelper) it.next()).b(sb, data, list);
            sb.append("\n");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "sb.toString()");
        return StringsKt__StringsKt.I0(string, "\n", null, 2, null);
    }

    public final boolean c(UserLevelData data, SparseArray<UserLevelData> list) {
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(list, "list");
        Iterator<T> it = this.f7268a.iterator();
        while (it.hasNext()) {
            if (((GroupPassHelper) it.next()).c(data, list)) {
                return true;
            }
        }
        return false;
    }
}
