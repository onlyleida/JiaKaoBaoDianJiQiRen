package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1517a;
    private final n0 b;

    public static class a extends d {
        private static a sInstance;
        private Application mApplication;

        public a(Application application) {
            this.mApplication = application;
        }

        public static a getInstance(Application application) {
            if (sInstance == null) {
                sInstance = new a(application);
            }
            return sInstance;
        }

        @Override // androidx.lifecycle.m0.d, androidx.lifecycle.m0.b
        public <T extends j0> T create(Class<T> cls) {
            if (!androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                return (T) super.create(cls);
            }
            try {
                return cls.getConstructor(Application.class).newInstance(this.mApplication);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException("Cannot create an instance of " + cls, e5);
            }
        }
    }

    public interface b {
        <T extends j0> T create(Class<T> cls);
    }

    static abstract class c extends e implements b {
        c() {
        }

        public abstract <T extends j0> T b(String str, Class<T> cls);

        public <T extends j0> T create(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }
    }

    public static class d implements b {
        private static d sInstance;

        static d getInstance() {
            if (sInstance == null) {
                sInstance = new d();
            }
            return sInstance;
        }

        @Override // androidx.lifecycle.m0.b
        public <T extends j0> T create(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            }
        }
    }

    static class e {
        e() {
        }

        void a(j0 j0Var) {
        }
    }

    public m0(o0 o0Var) {
        this(o0Var.getViewModelStore(), o0Var instanceof l ? ((l) o0Var).getDefaultViewModelProviderFactory() : d.getInstance());
    }

    public <T extends j0> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T extends j0> T b(String str, Class<T> cls) {
        T t = (T) this.b.b(str);
        if (cls.isInstance(t)) {
            Object obj = this.f1517a;
            if (obj instanceof e) {
                ((e) obj).a(t);
            }
            return t;
        }
        b bVar = this.f1517a;
        T t2 = bVar instanceof c ? (T) ((c) bVar).b(str, cls) : (T) bVar.create(cls);
        this.b.d(str, t2);
        return t2;
    }

    public m0(o0 o0Var, b bVar) {
        this(o0Var.getViewModelStore(), bVar);
    }

    public m0(n0 n0Var, b bVar) {
        this.f1517a = bVar;
        this.b = n0Var;
    }
}
