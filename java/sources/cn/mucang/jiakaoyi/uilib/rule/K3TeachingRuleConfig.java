package cn.mucang.jiakaoyi.uilib.rule;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.d0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nJ\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005R#\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/K3TeachingRuleConfig;", "", "()V", "teachingCodeMap", "", "", "", "getTeachingCodeMap", "()Ljava/util/Map;", "getAllTeachingConfigs", "", "isTeachingConfig", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "ruleId", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TeachingRuleConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K3TeachingRuleConfig f9517a = new K3TeachingRuleConfig();
    private static final Map<Integer, List<Integer>> b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        b = linkedHashMap;
        linkedHashMap.put(Integer.valueOf(Step.K3_ShangChe.type), kotlin.collections.u.m(201161, 201162, 201163));
        linkedHashMap.put(Integer.valueOf(Step.K3_LightSimulate.type), kotlin.collections.u.m(202134, 202135, 202136));
        linkedHashMap.put(Integer.valueOf(Step.K3_QiBu.type), kotlin.collections.u.m(203127, 203128, 203129));
        linkedHashMap.put(Integer.valueOf(Step.K3_ZhiXian.type), kotlin.collections.u.m(204119, 204120, 204121));
        linkedHashMap.put(Integer.valueOf(Step.K3_BianDao.type), kotlin.collections.u.m(205123, 205124, 205125));
        linkedHashMap.put(Integer.valueOf(Step.K3_ChaoChe.type), kotlin.collections.u.m(206133, 206134, 206135));
        linkedHashMap.put(Integer.valueOf(Step.K3_HuiChe.type), kotlin.collections.u.m(207122, 207123, 207124));
        linkedHashMap.put(Integer.valueOf(Step.K3_LuKouZuoZhuan.type), kotlin.collections.u.m(208127, 208128, 208129));
        linkedHashMap.put(Integer.valueOf(Step.K3_LuKouYouZhuan.type), kotlin.collections.u.m(209127, 209128, 209129));
        linkedHashMap.put(Integer.valueOf(Step.K3_DiaoTou.type), kotlin.collections.u.m(210127, 210128, 210129));
        linkedHashMap.put(Integer.valueOf(Step.K3_LuKouZhiXing.type), kotlin.collections.u.m(211116, 211117, 211118));
        linkedHashMap.put(Integer.valueOf(Step.K3_JiaJianDang.type), kotlin.collections.u.m(212137, 212138, 212139));
        linkedHashMap.put(Integer.valueOf(Step.K3_BusStation.type), kotlin.collections.u.m(213115, 213116, 213117));
        linkedHashMap.put(Integer.valueOf(Step.K3_School.type), kotlin.collections.u.m(214115, 214116, 214117));
        linkedHashMap.put(Integer.valueOf(Step.K3_BanMaXian.type), kotlin.collections.u.m(215115, 215116, 215117));
        linkedHashMap.put(Integer.valueOf(Step.K3_TingChe.type), kotlin.collections.u.m(216139, 216140, 216141));
        linkedHashMap.put(Integer.valueOf(Step.K3_JianSu.type), kotlin.collections.u.m(217110, 217111, 217112));
        linkedHashMap.put(Integer.valueOf(Step.K3_XianSu.type), kotlin.collections.u.m(218109, 218110, 218111));
        linkedHashMap.put(Integer.valueOf(Step.K3_SuiDao.type), kotlin.collections.u.m(219113, 219114, 219115));
        linkedHashMap.put(Integer.valueOf(Step.K3_GongQiao.type), kotlin.collections.u.m(220111, 220112, 220113));
        linkedHashMap.put(Integer.valueOf(Step.K3_JiWanPoDao.type), kotlin.collections.u.m(221110, 221111, 221112));
        linkedHashMap.put(Integer.valueOf(Step.K3_LinTing.type), kotlin.collections.u.m(222121, 222122, 222123));
        linkedHashMap.put(Integer.valueOf(Step.K3_RangXing.type), kotlin.collections.u.m(223112, 223113, 223114));
        linkedHashMap.put(Integer.valueOf(Step.K3_HuanDao.type), kotlin.collections.u.m(224111, 224112, 224113));
        linkedHashMap.put(Integer.valueOf(Step.K3_JinTing.type), kotlin.collections.u.m(225110, 225111, 225112));
        linkedHashMap.put(Integer.valueOf(Step.K3_BianDaoChaoChe.type), kotlin.collections.u.m(226120, 226121, 226122));
    }

    private K3TeachingRuleConfig() {
    }

    public final List<Integer> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<List<Integer>> it = b.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next());
        }
        return arrayList;
    }

    public final boolean b(Step step, int i) {
        kotlin.jvm.internal.r.e(step, "step");
        List<Integer> list = b.get(Integer.valueOf(step.type));
        if (list == null) {
            return false;
        }
        return list.contains(Integer.valueOf(i));
    }
}
