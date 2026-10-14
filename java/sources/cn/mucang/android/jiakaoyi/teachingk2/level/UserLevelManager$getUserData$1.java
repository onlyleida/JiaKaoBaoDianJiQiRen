package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.util.SparseArray;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.z;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.trace.upload.TraceDetailInfo;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.UserDataApi;
import com.alibaba.fastjson.JSON;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$getUserData$1", f = "UserLevelManager.kt", l = {125}, m = "invokeSuspend")
final class UserLevelManager$getUserData$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$getUserData$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$getUserData$1$1", f = "UserLevelManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super Result<? extends v>>, Object> {
        final /* synthetic */ Ref$ObjectRef<List<ConfigLevelModel>> $configList;
        final /* synthetic */ Ref$ObjectRef<List<UserLevelData>> $levelList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$ObjectRef<List<ConfigLevelModel>> ref$ObjectRef, Ref$ObjectRef<List<UserLevelData>> ref$ObjectRef2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$configList = ref$ObjectRef;
            this.$levelList = ref$ObjectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$configList, this.$levelList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(i0 i0Var, Continuation<? super Result<? extends v>> continuation) {
            return invoke2(i0Var, (Continuation<? super Result<v>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 i0Var, Continuation<? super Result<v>> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object, java.util.List] */
        /* JADX WARN: Type inference failed for: r1v9, types: [T, java.lang.Object, java.util.List] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM139constructorimpl;
            Object objM139constructorimpl2;
            ConfigLevelModel configLevelModel;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            UserLevelManager.f7249a.F();
            Ref$ObjectRef<List<ConfigLevelModel>> ref$ObjectRef = this.$configList;
            try {
                Result.Companion companion = Result.INSTANCE;
                ?? M = new DeviceSettingApi().m();
                ref$ObjectRef.element = M;
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("拉到关卡配置:", JSON.toJSONString(M)));
                objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("拉取关卡配置失败:", q0.d(thM142exceptionOrNullimpl)));
                t.d("UserLevelManager", thM142exceptionOrNullimpl.getMessage());
            }
            z<Boolean> zVarK = UserLevelManager.f7249a.k();
            List<ConfigLevelModel> list = this.$configList.element;
            boolean allowClose = false;
            if (list != null && (configLevelModel = (ConfigLevelModel) kotlin.collections.s.e0(list)) != null) {
                allowClose = configLevelModel.getAllowClose();
            }
            zVarK.l(kotlin.coroutines.jvm.internal.a.a(allowClose));
            Ref$ObjectRef<List<UserLevelData>> ref$ObjectRef2 = this.$levelList;
            try {
                Result.Companion companion3 = Result.INSTANCE;
                ?? T = new UserDataApi().t();
                ref$ObjectRef2.element = T;
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("拉到用户数据:", JSON.toJSONString(T)));
                objM139constructorimpl2 = Result.m139constructorimpl(v.f15822a);
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th2));
            }
            Throwable thM142exceptionOrNullimpl2 = Result.m142exceptionOrNullimpl(objM139constructorimpl2);
            if (thM142exceptionOrNullimpl2 != null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("拉取用户数据失败:", q0.d(thM142exceptionOrNullimpl2)));
                t.d("UserLevelManager", thM142exceptionOrNullimpl2.getMessage());
            }
            return Result.m138boximpl(objM139constructorimpl2);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((ConfigLevelModel) t2).getId()), Integer.valueOf(((ConfigLevelModel) t).getId()));
        }
    }

    UserLevelManager$getUserData$1(Continuation<? super UserLevelManager$getUserData$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new UserLevelManager$getUserData$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((UserLevelManager$getUserData$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        List<ConfigLevelModel> listG0;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            UserLevelManager.f7252f.clear();
            UserLevelManager.c.clear();
            UserLevelManager.f7250d.clear();
            UserLevelManager userLevelManager = UserLevelManager.f7249a;
            UserLevelManager.f7253g = null;
            LiveBus.d(TraceDetailInfo.class).m(UserLevelManager.k);
            ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef, ref$ObjectRef3, null);
            this.L$0 = ref$ObjectRef;
            this.L$1 = ref$ObjectRef3;
            this.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
            ref$ObjectRef2 = ref$ObjectRef3;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef2 = (Ref$ObjectRef) this.L$1;
            ref$ObjectRef = (Ref$ObjectRef) this.L$0;
            kotlin.k.b(obj);
        }
        if (cn.mucang.android.core.utils.g.d((Collection) ref$ObjectRef2.element)) {
            T t = ref$ObjectRef2.element;
            kotlin.jvm.internal.r.c(t);
            for (UserLevelData userLevelData : (Iterable) t) {
                SparseArray sparseArray = (SparseArray) UserLevelManager.f7252f.get(userLevelData.getCode());
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    UserLevelManager.f7252f.put(userLevelData.getCode(), sparseArray);
                }
                sparseArray.put(userLevelData.getSubCode(), userLevelData);
            }
        }
        if (cn.mucang.android.core.utils.g.d((Collection) ref$ObjectRef.element)) {
            T t2 = ref$ObjectRef.element;
            kotlin.jvm.internal.r.c(t2);
            int i2 = 0;
            for (Object obj2 : (Iterable) t2) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                ConfigLevelModel configLevelModel = (ConfigLevelModel) obj2;
                if (configLevelModel.getId() != 0) {
                    UserLevelManager.f7250d.add(new Pair(kotlin.coroutines.jvm.internal.a.d(configLevelModel.getCode()), kotlin.coroutines.jvm.internal.a.d(configLevelModel.getId())));
                    configLevelModel.setPosition(i2);
                    UserLevelManager.f7249a.m(configLevelModel.getCode(), configLevelModel.getId(), configLevelModel.getDescription());
                    configLevelModel.createPassHandler();
                    SparseArray sparseArray2 = (SparseArray) UserLevelManager.c.get(configLevelModel.getCode());
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        UserLevelManager.c.put(configLevelModel.getCode(), sparseArray2);
                    }
                    sparseArray2.put(configLevelModel.getId(), configLevelModel);
                    if (configLevelModel.getId() == StepTrainSubtype.Video.getServerCode()) {
                        UserLevelManager.f7251e.put(configLevelModel.getVideoSubType(), configLevelModel.getCode());
                    }
                }
                i2 = i3;
            }
            List list = (List) ref$ObjectRef.element;
            if (list != null && (listG0 = CollectionsKt___CollectionsKt.G0(list, new a())) != null) {
                for (ConfigLevelModel configLevelModel2 : listG0) {
                    UserLevelData userLevelDataM = UserLevelManager.f7249a.m(configLevelModel2.getCode(), configLevelModel2.getId(), configLevelModel2.getDescription());
                    if (!userLevelDataM.getPass()) {
                        Object obj3 = UserLevelManager.f7252f.get(configLevelModel2.getCode());
                        kotlin.jvm.internal.r.d(obj3, "userDataArray[it.code]");
                        userLevelDataM.setPass(configLevelModel2.isPass(userLevelDataM, (SparseArray) obj3));
                    }
                }
            }
        }
        UserLevelManager userLevelManager2 = UserLevelManager.f7249a;
        UserLevelManager.f7253g = userLevelManager2.n();
        LiveBus.d(TraceDetailInfo.class).i(UserLevelManager.k);
        userLevelManager2.A();
        return v.f15822a;
    }
}
