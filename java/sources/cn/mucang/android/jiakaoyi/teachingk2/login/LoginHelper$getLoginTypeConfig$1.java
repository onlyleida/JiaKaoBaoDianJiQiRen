package cn.mucang.android.jiakaoyi.teachingk2.login;

import cn.mucang.jiakaoyi.uilib.login.api.LoginConfigApi;
import cn.mucang.jiakaoyi.uilib.login.model.ConfigLoginItem;
import cn.mucang.jiakaoyi.uilib.login.model.ConfigLoginType;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper$getLoginTypeConfig$1", f = "LoginHelper.kt", l = {34}, m = "invokeSuspend")
final class LoginHelper$getLoginTypeConfig$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    Object L$0;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper$getLoginTypeConfig$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper$getLoginTypeConfig$1$1", f = "LoginHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super Result<? extends v>>, Object> {
        final /* synthetic */ Ref$ObjectRef<List<ConfigLoginType>> $list;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<List<ConfigLoginType>> ref$ObjectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$list = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$list, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(i0 i0Var, Continuation<? super Result<? extends v>> continuation) {
            return invoke2(i0Var, (Continuation<? super Result<v>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 i0Var, Continuation<? super Result<v>> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object, java.util.ArrayList, java.util.Collection] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM139constructorimpl;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            Ref$ObjectRef<List<ConfigLoginType>> ref$ObjectRef = this.$list;
            try {
                Result.Companion companion = Result.INSTANCE;
                List<ConfigLoginItem> listM = new LoginConfigApi().m();
                cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("服务器配置登录方式：", JSON.toJSONString(listM)));
                ArrayList arrayList = new ArrayList();
                for (ConfigLoginItem configLoginItem : listM) {
                    LoginType loginTypeA = LoginType.INSTANCE.a(configLoginItem.getLoginMethod());
                    if (loginTypeA != null) {
                        ConfigLoginType configLoginType = new ConfigLoginType();
                        configLoginType.setLoginMethod(loginTypeA);
                        configLoginType.setEnabled(configLoginItem.getEnabled());
                        arrayList.add(configLoginType);
                    }
                }
                ?? arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    ConfigLoginType configLoginType2 = (ConfigLoginType) obj2;
                    if (configLoginType2.getLoginMethod() == LoginType.QR_CODE || configLoginType2.getLoginMethod() == LoginType.MOBILE_OR_IDCARD || configLoginType2.getLoginMethod() == LoginType.ID_CARD || configLoginType2.getLoginMethod() == LoginType.FACE || configLoginType2.getLoginMethod() == LoginType.COACH_QR_CODE || configLoginType2.getLoginMethod() == LoginType.TAIZHOU) {
                        arrayList2.add(obj2);
                    }
                }
                ref$ObjectRef.element = arrayList2;
                cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("配置登录方式过滤支持的方式后 ", JSON.toJSONString(arrayList2)));
                objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("获取服务器配置登录方式失败：", thM142exceptionOrNullimpl.getMessage()));
            }
            return Result.m138boximpl(objM139constructorimpl);
        }
    }

    LoginHelper$getLoginTypeConfig$1(Continuation<? super LoginHelper$getLoginTypeConfig$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new LoginHelper$getLoginTypeConfig$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((LoginHelper$getLoginTypeConfig$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef2, null);
            this.L$0 = ref$ObjectRef2;
            this.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) this.L$0;
            kotlin.k.b(obj);
        }
        if (cn.mucang.android.core.utils.g.d((Collection) ref$ObjectRef.element)) {
            LoginHelper.b.clear();
            cn.mucang.android.jiakaoyi.framework.utils.i0.m("keyLoginType", JSON.toJSONString(ref$ObjectRef.element));
            List<ConfigLoginType> list = (List) ref$ObjectRef.element;
            if (list != null) {
                for (ConfigLoginType configLoginType : list) {
                    if (configLoginType.getEnabled() && configLoginType.getLoginMethod() != null) {
                        List list2 = LoginHelper.b;
                        LoginType loginMethod = configLoginType.getLoginMethod();
                        r.c(loginMethod);
                        list2.add(loginMethod);
                    }
                }
            }
        }
        return v.f15822a;
    }
}
