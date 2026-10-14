package cn.mucang.jiakaoyi.uilib.model;

import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.model.ListViewModel$loadData$1", f = "ListViewModel.kt", l = {}, m = "invokeSuspend")
final class ListViewModel$loadData$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ boolean $firstLoad;
    int label;
    final /* synthetic */ ListViewModel<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListViewModel$loadData$1(ListViewModel<T> listViewModel, boolean z, Continuation<? super ListViewModel$loadData$1> continuation) {
        super(2, continuation);
        this.this$0 = listViewModel;
        this.$firstLoad = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ListViewModel$loadData$1(this.this$0, this.$firstLoad, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ListViewModel$loadData$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        try {
            ListViewModel<T> listViewModel = this.this$0;
            cn.mucang.android.core.api.d.b bVarE = listViewModel.e(((ListViewModel) listViewModel).c);
            ListViewModel<T> listViewModel2 = this.this$0;
            String strA = bVarE.a();
            r.d(strA, "response.cursor");
            ((ListViewModel) listViewModel2).c = strA;
            this.this$0.f(bVarE.c());
            if (this.$firstLoad) {
                this.this$0.c().u(bVarE.b());
            } else {
                this.this$0.c().q(bVarE.b());
            }
            this.this$0.d().l(LoadingState.Success);
        } catch (Exception unused) {
            this.this$0.d().l(LoadingState.Fail);
        }
        return v.f15822a;
    }
}
