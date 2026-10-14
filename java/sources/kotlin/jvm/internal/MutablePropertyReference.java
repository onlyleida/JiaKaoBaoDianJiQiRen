package kotlin.jvm.internal;

import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MutablePropertyReference extends PropertyReference implements KProperty {
    public MutablePropertyReference() {
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public abstract /* synthetic */ KProperty.a<V> getGetter();

    public abstract /* synthetic */ kotlin.reflect.h<V> getSetter();

    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}
