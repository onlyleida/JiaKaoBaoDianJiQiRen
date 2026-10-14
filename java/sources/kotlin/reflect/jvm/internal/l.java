package kotlin.reflect.jvm.internal;

import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference2;
import kotlin.jvm.internal.PropertyReference0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference2;
import kotlin.jvm.internal.w;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.jvm.ReflectLambdaKt;

/* JADX INFO: loaded from: classes6.dex */
public class l extends w {
    private static KDeclarationContainerImpl l(CallableReference callableReference) {
        KDeclarationContainer owner = callableReference.getOwner();
        return owner instanceof KDeclarationContainerImpl ? (KDeclarationContainerImpl) owner : EmptyContainerForLocal.f14735d;
    }

    @Override // kotlin.jvm.internal.w
    public KFunction a(FunctionReference functionReference) {
        return new KFunctionImpl(l(functionReference), functionReference.getF14721h(), functionReference.getSignature(), functionReference.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.w
    public KClass b(Class cls) {
        return e.a(cls);
    }

    @Override // kotlin.jvm.internal.w
    public KDeclarationContainer c(Class cls, String str) {
        return new KPackageImpl(cls, str);
    }

    @Override // kotlin.jvm.internal.w
    public KMutableProperty0 d(MutablePropertyReference0 mutablePropertyReference0) {
        return new KMutableProperty0Impl(l(mutablePropertyReference0), mutablePropertyReference0.getF14721h(), mutablePropertyReference0.getSignature(), mutablePropertyReference0.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.w
    public KMutableProperty1 e(MutablePropertyReference1 mutablePropertyReference1) {
        return new KMutableProperty1Impl(l(mutablePropertyReference1), mutablePropertyReference1.getF14721h(), mutablePropertyReference1.getSignature(), mutablePropertyReference1.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.w
    public KMutableProperty2 f(MutablePropertyReference2 mutablePropertyReference2) {
        return new KMutableProperty2Impl(l(mutablePropertyReference2), mutablePropertyReference2.getF14721h(), mutablePropertyReference2.getSignature());
    }

    @Override // kotlin.jvm.internal.w
    public KProperty0 g(PropertyReference0 propertyReference0) {
        return new KProperty0Impl(l(propertyReference0), propertyReference0.getF14721h(), propertyReference0.getSignature(), propertyReference0.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.w
    public KProperty1 h(PropertyReference1 propertyReference1) {
        return new KProperty1Impl(l(propertyReference1), propertyReference1.getF14721h(), propertyReference1.getSignature(), propertyReference1.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.w
    public KProperty2 i(PropertyReference2 propertyReference2) {
        return new KProperty2Impl(l(propertyReference2), propertyReference2.getF14721h(), propertyReference2.getSignature());
    }

    @Override // kotlin.jvm.internal.w
    public String j(FunctionBase functionBase) {
        KFunctionImpl kFunctionImplC;
        KFunction kFunctionA = ReflectLambdaKt.a(functionBase);
        return (kFunctionA == null || (kFunctionImplC = q.c(kFunctionA)) == null) ? super.j(functionBase) : ReflectionObjectRenderer.b.e(kFunctionImplC.w());
    }

    @Override // kotlin.jvm.internal.w
    public String k(Lambda lambda) {
        return j(lambda);
    }
}
