package cn.mucang.android.jiakaoyi.k3setting.teach;

import android.app.Activity;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.w0;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\u0017H\u0002J\u001c\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u001dJ\u000e\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\nJ*\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001b0\tH\u0002J\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\tJ\u0006\u0010$\u001a\u00020\u0019J\u0016\u0010%\u001a\u00020\u00192\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R,\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "onlineTeachLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;", "getOnlineTeachLiveData", "()Landroidx/lifecycle/MutableLiveData;", "sourceTeachEntities", "teachMap", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "getTeachMap", "()Ljava/util/Map;", "setTeachMap", "(Ljava/util/Map;)V", "createSourceTeachData", "srcEntities", "", "deleteTeachItem", "", "data", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "callback", "Lkotlin/Function0;", "deleteTeachStep", "selectK3TeachEntity", "findModifyData", "sourceTeachData", "allItems", "getModifyData", "loadOnlineTeachData", "save", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TeachSettingViewModel extends LoadingViewModel {
    private final ExamSiteModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<List<K3TeachEntity>> f4666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<K3TeachEntity> f4667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<Step, List<K3TeachEntity>> f4668f;

    public K3TeachSettingViewModel(ExamSiteModel examSite) {
        kotlin.jvm.internal.r.e(examSite, "examSite");
        this.c = examSite;
        this.f4666d = new z<>();
        this.f4667e = new ArrayList();
        this.f4668f = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<K3TeachEntity> k(List<? extends K3TeachEntity> list) throws JSONException {
        Object next;
        ArrayList arrayList = new ArrayList();
        List<K3TeachEntity> listTransformTeachData = K3TeachDataParser.getInstance().transformTeachData(list);
        kotlin.jvm.internal.r.d(listTransformTeachData, "getInstance().transformTeachData(srcEntities)");
        for (K3TeachEntity teachEntity : listTransformTeachData) {
            Step step = Step.findWithType(teachEntity.stepId);
            List<K3TeachEntity> arrayList2 = this.f4668f.get(step);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList<>();
                Map<Step, List<K3TeachEntity>> map = this.f4668f;
                kotlin.jvm.internal.r.d(step, "step");
                map.put(step, arrayList2);
            }
            kotlin.jvm.internal.r.d(teachEntity, "teachEntity");
            arrayList2.add(teachEntity);
        }
        for (Step step2 : StepGetter.d()) {
            if (this.f4668f.get(step2) == null) {
                this.f4668f.put(step2, new ArrayList());
            }
            List<K3TeachEntity> arrayList3 = this.f4668f.get(step2);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList<>();
            }
            Iterator<T> it = arrayList3.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((K3TeachEntity) next).teachNum == 0));
            if (((K3TeachEntity) next) == null) {
                arrayList3.add(new K3TeachEntity(new ArrayList(), step2.type, step2.zhStepName));
            }
            arrayList.addAll(arrayList3);
        }
        return arrayList;
    }

    private final List<TeachData> n(List<K3TeachEntity> list, List<TeachData> list2) {
        Object next;
        ArrayList arrayList = new ArrayList();
        for (K3TeachEntity k3TeachEntity : list) {
            List<TeachData> list3 = k3TeachEntity.items;
            if (list3 != null && list3.size() > 0) {
                List<TeachData> list4 = k3TeachEntity.items;
                kotlin.jvm.internal.r.d(list4, "it.items");
                arrayList.addAll(list4);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList<TeachData> arrayList3 = new ArrayList();
        for (Object obj : list2) {
            if (((TeachData) obj).id != null) {
                arrayList3.add(obj);
            }
        }
        for (TeachData teachData : arrayList3) {
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!kotlin.jvm.internal.r.a(teachData.id, ((TeachData) next).id));
            if (!kotlin.jvm.internal.r.a(teachData, (TeachData) next)) {
                arrayList2.add(teachData);
            }
        }
        return arrayList2;
    }

    public final void l(TeachData data, Function0<kotlin.v> callback) {
        kotlin.jvm.internal.r.e(data, "data");
        kotlin.jvm.internal.r.e(callback, "callback");
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new K3TeachSettingViewModel$deleteTeachItem$1(data, this, callback, null), 2, null);
    }

    public final void m(K3TeachEntity selectK3TeachEntity) {
        kotlin.jvm.internal.r.e(selectK3TeachEntity, "selectK3TeachEntity");
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new K3TeachSettingViewModel$deleteTeachStep$1(this, selectK3TeachEntity, null), 2, null);
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final ExamSiteModel getC() {
        return this.c;
    }

    public final List<TeachData> p() {
        List<K3TeachEntity> listE = this.f4666d.e();
        if (this.f4667e == null || listE == null) {
            cn.mucang.android.core.utils.u.h("没有教学数据");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listE.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                ArrayList<TeachData> arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (((TeachData) obj).id == null) {
                        arrayList2.add(obj);
                    }
                }
                List<K3TeachEntity> list = this.f4667e;
                kotlin.jvm.internal.r.c(list);
                List<TeachData> listN = n(list, arrayList);
                for (TeachData teachData : arrayList2) {
                    List<Variable> list2 = teachData.variables;
                    if (list2 != null) {
                        teachData.value = JSON.toJSONString(list2);
                    }
                    List<Variable> list3 = teachData.errorVariables;
                    if (list3 != null) {
                        teachData.errorValue = JSON.toJSONString(list3);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(arrayList2);
                arrayList3.addAll(listN);
                return arrayList3;
            }
            K3TeachEntity k3TeachEntity = (K3TeachEntity) it.next();
            List<TeachData> list4 = k3TeachEntity.items;
            if (list4 != null && list4.size() > 0) {
                List<TeachData> list5 = k3TeachEntity.items;
                kotlin.jvm.internal.r.d(list5, "it.items");
                ArrayList arrayList4 = new ArrayList(kotlin.collections.v.u(list5, 10));
                for (Object obj2 : list5) {
                    int i2 = i + 1;
                    if (i < 0) {
                        kotlin.collections.s.t();
                        throw null;
                    }
                    ((TeachData) obj2).position = i;
                    arrayList4.add(kotlin.v.f15822a);
                    i = i2;
                }
                List<TeachData> list6 = k3TeachEntity.items;
                kotlin.jvm.internal.r.d(list6, "it.items");
                arrayList.addAll(list6);
            }
        }
    }

    public final z<List<K3TeachEntity>> q() {
        return this.f4666d;
    }

    public final Map<Step, List<K3TeachEntity>> r() {
        return this.f4668f;
    }

    public final void s() {
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b("加载路线数据");
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new K3TeachSettingViewModel$loadOnlineTeachData$1(this, jLoadingDialog, null), 2, null);
    }

    public final void t(cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new K3TeachSettingViewModel$save$1(this, bVar, null), 2, null);
    }
}
