package cn.mucang.android.jiakaoyi.teachingk2.collect;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import com.tencent.open.SocialConstants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.e0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JF\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0016H\u0007J.\u0010\u0017\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0016H\u0007J\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J \u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0007J\u0016\u0010\u001b\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0004H\u0007J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachCollectHelper;", "", "()V", "cefangDesc", "", "", "daokuDesc1", "daokuDesc2", SocialConstants.PARAM_APP_DESC, "zhaiLuDesc", "zhuangKaoDesc", "addGroup", "", "activity", "Landroid/app/Activity;", "programmeId", "step", "", "stepDirection", "parkingSpaceGroup", "ids", "onSuccess", "Lkotlin/Function0;", "deleteGroup", "getStepDescList", "getSubStepDesc", "subStep", "getTeachModelIds", "list", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "isReverse", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachCollectHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TeachCollectHelper f6497a = new TeachCollectHelper();
    private static final List<String> b = kotlin.collections.u.m("驶入项目", "左倒库", "右出库", "右倒库", "左出库");
    private static final List<String> c = kotlin.collections.u.m("驶入项目", "右倒库", "左出库", "左倒库", "右出库");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<String> f6498d = kotlin.collections.u.m("驶入项目", "倒入侧方", "驶出侧方");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List<String> f6499e = kotlin.collections.u.m("驶入项目", "倒入乙库", "移库1", "移库2", "移库3", "移库4", "驶出甲库", "倒入甲库", "驶出项目");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final List<String> f6500f = kotlin.collections.u.m("驶入项目", "倒车1", "前进2", "倒车2", "驶出项目");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final List<String> f6501g = kotlin.collections.t.d("驶入项目");

    private TeachCollectHelper() {
    }

    public static final void a(Activity activity, final String programmeId, final int i, final int i2, final String parkingSpaceGroup, final String ids, final Function0<kotlin.v> onSuccess) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(programmeId, "programmeId");
        kotlin.jvm.internal.r.e(parkingSpaceGroup, "parkingSpaceGroup");
        kotlin.jvm.internal.r.e(ids, "ids");
        kotlin.jvm.internal.r.e(onSuccess, "onSuccess");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activity).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.x
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                TeachCollectHelper.b(ids, programmeId, i, i2, parkingSpaceGroup, onSuccess);
            }
        }, "正在添加", "添加失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(String ids, String programmeId, int i, int i2, String parkingSpaceGroup, Function0 onSuccess) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(ids, "$ids");
        kotlin.jvm.internal.r.e(programmeId, "$programmeId");
        kotlin.jvm.internal.r.e(parkingSpaceGroup, "$parkingSpaceGroup");
        kotlin.jvm.internal.r.e(onSuccess, "$onSuccess");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().m(ids, programmeId, i, i2, parkingSpaceGroup);
        onSuccess.invoke();
        cn.mucang.android.core.utils.u.h("添加成功");
    }

    public static final void c(final Activity activity, final String programmeId, final String ids, final Function0<kotlin.v> onSuccess) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(programmeId, "programmeId");
        kotlin.jvm.internal.r.e(ids, "ids");
        kotlin.jvm.internal.r.e(onSuccess, "onSuccess");
        new androidx.appcompat.app.c.a(activity).setMessage("是否确认删除？").setPositiveButton("确认", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.z
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                TeachCollectHelper.d(activity, ids, programmeId, onSuccess, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Activity activity, final String ids, final String programmeId, final Function0 onSuccess, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(activity, "$activity");
        kotlin.jvm.internal.r.e(ids, "$ids");
        kotlin.jvm.internal.r.e(programmeId, "$programmeId");
        kotlin.jvm.internal.r.e(onSuccess, "$onSuccess");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(activity).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.y
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                TeachCollectHelper.e(ids, programmeId, onSuccess);
            }
        }, "正在删除", "删除失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(String ids, String programmeId, Function0 onSuccess) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(ids, "$ids");
        kotlin.jvm.internal.r.e(programmeId, "$programmeId");
        kotlin.jvm.internal.r.e(onSuccess, "$onSuccess");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().p(ids, programmeId);
        onSuccess.invoke();
        cn.mucang.android.core.utils.u.h("删除成功");
    }

    public static final List<String> f(int i, int i2) {
        if (i == Step.K2_DaoCheRuKu.type) {
            return i2 == 2 ? c : b;
        }
        if (i == Step.B2_ZhuangKao.type) {
            return f6499e;
        }
        if (i == Step.B2_ZhaiLuDiaoTou.type) {
            return f6500f;
        }
        return (i == Step.K2_CeFangTingChe.type || i == Step.B2_CeFangTingChe.type) ? f6498d : f6501g;
    }

    public static final String g(int i, int i2, int i3) {
        String str = (String) kotlin.collections.s.f0(f(i, i2), i3 - 1);
        if (str == null) {
            return i3 == 8 ? "直线出库" : "直线入库";
        }
        return str;
    }

    public static final String h(List<? extends TeachModel> list) {
        kotlin.jvm.internal.r.e(list, "list");
        StringBuilder sb = new StringBuilder();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            sb.append(((TeachModel) it.next()).teachModelId);
            sb.append(",");
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "ids.toString()");
        return string;
    }

    public static final boolean i(int i, int i2) {
        if (i == Step.K2_DaoCheRuKu.type && i2 == 1) {
            return true;
        }
        if (i == Step.K2_ZhiJiaoZhuanWan.type && i2 == 2) {
            return true;
        }
        return i == Step.K2_SQuXian.type && i2 == 1;
    }
}
