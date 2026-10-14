package cn.mucang.android.jiakaoyi.mapcollect.collect.a1;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.b1.d;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.e;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f4749a = -1;
    private static int b;
    private static final Map<String, List<?>> c = new HashMap();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a$a, reason: collision with other inner class name */
    public static class C0116a<T extends SourceData<T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e<T> f4750a;
        public final Class<T> b;
        private final List<T> c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Step f4751d;

        public C0116a(String str, Class<T> cls, Step step) {
            this.b = cls;
            this.f4751d = step;
            this.f4750a = new e<>(str, cls);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(JSONObject jSONObject, int i) {
            if (i != this.f4751d.type) {
                return;
            }
            try {
                this.c.add((T) jSONObject.toJavaObject((Class) this.b));
            } catch (Throwable th) {
                t.d("TAG", "解析数据失败 : " + th.getLocalizedMessage());
                f.o(this.f4751d.zhStepName + ";地图数据转对象失败：" + JSON.toJSONString(jSONObject) + "---" + this.b.getSimpleName());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<T> d() {
            this.f4750a.d(this.c, true);
            return this.c;
        }
    }

    public static <T> List<T> a(String str, Class<T> cls) {
        List<T> list = (List) c.get(str + cls.getSimpleName());
        return list == null ? new ArrayList() : list;
    }

    public static boolean b(long j) {
        return c.isEmpty() || f4749a != j;
    }

    public static void c(long j, String str) {
        try {
            JSONArray array = JSON.parseArray(str);
            if (array.isEmpty()) {
                return;
            }
            c.clear();
            f4749a = j;
            b = str.hashCode();
            List<C0116a<?>> listH = d.c().h(String.valueOf(j));
            for (int i = 0; i < array.size(); i++) {
                JSONObject jSONObject = array.getJSONObject(i);
                int iIntValue = jSONObject.getInteger("stepId").intValue();
                Iterator<C0116a<?>> it = listH.iterator();
                while (it.hasNext()) {
                    it.next().c(jSONObject, iIntValue);
                }
            }
            for (C0116a<?> c0116a : listH) {
                List<?> listD = c0116a.d();
                c.put(j + c0116a.b.getSimpleName(), listD);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            f.o("地图数据解析异常：" + q0.d(e2));
        }
    }

    public static void d(ExamSiteModel examSiteModel, long j) {
        try {
            if (f4749a != j) {
                c(j, examSiteModel.mapData);
            } else if (n0.g(examSiteModel.mapData) && b != examSiteModel.mapData.hashCode()) {
                c(j, examSiteModel.mapData);
            }
        } catch (Throwable th) {
            t.d("TAG", "解析错误 : " + th.getLocalizedMessage());
        }
    }
}
