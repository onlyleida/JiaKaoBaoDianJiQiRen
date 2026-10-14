package cn.mucang.android.jiakaoyi.mapcollect.collect.b1;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoBanMaXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoBianDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoChangDiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDiaoTouSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoJiaJianDangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoQiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoTingCheSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoYouZhuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhiXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhiXingSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhuangKaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZuoZhuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.f;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.g;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.h;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.i;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.j;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.k;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.l;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.m;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseArray<Step> f4761a;
    private static final Map<Step, Integer> b;

    static {
        SparseArray<Step> sparseArray = new SparseArray<>();
        f4761a = sparseArray;
        HashMap map = new HashMap();
        b = map;
        Step step = Step.Moto_ZhuangKao;
        sparseArray.put(0, step);
        Step step2 = Step.Moto_ShangPoQiBu;
        sparseArray.put(1, step2);
        Step step3 = Step.Moto_DanBian;
        sparseArray.put(2, step3);
        Step step4 = Step.Moto_QiDianQuYu;
        sparseArray.put(3, step4);
        Step step5 = Step.Moto_ZhiXian;
        sparseArray.put(4, step5);
        Step step6 = Step.Moto_BianDao;
        sparseArray.put(5, step6);
        Step step7 = Step.Moto_LuKouZuoZhuan;
        sparseArray.put(6, step7);
        Step step8 = Step.Moto_LuKouYouZhuan;
        sparseArray.put(7, step8);
        Step step9 = Step.Moto_LuKouZhiXing;
        sparseArray.put(8, step9);
        Step step10 = Step.Moto_BanMaXian;
        sparseArray.put(9, step10);
        Step step11 = Step.Moto_DiaoTou;
        sparseArray.put(10, step11);
        Step step12 = Step.Moto_TingChe;
        sparseArray.put(11, step12);
        Step step13 = Step.Moto_JiaJianDang;
        sparseArray.put(12, step13);
        Step step14 = Step.Moto_ChangDi;
        sparseArray.put(13, step14);
        map.put(step, Integer.valueOf(R.drawable.moto_zhuangkao));
        map.put(step2, Integer.valueOf(R.drawable.k2_caiji_shangpo));
        map.put(step3, Integer.valueOf(R.drawable.k2_caiji_danbian));
        map.put(step4, Integer.valueOf(R.drawable.k2_caiji_qidian));
        int i = R.drawable.moto_k3;
        map.put(step5, Integer.valueOf(i));
        map.put(step6, Integer.valueOf(i));
        map.put(step7, Integer.valueOf(i));
        map.put(step8, Integer.valueOf(i));
        map.put(step9, Integer.valueOf(i));
        map.put(step10, Integer.valueOf(i));
        map.put(step11, Integer.valueOf(i));
        map.put(step12, Integer.valueOf(i));
        map.put(step13, Integer.valueOf(i));
        map.put(step14, Integer.valueOf(i));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public List<cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a<?>> a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoZhuangKaoSrcData.class, Step.Moto_ZhuangKao));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoShangPoSrcData.class, Step.Moto_ShangPoQiBu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoDanBianSrcData.class, Step.Moto_DanBian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoQiDianSrcData.class, Step.Moto_QiDianQuYu));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoZhiXianSrcData.class, Step.Moto_ZhiXian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoBianDaoSrcData.class, Step.Moto_BianDao));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoZuoZhuanSrcData.class, Step.Moto_LuKouZuoZhuan));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoYouZhuanSrcData.class, Step.Moto_LuKouYouZhuan));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoZhiXingSrcData.class, Step.Moto_LuKouZhiXing));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoBanMaXianSrcData.class, Step.Moto_BanMaXian));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoDiaoTouSrcData.class, Step.Moto_DiaoTou));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoTingCheSrcData.class, Step.Moto_TingChe));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoJiaJianDangSrcData.class, Step.Moto_JiaJianDang));
        arrayList.add(new cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.C0116a(str, MotoChangDiSrcData.class, Step.Moto_ChangDi));
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public Step b(int i) {
        return f4761a.get(i);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public int c(Step step) {
        return b.get(step).intValue();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public int d(SourceData sourceData) {
        return f4761a.indexOfValue(Step.findWithType(sourceData.stepId()));
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public Map<Step, cn.mucang.android.jiakaoyi.mapcollect.collect.data.d> e(String str, cn.mucang.android.jiakaoyi.framework.h.b<List<SourceData>> bVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put(Step.Moto_ZhuangKao, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoZhuangKaoSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_ShangPoQiBu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoShangPoSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_DanBian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoDanBianSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_QiDianQuYu, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoQiDianSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_ZhiXian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoZhiXianSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_BianDao, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoBianDaoSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_LuKouZuoZhuan, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoZuoZhuanSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_LuKouYouZhuan, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoYouZhuanSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_LuKouZhiXing, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoZhiXingSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_BanMaXian, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoBanMaXianSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_DiaoTou, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoDiaoTouSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_TingChe, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoTingCheSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_JiaJianDang, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoJiaJianDangSrcData.class, bVar));
        concurrentHashMap.put(Step.Moto_ChangDi, new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(str, MotoChangDiSrcData.class, bVar));
        return concurrentHashMap;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public t0 f(int i, PosCollectActivity posCollectActivity) {
        if (i == 0) {
            return new t0(new m(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.m(), posCollectActivity);
        }
        if (i == 1) {
            return new t0(new h(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.h(), posCollectActivity);
        }
        if (i == 2) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.d(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.d(), posCollectActivity);
        }
        if (i == 3) {
            return new t0(new g(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.g(), posCollectActivity);
        }
        if (i == 4) {
            return new t0(new k(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.k(), posCollectActivity);
        }
        if (i == 5) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.b(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.b(), posCollectActivity);
        }
        if (i == 6) {
            return new t0(new n(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.n(), posCollectActivity);
        }
        if (i == 7) {
            return new t0(new j(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.j(), posCollectActivity);
        }
        if (i == 8) {
            return new t0(new l(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.l(), posCollectActivity);
        }
        if (i == 9) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.a(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.a(), posCollectActivity);
        }
        if (i == 10) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.e(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.e(), posCollectActivity);
        }
        if (i == 11) {
            return new t0(new i(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.i(), posCollectActivity);
        }
        if (i == 12) {
            return new t0(new f(), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.f(), posCollectActivity);
        }
        if (i == 13) {
            return new t0(new cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.c(posCollectActivity), new cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c.c(), posCollectActivity);
        }
        return null;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.b1.c
    public String[] g() {
        String[] strArr = new String[f4761a.size()];
        int i = 0;
        while (true) {
            SparseArray<Step> sparseArray = f4761a;
            if (i >= sparseArray.size()) {
                return strArr;
            }
            strArr[i] = sparseArray.valueAt(i).getStepName();
            i++;
        }
    }
}
