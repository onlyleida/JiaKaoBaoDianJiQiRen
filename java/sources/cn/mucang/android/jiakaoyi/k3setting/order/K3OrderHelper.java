package cn.mucang.android.jiakaoyi.k3setting.order;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BanMaXianStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BianDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3BusStationStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GongQiaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuanDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiWanPoDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JianSuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LinTingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouYouZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZhiXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3LuKouZuoZhuanStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3QiBuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3RangXingStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SchoolStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3SuiDaoStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TeShuQuYuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3XianSuStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ZhiXianStepConfig;
import cn.mucang.android.jiakaoyi.k3setting.order.api.K3StepOrderApi;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.K3OrderItem;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u00152\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001cJ\u001e\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015J\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\n2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u001cJ\"\u0010#\u001a\u00020\r2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00152\b\u0010$\u001a\u0004\u0018\u00010%H\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\t\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000b\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderHelper;", "", "()V", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "ruleConfigs", "", "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;", "clearExamSiteConfig", "", "siteId", "", "findOrderByName", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", Constant.PROTOCOL_WEBVIEW_NAME, "", "orderItems", "", "getKey", "getSiteOrderConfig", "getStartVoice", "Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;", "cityCode", "stepType", "", "getStartVoiceCode", "saveSiteOrderConfig", "orders", "syncK3OrderData", "examSiteId", "displayStatus", "updateRouteData", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3OrderHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<RuleConfig<Object>> f4347a;
    private final Lazy b = kotlin.i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.order.K3OrderHelper$examSite$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamSiteModel invoke() {
            return ExamSiteUtil.d();
        }
    });

    private final ExamSiteModel a() {
        return (ExamSiteModel) this.b.getValue();
    }

    private final String b(long j) {
        return kotlin.jvm.internal.r.m("exam_site_order_", Long.valueOf(j));
    }

    public final StringValue c(long j, String cityCode, int i) {
        kotlin.jvm.internal.r.e(cityCode, "cityCode");
        if (this.f4347a == null) {
            this.f4347a = cn.mucang.jiakaoyi.uilib.m.b.l(j, KeMu.K3);
        }
        List<RuleConfig<Object>> list = this.f4347a;
        if (list == null) {
            return null;
        }
        for (RuleConfig<Object> ruleConfig : list) {
            int iD = d(i);
            if (iD != 0 && ruleConfig.ruleId == iD) {
                return (StringValue) ruleConfig;
            }
        }
        return null;
    }

    public final int d(int i) {
        if (i == Step.K3_QiBu.type) {
            return K3QiBuStepConfig.startVoice;
        }
        if (i == Step.K3_ZhiXian.type) {
            return K3ZhiXianStepConfig.startVoice;
        }
        if (i == Step.K3_BianDao.type) {
            return K3BianDaoStepConfig.startVoice;
        }
        if (i == Step.K3_ChaoChe.type) {
            return K3ChaoCheStepConfig.startVoice;
        }
        if (i == Step.K3_HuiChe.type) {
            return K3HuiCheStepConfig.startVoice;
        }
        if (i == Step.K3_LuKouZuoZhuan.type) {
            return K3LuKouZuoZhuanStepConfig.startVoice;
        }
        if (i == Step.K3_LuKouYouZhuan.type) {
            return K3LuKouYouZhuanStepConfig.startVoice;
        }
        if (i == Step.K3_DiaoTou.type) {
            return K3DiaoTouStepConfig.startVoice;
        }
        if (i == Step.K3_LuKouZhiXing.type) {
            return K3LuKouZhiXingStepConfig.startVoice;
        }
        if (i == Step.K3_JiaJianDang.type) {
            return K3JiaJianDangStepConfig.startVoice;
        }
        if (i == Step.K3_BusStation.type) {
            return K3BusStationStepConfig.startVoice;
        }
        if (i == Step.K3_School.type) {
            return K3SchoolStepConfig.startVoice;
        }
        if (i == Step.K3_BanMaXian.type) {
            return K3BanMaXianStepConfig.startVoice;
        }
        if (i == Step.K3_TingChe.type) {
            return K3TingCheStepConfig.startVoice;
        }
        if (i == Step.K3_JianSu.type) {
            return K3JianSuStepConfig.startVoice;
        }
        if (i == Step.K3_XianSu.type) {
            return K3XianSuStepConfig.startVoice;
        }
        if (i == Step.K3_SuiDao.type) {
            return K3SuiDaoStepConfig.startVoice;
        }
        if (i == Step.K3_GongQiao.type) {
            return K3GongQiaoStepConfig.startVoice;
        }
        if (i == Step.K3_JiWanPoDao.type) {
            return K3JiWanPoDaoStepConfig.startVoice;
        }
        if (i == Step.K3_LinTing.type) {
            return K3LinTingStepConfig.startVoice;
        }
        if (i == Step.K3_RangXing.type) {
            return K3RangXingStepConfig.startVoice;
        }
        if (i == Step.K3_HuanDao.type) {
            return K3HuanDaoStepConfig.startVoice;
        }
        if (i == Step.K3_JinTing.type) {
            return K3JinTingStepConfig.startVoice;
        }
        if (i == Step.K3_BianDaoChaoChe.type) {
            return K3BianDaoChaoCheStepConfig.startVoice;
        }
        if (i == Step.K3_TeShuQuYu.type) {
            return K3TeShuQuYuStepConfig.startVoice;
        }
        return 0;
    }

    public final void e(long j, List<? extends StepOrderItem> list) {
        if (list == null) {
            cn.mucang.android.jiakaoyi.framework.utils.i0.h(b(j));
        } else {
            cn.mucang.android.jiakaoyi.framework.utils.i0.m(b(j), JSON.toJSONString(list));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<StepOrderItem> f(long j, int i) {
        boolean z;
        String str;
        try {
            List<StepOrderItem> listP = new K3StepOrderApi().p(j, i);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("线上用户的指令数据： ", JSON.toJSONString(listP)));
            if (listP == null) {
                listP = new ArrayList<>();
            }
            Iterator<StepOrderItem> it = listP.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (it.next().id == 0) {
                    z = true;
                    break;
                }
            }
            if (z) {
                List<K3OrderItem> listE = StepGetter.f9318a.e(j);
                if ((listE != null ? listE.size() : 0) <= 0) {
                    listP = CollectionsKt___CollectionsKt.O0(listP);
                } else if (listE == null) {
                    listP = null;
                } else {
                    ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listE, 10));
                    Iterator<T> it2 = listE.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new StepOrderItem(((K3OrderItem) it2.next()).getStep()));
                    }
                    listP = CollectionsKt___CollectionsKt.O0(arrayList);
                }
                ExamSiteModel examSiteModelA = a();
                if (examSiteModelA != null && listP != null) {
                    ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(listP, 10));
                    for (StepOrderItem stepOrderItem : listP) {
                        String str2 = examSiteModelA.cityCode;
                        kotlin.jvm.internal.r.d(str2, "examSite.cityCode");
                        StringValue stringValueC = c(j, str2, stepOrderItem.stepId);
                        String str3 = "";
                        if (stringValueC != null && (str = (String) stringValueC.value) != null) {
                            str3 = str;
                        }
                        stepOrderItem.content = str3;
                        arrayList2.add(stepOrderItem);
                    }
                }
                if (listP != null) {
                    try {
                        listP = new K3StepOrderApi().o(j, listP);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            new K3OrderHelper().e(j, listP);
            return listP;
        } catch (Exception e3) {
            e3.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("同步指令时查询指令失败 ", e3.getLocalizedMessage()));
            String message = e3.getMessage();
            if (message == null) {
                message = "同步指令时查询指令失败";
            }
            cn.mucang.android.core.utils.u.h(message);
            throw e3;
        }
    }
}
