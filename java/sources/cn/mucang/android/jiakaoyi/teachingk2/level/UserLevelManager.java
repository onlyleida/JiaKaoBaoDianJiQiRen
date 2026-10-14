package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.app.Activity;
import android.content.DialogInterface;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.a0;
import androidx.lifecycle.z;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceDeductModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepModel;
import cn.mucang.android.jiakaoyi.engine.trace.upload.TraceDetailInfo;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConditionGroup;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConditionModel;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.LevelPassModel;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.StepSettingManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.LoadingCloseModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordApi;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.u;
import kotlin.collections.y;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\"\u001a\u00020#H\u0002J\u000e\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00140\u001cH\u0007J \u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010'\u001a\u00020\u00112\b\u0010(\u001a\u0004\u0018\u00010\u0004J\n\u0010)\u001a\u0004\u0018\u00010\u0014H\u0002J\b\u0010*\u001a\u00020#H\u0007J\u0010\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020\u0018H\u0002J(\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H\u0007J&\u00101\u001a\u00020\n2\u0006\u00102\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0014H\u0007J\u0018\u00105\u001a\u00020#2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0007J\u0010\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020\u0004H\u0002J\b\u0010<\u001a\u00020#H\u0002J\b\u0010=\u001a\u00020#H\u0007J\b\u0010>\u001a\u00020#H\u0007J\u0010\u0010?\u001a\u00020#2\u0006\u0010;\u001a\u00020\u001fH\u0007J\b\u0010@\u001a\u00020#H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001f\u0010\b\u001a\u0010\u0012\f\u0012\n \u000b*\u0004\u0018\u00010\n0\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R6\u0010\u001a\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u001c0\u001bj\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u001c`\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u00130\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;", "", "()V", "TAG", "", "USER_LEVEL_SP", "callback", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;", "closeConfig", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getCloseConfig", "()Landroidx/lifecycle/MutableLiveData;", "configCodeList", "", "Lkotlin/Pair;", "", "configDataArray", "Landroid/util/SparseArray;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "currentLevel", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;", "showFlag", "subStepMap", "Ljava/util/LinkedHashMap;", "", "Lkotlin/collections/LinkedHashMap;", "userDataArray", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "videoMap", "Landroid/util/SparseIntArray;", "calculateStep", "", "getComplexTrainList", "getLevelData", "code", TtmlNode.ATTR_ID, Constant.PROTOCOL_WEBVIEW_NAME, "getTrainingStep", "getUserData", "handleTraceInfo", "it", "handleUrl", "page", "child", "subCode", "judgeDialogShow", "byClick", "configLevelModel", "lastConfig", "onRecordChanged", "record", "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;", "duration", "", "savePassStatus", "data", "setLoadFlag", "setResumeFlag", "showGuideDialog", "updateFpData", "uploadPassStatus", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UserLevelManager {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ConfigLevelModel f7253g;
    private static final LinkedHashMap<String, List<Integer>> i;
    private static int j;
    private static final a0<TraceDetailInfo> k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserLevelManager f7249a = new UserLevelManager();
    private static final z<Boolean> b = new z<>(Boolean.TRUE);
    private static final SparseArray<SparseArray<ConfigLevelModel>> c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<Pair<Integer, Integer>> f7250d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final SparseIntArray f7251e = new SparseIntArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final SparseArray<SparseArray<UserLevelData>> f7252f = new SparseArray<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final LevelChangeCallback f7254h = new LevelChangeCallback();

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((ConfigLevelModel) t).getPosition()), Integer.valueOf(((ConfigLevelModel) t2).getPosition()));
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$3", "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;", "priority", "", "getPriority", "()I", "show", "", "finishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements DialogMgr.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f7255a = 1;
        final /* synthetic */ LevelDialogParam b;

        b(LevelDialogParam levelDialogParam) {
            this.b = levelDialogParam;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(cn.mucang.android.jiakaoyi.framework.h.b bVar, b this$0, DialogInterface dialogInterface) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            if (bVar == null) {
                return;
            }
            bVar.callback(this$0);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getF7240a() {
            return this.f7255a;
        }

        @Override // cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr.a
        public void c(final cn.mucang.android.jiakaoyi.framework.h.b<DialogMgr.a> bVar) {
            Activity activityI = MucangConfig.i();
            kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
            NextLevelDialog nextLevelDialog = new NextLevelDialog(activityI, this.b);
            nextLevelDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.l
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    UserLevelManager.b.d(bVar, this, dialogInterface);
                }
            });
            nextLevelDialog.show();
        }
    }

    static {
        LinkedHashMap<String, List<Integer>> linkedHashMap = new LinkedHashMap<>();
        i = linkedHashMap;
        k = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                UserLevelManager.x((TraceDetailInfo) obj);
            }
        };
        linkedHashMap.put(String.valueOf(StepTrainSubtype.Train.getServerCode()), u.m(2, 3, 4, 5));
        linkedHashMap.put(String.valueOf(StepTrainSubtype.DaoKuLeft.getServerCode()), u.m(3, 4));
        linkedHashMap.put(String.valueOf(StepTrainSubtype.DaoKuRight.getServerCode()), u.m(2, 5));
    }

    private UserLevelManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        int iF = cn.mucang.android.jiakaoyi.signal.d.j.a.f(j, 0, true);
        j = iF;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置加载标记：", Integer.valueOf(iF)));
        if (j == 3) {
            t(false, f7253g, null, 4, null);
        }
    }

    public static final void B() {
        int iF = cn.mucang.android.jiakaoyi.signal.d.j.a.f(j, 1, true);
        j = iF;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置恢复标记：", Integer.valueOf(iF)));
        if (j == 3) {
            t(false, f7253g, null, 4, null);
        }
    }

    public static final void C() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        UserLevelManager userLevelManager = f7249a;
        Iterator<T> it = f7250d.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = Integer.MAX_VALUE;
                break;
            }
            Object next = it.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            Pair pair = (Pair) next;
            if (!userLevelManager.m(((Number) pair.getFirst()).intValue(), ((Number) pair.getSecond()).intValue(), "").getPass()) {
                break;
            } else {
                i2 = i3;
            }
        }
        int i4 = 0;
        for (Object obj : f7250d) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            Pair pair2 = (Pair) obj;
            if (i4 < i2) {
                if (linkedHashMap.get(pair2.getFirst()) == null) {
                    linkedHashMap.put(pair2.getFirst(), 2);
                }
            } else if (i4 == i2) {
                linkedHashMap.put(pair2.getFirst(), 3);
            } else if (linkedHashMap.get(pair2.getFirst()) == null) {
                linkedHashMap.put(pair2.getFirst(), 0);
            }
            i4 = i5;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            TutorialLevel tutorialLevelA = TutorialLevel.INSTANCE.a(((Number) entry.getKey()).intValue());
            if (tutorialLevelA != TutorialLevel.None) {
                arrayList.add(new Pair(tutorialLevelA.getTitle(), entry.getValue()));
            }
        }
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        new LevelGuideDialog(activityI, arrayList).show();
    }

    public static final void D(UserLevelData data) {
        kotlin.jvm.internal.r.e(data, "data");
        if (cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.b()) {
            FirstPracticeStep firstPracticeStepJ = cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().j(FirstPracticeStep.findByCode(data.getSubCode()));
            if (firstPracticeStepJ != FirstPracticeStep.DaoKu_Done) {
                cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().k(firstPracticeStepJ);
                return;
            }
            Activity activityI = MucangConfig.i();
            kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
            String strA = k0.a(R.string.teachbase_pass_fp);
            String strA2 = k0.a(R.string.teachbase_pass_fp_continue);
            kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_pass_fp_continue)");
            new JCommonDialog(activityI, new JCommonDialog.DialogParams(strA, strA2, (String) null, (View.OnClickListener) null, k0.a(R.string.teachbase_i_knew), (View.OnClickListener) new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserLevelManager.E(view);
                }
            }, false, 76, (kotlin.jvm.internal.o) null)).show();
            return;
        }
        UserLevelManager userLevelManager = f7249a;
        UserLevelData userLevelDataM = userLevelManager.m(data.getCode(), data.getSubCode(), "");
        UserItemData data2 = data.getData();
        if (data2 != null) {
            UserItemData data3 = data.getData();
            float costTime = BitmapDescriptorFactory.HUE_RED;
            float costTime2 = data3 == null ? BitmapDescriptorFactory.HUE_RED : data3.getCostTime();
            UserItemData data4 = userLevelDataM.getData();
            if (data4 != null) {
                costTime = data4.getCostTime();
            }
            data2.setCostTime(costTime2 + costTime);
        }
        f7252f.get(data.getCode()).put(data.getSubCode(), data);
        userLevelManager.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(View view) {
        f.a.a.a.activity.h.e("http://robot.nav.mucang.cn/callUnity?page=3000");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        Object objM139constructorimpl;
        String string = j0.b("user_level_sp").getString(RobotAccount.j(), "");
        if (n0.f(string)) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            UserRecordApi userRecordApi = new UserRecordApi();
            kotlin.jvm.internal.r.c(string);
            if (userRecordApi.t(string)) {
                j0.b("user_level_sp").edit().remove(RobotAccount.j()).apply();
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("关卡-通关上报成功：", string));
            }
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            t.d("UserLevelManager", thM142exceptionOrNullimpl.getMessage());
            cn.mucang.android.jiakaoyi.framework.log.f.o("关卡-通关上报失败，error：" + ((Object) thM142exceptionOrNullimpl.getMessage()) + " data:" + ((Object) string));
        }
    }

    private final void j() {
        ConfigLevelModel configLevelModelN = n();
        f7254h.a(f7253g, configLevelModelN);
        f7253g = configLevelModelN;
    }

    public static final List<ConfigLevelModel> l() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = f7250d.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            if (((Number) pair.getFirst()).intValue() == TutorialLevel.ComplexTrain.getServerCode()) {
                ConfigLevelModel configLevelModel = c.get(((Number) pair.getFirst()).intValue()).get(((Number) pair.getSecond()).intValue());
                kotlin.jvm.internal.r.d(configLevelModel, "configDataArray[it.first][it.second]");
                arrayList.add(configLevelModel);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConfigLevelModel n() {
        Iterator<T> it = f7250d.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            if (!f7249a.m(((Number) pair.getFirst()).intValue(), ((Number) pair.getSecond()).intValue(), "").getPass()) {
                ConfigLevelModel configLevelModel = c.get(((Number) pair.getFirst()).intValue()).get(((Number) pair.getSecond()).intValue());
                cn.mucang.android.jiakaoyi.framework.log.f.o("计算当前关卡:" + configLevelModel.getCode() + ',' + configLevelModel.getId());
                return configLevelModel;
            }
        }
        return null;
    }

    public static final void o() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new UserLevelManager$getUserData$1(null), 3, null);
    }

    private final void p(TraceDetailInfo traceDetailInfo) {
        boolean z;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("关卡-处理轨迹数据:", JSON.toJSONString(traceDetailInfo)));
        UserRecordModel userRecordModel = new UserRecordModel();
        userRecordModel.setExtra(new UnityRecordModel());
        UnityRecordModel extra = userRecordModel.getExtra();
        if (extra != null) {
            extra.n = 1;
        }
        UnityRecordModel extra2 = userRecordModel.getExtra();
        if (extra2 != null) {
            extra2.pn = traceDetailInfo.getValid() ? 1 : 0;
        }
        Iterator<T> it = traceDetailInfo.getDeductList().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += ((TraceDeductModel) it.next()).sc;
        }
        UnityRecordModel extra3 = userRecordModel.getExtra();
        if (extra3 != null) {
            extra3.pass = 100 - i2 >= traceDetailInfo.getPassScore() ? (byte) 1 : (byte) 0;
        }
        if (traceDetailInfo.getType() != 27 || !n0.g(traceDetailInfo.getSubCode())) {
            if (traceDetailInfo.getType() != 28 || !n0.g(traceDetailInfo.getSubCode())) {
                if (traceDetailInfo.getType() != 1) {
                    if (traceDetailInfo.getType() != 2) {
                        if (traceDetailInfo.getType() != 26) {
                            if (traceDetailInfo.getType() == 0) {
                                TraceStepModel traceStepModel = (TraceStepModel) kotlin.collections.s.e0(traceDetailInfo.getStepList());
                                if (traceStepModel == null) {
                                    return;
                                }
                                userRecordModel.setC(traceStepModel.s);
                                if (traceStepModel.s == Step.K2_DaoCheRuKu.type) {
                                    HashSet hashSet = new HashSet();
                                    Iterator<T> it2 = traceDetailInfo.getStepList().iterator();
                                    while (it2.hasNext()) {
                                        hashSet.add(Integer.valueOf(((TraceStepModel) it2.next()).ss));
                                    }
                                    for (Map.Entry<String, List<Integer>> entry : i.entrySet()) {
                                        Iterator<T> it3 = entry.getValue().iterator();
                                        while (true) {
                                            if (it3.hasNext()) {
                                                if (!hashSet.contains(Integer.valueOf(((Number) it3.next()).intValue()))) {
                                                    z = false;
                                                    break;
                                                }
                                            } else {
                                                z = true;
                                                break;
                                            }
                                        }
                                        if (z) {
                                            UnityRecordModel extra4 = userRecordModel.getExtra();
                                            if (extra4 != null) {
                                                extra4.id = entry.getKey();
                                            }
                                            UnityRecordModel extra5 = userRecordModel.getExtra();
                                            if (extra5 == null) {
                                                break;
                                            }
                                            extra5.pn = 1;
                                            break;
                                        }
                                    }
                                } else {
                                    UnityRecordModel extra6 = userRecordModel.getExtra();
                                    if (extra6 != null) {
                                        extra6.id = String.valueOf(StepTrainSubtype.Train.getServerCode());
                                    }
                                }
                            }
                        } else {
                            TraceStepModel traceStepModel2 = (TraceStepModel) kotlin.collections.s.e0(traceDetailInfo.getStepList());
                            if (traceStepModel2 == null) {
                                return;
                            }
                            userRecordModel.setC(traceStepModel2.s);
                            UnityRecordModel extra7 = userRecordModel.getExtra();
                            if (extra7 != null) {
                                extra7.id = String.valueOf(StepTrainSubtype.HelpTeach.getServerCode());
                            }
                        }
                    } else {
                        TraceStepModel traceStepModel3 = (TraceStepModel) kotlin.collections.s.e0(traceDetailInfo.getStepList());
                        if (traceStepModel3 == null) {
                            return;
                        }
                        userRecordModel.setC(traceStepModel3.s);
                        UnityRecordModel extra8 = userRecordModel.getExtra();
                        if (extra8 != null) {
                            extra8.id = String.valueOf(StepTrainSubtype.Exam.getServerCode());
                        }
                    }
                } else {
                    userRecordModel.setC(TutorialLevel.Exam.getServerCode());
                    UnityRecordModel extra9 = userRecordModel.getExtra();
                    if (extra9 != null) {
                        extra9.id = "150";
                    }
                }
            } else {
                userRecordModel.setC(TutorialLevel.ComplexTrain.getServerCode());
                UnityRecordModel extra10 = userRecordModel.getExtra();
                if (extra10 != null) {
                    extra10.id = traceDetailInfo.getSubCode();
                }
            }
        } else {
            userRecordModel.setC(TutorialLevel.CircleTrain.getServerCode());
            UnityRecordModel extra11 = userRecordModel.getExtra();
            if (extra11 != null) {
                extra11.id = traceDetailInfo.getSubCode();
            }
        }
        UnityRecordModel extra12 = userRecordModel.getExtra();
        if (extra12 != null) {
            extra12.c = userRecordModel.getC();
        }
        y(userRecordModel, ((int) ((traceDetailInfo.getDuration() * 0.001f) * 10)) / 10.0f);
    }

    public static final void q(int i2, int i3, int i4, int i5) {
        int iIntValue;
        List<Integer> trainPassList;
        List<Integer> trainPassList2;
        List<ConditionGroup> conditionGroup;
        if (i4 == TutorialLevel.FirstPractice.getServerCode()) {
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().k(FirstPracticeStep.findByCode(i5));
            cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.a(true, cn.mucang.android.jiakaoyi.teachingk2.v0.e.a.f8700a);
            return;
        }
        if (i4 == TutorialLevel.CircleTrain.getServerCode() || i4 == TutorialLevel.ComplexTrain.getServerCode()) {
            LevelStepCalculator.m(c.get(i4).get(i5), new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$handleUrl$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    StepSettingManager.f8397a.g();
                }
            });
            return;
        }
        if (i2 == TutorialLevel.Exam.getPageCode() && i5 == StepTrainSubtype.Exam.getServerCode()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("关卡跳转单项模拟：" + i2 + ',' + i3 + ',' + i4 + ',' + i5);
            UserLevelData userLevelDataM = f7249a.m(i4, i5, "");
            ConfigLevelModel configLevelModel = c.get(i4).get(i5);
            ArrayList<ConditionModel> arrayList = new ArrayList();
            if (configLevelModel != null && (conditionGroup = configLevelModel.getConditionGroup()) != null) {
                for (ConditionGroup conditionGroup2 : conditionGroup) {
                    if (cn.mucang.android.core.utils.g.d(conditionGroup2.getConditions())) {
                        List<ConditionModel> conditions = conditionGroup2.getConditions();
                        kotlin.jvm.internal.r.c(conditions);
                        arrayList.addAll(conditions);
                    }
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("关卡数据：" + ((Object) JSON.toJSONString(userLevelDataM)) + ',' + ((Object) JSON.toJSONString(configLevelModel)));
            for (ConditionModel conditionModel : arrayList) {
                if (conditionModel.getType() == 7) {
                    List listP0 = StringsKt__StringsKt.p0(conditionModel.getValue(), new String[]{","}, false, 0, 6, null);
                    ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(listP0, 10));
                    Iterator it = listP0.iterator();
                    while (true) {
                        iIntValue = 0;
                        if (!it.hasNext()) {
                            break;
                        }
                        Integer numJ = kotlin.text.s.j((String) it.next());
                        if (numJ != null) {
                            iIntValue = numJ.intValue();
                        }
                        arrayList2.add(Integer.valueOf(iIntValue));
                    }
                    if (arrayList2.size() == 3) {
                        int iIntValue2 = ((Number) arrayList2.get(0)).intValue();
                        UserItemData data = userLevelDataM.getData();
                        if (((data == null || (trainPassList = data.getTrainPassList()) == null) ? 0 : trainPassList.size()) < iIntValue2) {
                            cn.mucang.android.jiakaoyi.framework.log.f.o("关卡合格率次数不满足，返回");
                            return;
                        }
                        final int iIntValue3 = ((Number) arrayList2.get(1)).intValue();
                        UserItemData data2 = userLevelDataM.getData();
                        if (data2 != null && (trainPassList2 = data2.getTrainPassList()) != null) {
                            int i6 = 0;
                            for (Object obj : trainPassList2) {
                                int i7 = i6 + 1;
                                if (i6 < 0) {
                                    kotlin.collections.s.t();
                                    throw null;
                                }
                                int iIntValue4 = ((Number) obj).intValue();
                                if (i6 < iIntValue2 && iIntValue4 == 1) {
                                    iIntValue++;
                                }
                                i6 = i7;
                            }
                        }
                        int i8 = (iIntValue * 100) / iIntValue2;
                        cn.mucang.android.jiakaoyi.framework.log.f.o("关卡计算合格率：" + i8 + ',' + iIntValue3);
                        if (i8 < iIntValue3) {
                            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.j
                                @Override // java.lang.Runnable
                                public final void run() {
                                    UserLevelManager.r(iIntValue3);
                                }
                            }, 300L);
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(int i2) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_pass_rate_low);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_pass_rate_low)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        RobotTips.Y(str, null, null, -1, null, 22, null);
    }

    public static final boolean s(boolean z, ConfigLevelModel configLevelModel, ConfigLevelModel configLevelModel2) {
        int size;
        int i2 = 0;
        if (!LoadingCloseModel.isUnityLoaded) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("unity 未加载完，不展示导训弹窗");
            return false;
        }
        j = 0;
        if (!z && RobotAccount.f7298a.l()) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("教练登录且不是手动点击，不展示导训弹窗");
            return false;
        }
        if (configLevelModel == null && f7253g == null) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("配置为空，不展示导训弹窗");
            return false;
        }
        if (configLevelModel == null) {
            configLevelModel = f7253g;
            kotlin.jvm.internal.r.c(configLevelModel);
        }
        ConfigLevelModel configLevelModel3 = configLevelModel;
        SparseArray<ConfigLevelModel> sparseArray = c.get(configLevelModel3.getCode());
        ArrayList arrayList = new ArrayList();
        if (sparseArray != null && (size = sparseArray.size()) > 0) {
            while (true) {
                int i3 = i2 + 1;
                sparseArray.keyAt(i2);
                arrayList.add(sparseArray.valueAt(i2));
                if (i3 >= size) {
                    break;
                }
                i2 = i3;
            }
        }
        if (arrayList.size() > 1) {
            y.A(arrayList, new a());
        }
        DialogMgr.d(new b(NextLevelDataCreator.f7278a.a(arrayList, configLevelModel3, configLevelModel2, new Function1<ConfigLevelModel, UserLevelData>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$judgeDialogShow$param$1
            @Override // kotlin.jvm.functions.Function1
            public final UserLevelData invoke(ConfigLevelModel it) {
                kotlin.jvm.internal.r.e(it, "it");
                return UserLevelManager.f7249a.m(it.getCode(), it.getId(), it.getDescription());
            }
        }, new Function1<Integer, SparseArray<UserLevelData>>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$judgeDialogShow$param$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ SparseArray<UserLevelData> invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final SparseArray<UserLevelData> invoke(int i4) {
                Object obj = UserLevelManager.f7252f.get(i4);
                kotlin.jvm.internal.r.d(obj, "userDataArray[it]");
                return (SparseArray) obj;
            }
        })));
        return true;
    }

    public static /* synthetic */ boolean t(boolean z, ConfigLevelModel configLevelModel, ConfigLevelModel configLevelModel2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            configLevelModel2 = null;
        }
        return s(z, configLevelModel, configLevelModel2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(TraceDetailInfo it) {
        UserLevelManager userLevelManager = f7249a;
        kotlin.jvm.internal.r.d(it, "it");
        userLevelManager.p(it);
    }

    public static final void y(UserRecordModel record, float f2) {
        int code;
        int i2;
        String str;
        Integer numJ;
        kotlin.jvm.internal.r.e(record, "record");
        StringBuilder sb = new StringBuilder();
        sb.append("关卡-数据上报：");
        sb.append(f2);
        sb.append(',');
        sb.append((Object) JSON.toJSONString(record));
        sb.append(',');
        UnityRecordModel extra = record.getExtra();
        sb.append((Object) (extra == null ? null : extra.id));
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        int c2 = record.getC();
        if (c2 == RecordEvent.VideoEnd.getCode()) {
            code = RecordEvent.VideoStart.getCode();
        } else {
            code = c2 == RecordEvent.TrainEnd.getCode() ? RecordEvent.TrainStart.getCode() : record.getC();
        }
        UnityRecordModel extra2 = record.getExtra();
        int serverCode = -1;
        if (extra2 != null && (str = extra2.id) != null && (numJ = kotlin.text.s.j(str)) != null) {
            serverCode = numJ.intValue();
        }
        if (code == RecordEvent.VideoStart.getCode() && (i2 = f7251e.get(serverCode)) != 0) {
            serverCode = StepTrainSubtype.Video.getServerCode();
            code = i2;
        }
        SparseArray<ConfigLevelModel> sparseArray = c.get(code);
        ConfigLevelModel configLevelModel = sparseArray == null ? null : sparseArray.get(serverCode);
        if (configLevelModel == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        UserLevelManager userLevelManager = f7249a;
        UserLevelData userLevelDataM = userLevelManager.m(configLevelModel.getCode(), configLevelModel.getId(), configLevelModel.getDescription());
        userLevelDataM.updateData(f2, record.getExtra());
        if (!userLevelDataM.getPass()) {
            SparseArray<UserLevelData> sparseArray2 = f7252f.get(code);
            kotlin.jvm.internal.r.d(sparseArray2, "userDataArray[code]");
            userLevelDataM.setPass(configLevelModel.isPass(userLevelDataM, sparseArray2));
            if (userLevelDataM.getPass()) {
                LevelPassModel levelPassModel = new LevelPassModel();
                levelPassModel.setCode(userLevelDataM.getCode());
                levelPassModel.setSubCode(userLevelDataM.getSubCode());
                levelPassModel.setPass(true);
                v vVar = v.f15822a;
                arrayList.add(levelPassModel);
            }
        }
        if (!arrayList.isEmpty()) {
            String text = JSON.toJSONString(arrayList, SerializerFeature.DisableCircularReferenceDetect);
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("关卡-通关了：", text));
            kotlin.jvm.internal.r.d(text, "text");
            userLevelManager.z(text);
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new UserLevelManager$onRecordChanged$2(null), 3, null);
        } else {
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new UserLevelManager$onRecordChanged$3(userLevelDataM, null), 3, null);
        }
        userLevelManager.j();
    }

    private final void z(String str) {
        j0.b("user_level_sp").edit().putString(RobotAccount.j(), str).apply();
    }

    public final z<Boolean> k() {
        return b;
    }

    public final UserLevelData m(int i2, int i3, String str) {
        if (i2 == 0 && i3 == 0) {
            UserLevelData userLevelData = new UserLevelData();
            userLevelData.setData(new UserItemData());
            userLevelData.setPass(true);
            return userLevelData;
        }
        SparseArray<SparseArray<UserLevelData>> sparseArray = f7252f;
        SparseArray<UserLevelData> sparseArray2 = sparseArray.get(i2);
        if (sparseArray2 == null) {
            sparseArray2 = new SparseArray<>();
            sparseArray.put(i2, sparseArray2);
        }
        UserLevelData userLevelData2 = sparseArray2.get(i3);
        if (userLevelData2 == null) {
            UserLevelData userLevelData3 = new UserLevelData(i2, i3);
            userLevelData3.setName(str);
            sparseArray2.put(i3, userLevelData3);
            return userLevelData3;
        }
        if (userLevelData2.getData() != null) {
            return userLevelData2;
        }
        userLevelData2.setData(new UserItemData());
        return userLevelData2;
    }
}
