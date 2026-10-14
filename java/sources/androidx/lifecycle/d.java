package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class d {
    static d c = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, a> f1486a = new HashMap();
    private final Map<Class<?>, Boolean> b = new HashMap();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map<Lifecycle.Event, List<b>> f1487a = new HashMap();
        final Map<b, Lifecycle.Event> b;

        a(Map<b, Lifecycle.Event> map) {
            this.b = map;
            for (Map.Entry<b, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<b> arrayList = this.f1487a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f1487a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        private static void b(List<b> list, r rVar, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(rVar, event, obj);
                }
            }
        }

        void a(r rVar, Lifecycle.Event event, Object obj) {
            b(this.f1487a.get(event), rVar, event, obj);
            b(this.f1487a.get(Lifecycle.Event.ON_ANY), rVar, event, obj);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f1488a;
        final Method b;

        b(int i, Method method) {
            this.f1488a = i;
            this.b = method;
            method.setAccessible(true);
        }

        void a(r rVar, Lifecycle.Event event, Object obj) {
            try {
                int i = this.f1488a;
                if (i == 0) {
                    this.b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.b.invoke(obj, rVar);
                } else {
                    if (i != 2) {
                        return;
                    }
                    this.b.invoke(obj, rVar, event);
                }
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to call observer method", e3.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f1488a == bVar.f1488a && this.b.getName().equals(bVar.b.getName());
        }

        public int hashCode() {
            return (this.f1488a * 31) + this.b.getName().hashCode();
        }
    }

    d() {
    }

    private a a(Class<?> cls, Method[] methodArr) {
        int i;
        a aVarC;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarC = c(superclass)) != null) {
            map.putAll(aVarC.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, Lifecycle.Event> entry : c(cls2).b.entrySet()) {
                e(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            b0 b0Var = (b0) method.getAnnotation(b0.class);
            if (b0Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(r.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Lifecycle.Event eventValue = b0Var.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (eventValue != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                e(map, new b(i, method), eventValue, cls);
                z = true;
            }
        }
        a aVar = new a(map);
        this.f1486a.put(cls, aVar);
        this.b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    private Method[] b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e2) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
        }
    }

    private void e(Map<b, Lifecycle.Event> map, b bVar, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(bVar);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(bVar, event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }

    a c(Class<?> cls) {
        a aVar = this.f1486a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    boolean d(Class<?> cls) {
        Boolean bool = this.b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] methodArrB = b(cls);
        for (Method method : methodArrB) {
            if (((b0) method.getAnnotation(b0.class)) != null) {
                a(cls, methodArrB);
                return true;
            }
        }
        this.b.put(cls, Boolean.FALSE);
        return false;
    }
}
