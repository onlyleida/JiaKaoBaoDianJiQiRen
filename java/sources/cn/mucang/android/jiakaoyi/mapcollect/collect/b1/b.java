package cn.mucang.android.jiakaoyi.mapcollect.collect.b1;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2BianXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2CeFangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DaoKuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DoubleYuanHuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ETCSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2HuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2JinJiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2QuKaSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2YuanHuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ZhaiLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ZhiJiaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.g;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.h;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.j;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.m;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.n;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.o;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.p;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.q;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.r;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.f;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.i;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.k;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseArray<Step> f4758a;
    private static final Map<Step, Integer> b;

    static {
        SparseArray<Step> sparseArray = new SparseArray<>();
        f4758a = sparseArray;
        HashMap map = new HashMap();
        b = map;
        Step step = Step.K2_DaoCheRuKu;
        sparseArray.put(0, step);
        Step step2 = Step.K2_CeFangTingChe;
        sparseArray.put(1, step2);
        Step step3 = Step.K2_ShangPoQiBu;
        sparseArray.put(2, step3);
        Step step4 = Step.K2_SQuXian;
        sparseArray.put(3, step4);
        Step step5 = Step.K2_ZhiJiaoZhuanWan;
        sparseArray.put(4, step5);
        Step step6 = Step.K2_QuKa;
        sparseArray.put(5, step6);
        Step step7 = Step.K2_QiDianQuYu;
        sparseArray.put(6, step7);
        Step step8 = Step.K2_ZhaiLuDiaoTou;
        sparseArray.put(7, step8);
        Step step9 = Step.K2_JinJiQingKuang;
        sparseArray.put(8, step9);
        Step step10 = Step.K2_ShiHuaLuMian;
        sparseArray.put(9, step10);
        Step step11 = Step.K2_SuiDao;
        sparseArray.put(10, step11);
        Step step12 = Step.K2_ETC;
        sparseArray.put(11, step12);
        map.put(step2, Integer.valueOf(R.drawable.k2_caiji_cefang));
        map.put(step, Integer.valueOf(R.drawable.k2_caiji_daoku));
        int i = R.drawable.k2_caiji_quka;
        map.put(step6, Integer.valueOf(i));
        map.put(step4, Integer.valueOf(R.drawable.k2_caiji_quxian));
        map.put(step3, Integer.valueOf(R.drawable.k2_caiji_shangpo));
        map.put(step5, Integer.valueOf(R.drawable.k2_caiji_zhuanwan));
        map.put(step7, Integer.valueOf(R.drawable.k2_caiji_qidian));
        map.put(step8, Integer.valueOf(R.drawable.k2_caiji_zhailu));
        map.put(step9, Integer.valueOf(R.drawable.k2_caiji_jinji));
        map.put(step10, Integer.valueOf(R.drawable.k2_caiji_hualu));
        map.put(step11, Integer.valueOf(R.drawable.k2_caiji_suidao));
        map.put(step12, Integer.valueOf(i));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public List<cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a<?>> a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2CeFangSrcData.class, Step.K2_CeFangTingChe));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2ShangPoSrcData.class, Step.K2_ShangPoQiBu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2SQuXianSrcData.class, Step.K2_SQuXian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2DaoKuSrcData.class, Step.K2_DaoCheRuKu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2ZhiJiaoSrcData.class, Step.K2_ZhiJiaoZhuanWan));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2QuKaSrcData.class, Step.K2_QuKa));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2QiDianSrcData.class, Step.K2_QiDianQuYu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2ZhaiLuSrcData.class, Step.K2_ZhaiLuDiaoTou));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2JinJiSrcData.class, Step.K2_JinJiQingKuang));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2HuaLuSrcData.class, Step.K2_ShiHuaLuMian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2SuiDaoSrcData.class, Step.K2_SuiDao));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2BianXianSrcData.class, Step.K2_BianXianShiBie));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2ETCSrcData.class, Step.K2_ETC));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2YuanHuanSrcData.class, Step.K2_YuanHuanLianXi));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, C2DoubleYuanHuanSrcData.class, Step.K2_DoubleYuanHuan));
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public Step b(int i) {
        return f4758a.get(i);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public int c(Step step) {
        return b.get(step).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public int d(SourceData sourceData) {
        return f4758a.indexOfValue(Step.findWithType(sourceData.stepId()));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public Map<Step, cn.mucang.android.jiakaoyi.mapcollect.collect.data.d> e(String str, cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put(Step.K2_DaoCheRuKu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2DaoKuSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_CeFangTingChe, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2CeFangSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_ZhiJiaoZhuanWan, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2ZhiJiaoSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_SQuXian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2SQuXianSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_ShangPoQiBu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2ShangPoSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_QuKa, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2QuKaSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_QiDianQuYu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2QiDianSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_ZhaiLuDiaoTou, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2ZhaiLuSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_JinJiQingKuang, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2JinJiSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_ShiHuaLuMian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2HuaLuSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_SuiDao, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2SuiDaoSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_BianXianShiBie, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2BianXianSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_ETC, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2ETCSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_YuanHuanLianXi, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2YuanHuanSrcData.class, bVar));
        concurrentHashMap.put(Step.K2_DoubleYuanHuan, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, C2DoubleYuanHuanSrcData.class, bVar));
        return concurrentHashMap;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public t0 f(int i, PosCollectActivity posCollectActivity) {
        if (i == 0) {
            return new t0(new h(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.b(), posCollectActivity);
        }
        if (i == 1) {
            return new t0(new g(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.a(), posCollectActivity);
        }
        if (i == 2) {
            return new t0(new o(), new i(), posCollectActivity);
        }
        if (i == 3) {
            return new t0(new n(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.h(), posCollectActivity);
        }
        if (i == 4) {
            return new t0(new r(), new l(), posCollectActivity);
        }
        if (i == 5) {
            return new t0(new m(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.g(), posCollectActivity);
        }
        if (i == 6) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.l(), new f(), posCollectActivity);
        }
        if (i == 7) {
            return new t0(new q(), new k(), posCollectActivity);
        }
        if (i == 8) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.k(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.e(), posCollectActivity);
        }
        if (i == 9) {
            return new t0(new j(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.d(), posCollectActivity);
        }
        if (i == 10) {
            return new t0(new p(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.j(), posCollectActivity);
        }
        if (i == 11) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.i(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b.c(), posCollectActivity);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public String[] g() {
        String[] strArr = new String[f4758a.size()];
        int i = 0;
        while (true) {
            SparseArray<Step> sparseArray = f4758a;
            if (i >= sparseArray.size()) {
                return strArr;
            }
            strArr[i] = sparseArray.valueAt(i).getStepName();
            i++;
        }
    }
}
