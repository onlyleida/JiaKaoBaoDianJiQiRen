package cn.mucang.android.jiakaoyi.mapcollect.collect.b1;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2CeFangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ChunHuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2DanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2GaoSuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2HuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2JinJiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2QiFuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShanLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2XianKuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhaiLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhangAiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhiJiaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhuangKaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.a0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.b0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.c0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.d0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.e0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.f0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.p;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.r;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.s;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.t;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.u;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.v;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.w;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.x;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.y;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.z;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.f;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.g;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.h;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.i;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.j;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.k;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.l;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.m;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.n;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.o;
import cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseArray<Step> f4757a;
    private static final Map<Step, Integer> b;

    static {
        SparseArray<Step> sparseArray = new SparseArray<>();
        f4757a = sparseArray;
        HashMap map = new HashMap();
        b = map;
        Step step = Step.B2_CeFangTingChe;
        sparseArray.put(0, step);
        Step step2 = Step.B2_ShangPoQiBu;
        sparseArray.put(1, step2);
        Step step3 = Step.B2_SQuXian;
        sparseArray.put(2, step3);
        Step step4 = Step.B2_ZhiJiaoZhuanWan;
        sparseArray.put(3, step4);
        Step step5 = Step.B2_QiDianQuYu;
        sparseArray.put(4, step5);
        Step step6 = Step.B2_ZhaiLuDiaoTou;
        sparseArray.put(5, step6);
        Step step7 = Step.B2_JinJiQingKuang;
        sparseArray.put(6, step7);
        Step step8 = Step.B2_ShiHuaLuMian;
        sparseArray.put(7, step8);
        Step step9 = Step.B2_SuiDao;
        sparseArray.put(8, step9);
        Step step10 = Step.B2_ZhuangKao;
        sparseArray.put(9, step10);
        Step step11 = Step.B2_DanBian;
        sparseArray.put(10, step11);
        Step step12 = Step.B2_XianKuan;
        sparseArray.put(11, step12);
        Step step13 = Step.B2_ZhangAi;
        sparseArray.put(12, step13);
        Step step14 = Step.B2_QiFu;
        sparseArray.put(13, step14);
        Step step15 = Step.B2_ShanLu;
        sparseArray.put(14, step15);
        Step step16 = Step.B2_GaoSu;
        sparseArray.put(15, step16);
        Step step17 = Step.B2_ChunHuaLu;
        sparseArray.put(16, step17);
        map.put(step, Integer.valueOf(R.drawable.k2_caiji_cefang));
        map.put(step3, Integer.valueOf(R.drawable.k2_caiji_quxian));
        map.put(step2, Integer.valueOf(R.drawable.k2_caiji_shangpo));
        map.put(step4, Integer.valueOf(R.drawable.k2_caiji_zhuanwan));
        map.put(step5, Integer.valueOf(R.drawable.k2_caiji_qidian));
        map.put(step6, Integer.valueOf(R.drawable.k2_caiji_zhailu));
        map.put(step7, Integer.valueOf(R.drawable.k2_caiji_jinji));
        int i = R.drawable.k2_caiji_hualu;
        map.put(step8, Integer.valueOf(i));
        map.put(step9, Integer.valueOf(R.drawable.k2_caiji_suidao));
        map.put(step10, Integer.valueOf(R.drawable.k2_caiji_zhuangkao));
        map.put(step11, Integer.valueOf(R.drawable.k2_caiji_danbian));
        map.put(step12, Integer.valueOf(R.drawable.k2_caiji_xiankuanmen));
        map.put(step13, Integer.valueOf(R.drawable.k2_caiji_zhangai));
        map.put(step14, Integer.valueOf(R.drawable.k2_caiji_qifulu));
        map.put(step15, Integer.valueOf(R.drawable.k2_caiji_shanlu));
        map.put(step16, Integer.valueOf(R.drawable.k2_caiji_gaosu));
        map.put(step17, Integer.valueOf(i));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public List<cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a<?>> a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2CeFangSrcData.class, Step.B2_CeFangTingChe));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ShangPoSrcData.class, Step.B2_ShangPoQiBu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2SQuXianSrcData.class, Step.B2_SQuXian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ZhiJiaoSrcData.class, Step.B2_ZhiJiaoZhuanWan));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2QiDianSrcData.class, Step.B2_QiDianQuYu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ZhaiLuSrcData.class, Step.B2_ZhaiLuDiaoTou));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2JinJiSrcData.class, Step.B2_JinJiQingKuang));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2HuaLuSrcData.class, Step.B2_ShiHuaLuMian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2SuiDaoSrcData.class, Step.B2_SuiDao));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ZhuangKaoSrcData.class, Step.B2_ZhuangKao));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2DanBianSrcData.class, Step.B2_DanBian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2XianKuanSrcData.class, Step.B2_XianKuan));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ZhangAiSrcData.class, Step.B2_ZhangAi));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2QiFuSrcData.class, Step.B2_QiFu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ShanLuSrcData.class, Step.B2_ShanLu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2GaoSuSrcData.class, Step.B2_GaoSu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, B2ChunHuaLuSrcData.class, Step.B2_ChunHuaLu));
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public Step b(int i) {
        return f4757a.get(i);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public int c(Step step) {
        return b.get(step).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public int d(SourceData sourceData) {
        return f4757a.indexOfValue(Step.findWithType(sourceData.stepId()));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public Map<Step, cn.mucang.android.jiakaoyi.mapcollect.collect.data.d> e(String str, cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put(Step.B2_CeFangTingChe, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2CeFangSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ZhiJiaoZhuanWan, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ZhiJiaoSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_SQuXian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2SQuXianSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ShangPoQiBu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ShangPoSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_QiDianQuYu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2QiDianSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ZhaiLuDiaoTou, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ZhaiLuSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_JinJiQingKuang, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2JinJiSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ShiHuaLuMian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2HuaLuSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_SuiDao, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2SuiDaoSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ZhuangKao, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ZhuangKaoSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_DanBian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2DanBianSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_XianKuan, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2XianKuanSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ZhangAi, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ZhangAiSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_QiFu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2QiFuSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ShanLu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ShanLuSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_GaoSu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2GaoSuSrcData.class, bVar));
        concurrentHashMap.put(Step.B2_ChunHuaLu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, B2ChunHuaLuSrcData.class, bVar));
        return concurrentHashMap;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public t0 f(int i, PosCollectActivity posCollectActivity) {
        if (i == 0) {
            return new t0(new p(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.a(), posCollectActivity);
        }
        if (i == 1) {
            return new t0(new z(), new k(), posCollectActivity);
        }
        if (i == 2) {
            return new t0(new x(posCollectActivity), new i(), posCollectActivity);
        }
        if (i == 3) {
            return new t0(new e0(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.p(), posCollectActivity);
        }
        if (i == 4) {
            return new t0(new v(), new g(), posCollectActivity);
        }
        if (i == 5) {
            return new t0(new c0(), new n(), posCollectActivity);
        }
        if (i == 6) {
            return new t0(new u(), new f(), posCollectActivity);
        }
        if (i == 7) {
            return new t0(new t(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.e(), posCollectActivity);
        }
        if (i == 8) {
            return new t0(new a0(posCollectActivity), new l(), posCollectActivity);
        }
        if (i == 9) {
            return new t0(new f0(), new q(), posCollectActivity);
        }
        if (i == 10) {
            return new t0(new r(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.c(), posCollectActivity);
        }
        if (i == 11) {
            return new t0(new b0(), new m(), posCollectActivity);
        }
        if (i == 12) {
            return new t0(new d0(), new o(), posCollectActivity);
        }
        if (i == 13) {
            return new t0(new w(), new h(), posCollectActivity);
        }
        if (i == 14) {
            return new t0(new y(posCollectActivity), new j(), posCollectActivity);
        }
        if (i == 15) {
            return new t0(new s(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.d(), posCollectActivity);
        }
        if (i == 16) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.q(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a.b(), posCollectActivity);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public String[] g() {
        String[] strArr = new String[f4757a.size()];
        int i = 0;
        while (true) {
            SparseArray<Step> sparseArray = f4757a;
            if (i >= sparseArray.size()) {
                return strArr;
            }
            strArr[i] = sparseArray.valueAt(i).getStepName();
            i++;
        }
    }
}
