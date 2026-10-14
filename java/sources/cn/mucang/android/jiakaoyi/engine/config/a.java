package cn.mucang.android.jiakaoyi.engine.config;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<? extends BaseStepConfig>, Map<String, Field>> f3078a = new HashMap();

    private static Map<String, Field> a(Class cls) {
        HashMap map = new HashMap();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isFinal(field.getModifiers()) && !Modifier.isStatic(field.getModifiers()) && !Modifier.isTransient(field.getModifiers())) {
                    String name = field.getName();
                    if (name.startsWith(TtmlNode.TAG_P)) {
                        field.setAccessible(true);
                        map.put(name, field);
                    }
                }
            }
            cls = cls.getSuperclass();
        }
        return map;
    }

    public static void b(List<RuleConfig> list, Map<Step, BaseStepConfig> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, RuleConfig> mapD = d(list);
        Iterator<BaseStepConfig> it = map.values().iterator();
        while (it.hasNext()) {
            c(it.next(), mapD);
        }
        if (!mapD.isEmpty()) {
            Iterator<String> it2 = mapD.keySet().iterator();
            while (it2.hasNext()) {
                f.o("ConfigSetter : key =  " + it2.next() + " 本地没有实现");
            }
        }
        f.o("RuleConfig : 反射生成配置的时间=" + (System.currentTimeMillis() - jCurrentTimeMillis));
    }

    public static void c(BaseStepConfig baseStepConfig, Map<String, RuleConfig> map) {
        Class<?> cls = baseStepConfig.getClass();
        Map<Class<? extends BaseStepConfig>, Map<String, Field>> map2 = f3078a;
        Map<String, Field> mapA = map2.get(cls);
        if (g.c(mapA)) {
            mapA = a(cls);
            map2.put((Class<? extends BaseStepConfig>) cls, mapA);
        }
        for (Map.Entry<String, Field> entry : mapA.entrySet()) {
            Field value = entry.getValue();
            value.setAccessible(true);
            String key = entry.getKey();
            try {
                RuleConfig ruleConfigRemove = map.remove(key);
                if (ruleConfigRemove == null) {
                    throw new NullPointerException(key + "为空");
                }
                value.set(baseStepConfig, ruleConfigRemove);
            } catch (Throwable th) {
                t.d("ConfigSetter", "设置失败 : " + th);
                u.h(key + "设置失败 : " + th.getMessage());
                f.o("ConfigSetter : setConfig : 设置失败 : " + key + " , " + th.getLocalizedMessage());
                throw new RuntimeException(th);
            }
        }
    }

    public static Map<String, RuleConfig> d(List<RuleConfig> list) {
        HashMap map = new HashMap();
        for (RuleConfig ruleConfig : list) {
            map.put(TtmlNode.TAG_P + ruleConfig.ruleId, ruleConfig);
        }
        return map;
    }
}
