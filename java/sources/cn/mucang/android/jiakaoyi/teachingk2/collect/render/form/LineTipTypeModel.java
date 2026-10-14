package cn.mucang.android.jiakaoyi.teachingk2.collect.render.form;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public enum LineTipTypeModel {
    Line(2, "线段"),
    Frame(1, "线框"),
    Dot(3, "点"),
    Area(4, "区域"),
    Angle(5, "角");

    private final String name;
    private final int type;

    LineTipTypeModel(int i, String str) {
        this.type = i;
        this.name = str;
    }

    public static String[] getAngles(int i) {
        if (i == Step.K2_DaoCheRuKu.type || i == Step.K2_CeFangTingChe.type || i == Step.B2_CeFangTingChe.type) {
            return new String[]{"1-2-3", "2-3-4", "3-4-5", "4-5-6", "5-6-7", "6-7-8", "7-8-1", "8-1-2"};
        }
        if (i == Step.K2_ZhiJiaoZhuanWan.type || i == Step.B2_ZhiJiaoZhuanWan.type) {
            return new String[]{"1-2-3", "2-1-6", "2-3-4", "3-4-5", "4-5-6", "5-6-1"};
        }
        if (i == Step.K2_ShangPoQiBu.type || i == Step.B2_ShangPoQiBu.type) {
            return new String[]{"1-2-3", "2-3-4", "3-4-5", "4-1-2", "4-5-6", "5-6-7", "6-7-8", "7-8-9", "8-9-10", "9-10-7"};
        }
        if (i == Step.B2_ZhaiLuDiaoTou.type) {
            return new String[]{"1-2-3", "2-3-4", "3-4-5", "4-1-2"};
        }
        if (i == Step.B2_JinJiQingKuang.type) {
            return new String[]{"1-2-4", "2-4-3", "3-1-2", "3-5-6", "4-3-1", "4-3-5", "5-6-4", "6-4-3"};
        }
        if (i == Step.B2_ZhuangKao.type) {
            return new String[]{"3-4-5", "3-6-5", "4-3-6", "4-5-6", "5-6-7", "5-8-7", "6-5-8", "8-7-6"};
        }
        return null;
    }

    public static String[] getAreas(int i) {
        if (i == Step.K2_ShangPoQiBu.type || i == Step.B2_ShangPoQiBu.type) {
            return new String[]{"5-6-7-8区域"};
        }
        return null;
    }

    public static List<LineTipTypeModel> getLineTipTypes(int i) {
        ArrayList arrayList = new ArrayList(Arrays.asList(values()));
        if (i != Step.K2_ShangPoQiBu.type && i != Step.B2_ShangPoQiBu.type) {
            arrayList.remove(Area);
        }
        if (i != Step.K2_DaoCheRuKu.type && i != Step.K2_CeFangTingChe.type && i != Step.B2_CeFangTingChe.type) {
            arrayList.remove(Frame);
        }
        if (i == Step.K2_SQuXian.type || i == Step.K2_SuiDao.type || i == Step.B2_SQuXian.type || i == Step.B2_ShiHuaLuMian.type || i == Step.B2_SuiDao.type || i == Step.B2_ShanLu.type || i == Step.B2_ChunHuaLu.type) {
            arrayList.remove(Dot);
            arrayList.remove(Angle);
        }
        if (i == Step.K2_ETC.type || i == Step.K2_ZhaiLuDiaoTou.type || i == Step.K2_QuKa.type || i == Step.K2_JinJiQingKuang.type || i == Step.B2_DanBian.type || i == Step.B2_XianKuan.type || i == Step.B2_ZhangAi.type || i == Step.B2_QiFu.type || i == Step.B2_GaoSu.type) {
            arrayList.remove(Angle);
        }
        if (TeachModelEditor.l()) {
            arrayList.remove(Frame);
        }
        return arrayList;
    }

    public static int[] getPoints(int i) {
        if (i == Step.K2_CeFangTingChe.type || i == Step.K2_DaoCheRuKu.type || i == Step.B2_CeFangTingChe.type) {
            return new int[]{1, 2, 3, 4, 5, 6, 7, 8};
        }
        if (i == Step.K2_ZhiJiaoZhuanWan.type || i == Step.K2_ETC.type || i == Step.K2_QuKa.type || i == Step.K2_JinJiQingKuang.type || i == Step.B2_ZhiJiaoZhuanWan.type || i == Step.B2_JinJiQingKuang.type) {
            return new int[]{1, 2, 3, 4, 5, 6};
        }
        if (i == Step.K2_ShangPoQiBu.type || i == Step.B2_ShangPoQiBu.type || i == Step.B2_ZhuangKao.type || i == Step.B2_XianKuan.type || i == Step.B2_ZhangAi.type) {
            return new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        }
        if (i == Step.K2_ZhaiLuDiaoTou.type || i == Step.B2_ZhaiLuDiaoTou.type) {
            return new int[]{1, 2, 3, 4};
        }
        if (i == Step.B2_DanBian.type || i == Step.B2_QiFu.type || i == Step.B2_GaoSu.type) {
            return new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
        }
        return null;
    }

    public static List<String> getTypeNames(int i) {
        List<LineTipTypeModel> lineTipTypes = getLineTipTypes(i);
        ArrayList arrayList = new ArrayList();
        Iterator<LineTipTypeModel> it = lineTipTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().name);
        }
        return arrayList;
    }

    public int getType() {
        return this.type;
    }
}
