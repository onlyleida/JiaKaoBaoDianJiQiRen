package me.drakeet.multitype;

/* JADX INFO: loaded from: classes6.dex */
class BinderNotFoundException extends RuntimeException {
    BinderNotFoundException(Class<?> cls) {
        super("Do you have registered the binder for {className}.class in the adapter/pool?".replace("{className}", cls.getSimpleName()));
    }
}
