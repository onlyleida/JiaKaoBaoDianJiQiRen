package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import com.serenegiant.net.SocketChannelDataLink;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.s, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000e0\r2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00110\rJ\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00132\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDataCreator;", "", "()V", "HomeUrl", "", "createParam", "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelDialogParam;", "sortList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "config", "lastConfig", "getLevelData", "Lkotlin/Function1;", "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;", "getLevelDataArray", "", "Landroid/util/SparseArray;", "getJumpUrl", "Lkotlin/Pair;", "allDone", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NextLevelDataCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NextLevelDataCreator f7278a = new NextLevelDataCreator();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.s$a */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7279a;

        static {
            int[] iArr = new int[StepTrainSubtype.values().length];
            iArr[StepTrainSubtype.Exam.ordinal()] = 1;
            iArr[StepTrainSubtype.HelpTeach.ordinal()] = 2;
            iArr[StepTrainSubtype.Video.ordinal()] = 3;
            f7279a = iArr;
        }
    }

    private NextLevelDataCreator() {
    }

    public final LevelDialogParam a(List<ConfigLevelModel> sortList, ConfigLevelModel config, ConfigLevelModel configLevelModel, Function1<? super ConfigLevelModel, UserLevelData> getLevelData, Function1<? super Integer, ? extends SparseArray<UserLevelData>> getLevelDataArray) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i;
        kotlin.jvm.internal.r.e(sortList, "sortList");
        kotlin.jvm.internal.r.e(config, "config");
        kotlin.jvm.internal.r.e(getLevelData, "getLevelData");
        kotlin.jvm.internal.r.e(getLevelDataArray, "getLevelDataArray");
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ConfigLevelModel configLevelModel2 : sortList) {
            UserLevelData userLevelDataInvoke = getLevelData.invoke(configLevelModel2);
            if (userLevelDataInvoke.getPass()) {
                i = 2;
            } else if (config.getCode() == configLevelModel2.getCode() && config.getId() == configLevelModel2.getId()) {
                i = 3;
            } else {
                i = userLevelDataInvoke.getNotTrained() ? 0 : 1;
            }
            if (i != 2 && z) {
                z = false;
            }
            arrayList.add(new LevelItemStatus(configLevelModel2.getDescription(), "", configLevelModel2.getTrainDesc(userLevelDataInvoke, getLevelDataArray.invoke(Integer.valueOf(configLevelModel2.getCode()))), i));
        }
        Pair<String, String> pairB = b(config, z);
        if (z) {
            String strA = k0.a(R.string.teachbase_complete_guide_train);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_complete_guide_train)");
            String strA2 = k0.a(R.string.teachbase_continue_train);
            kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_continue_train)");
            str4 = strA;
            str3 = "";
            str5 = strA2;
        } else {
            if (configLevelModel != null) {
                TutorialLevel tutorialLevelA = TutorialLevel.INSTANCE.a(configLevelModel.getCode());
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA3 = k0.a(R.string.teachbase_congratulations);
                kotlin.jvm.internal.r.d(strA3, "getString(R.string.teachbase_congratulations)");
                str = String.format(strA3, Arrays.copyOf(new Object[]{tutorialLevelA.getTitle()}, 1));
                kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
                String strA4 = k0.a(R.string.teachbase_recommend_train);
                kotlin.jvm.internal.r.d(strA4, "getString(R.string.teachbase_recommend_train)");
                str2 = String.format(strA4, Arrays.copyOf(new Object[]{config.getDescription()}, 1));
                kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
            } else {
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.f14671a;
                String strA5 = k0.a(R.string.teachbase_welcome_proj);
                kotlin.jvm.internal.r.d(strA5, "getString(R.string.teachbase_welcome_proj)");
                str = String.format(strA5, Arrays.copyOf(new Object[]{TutorialLevel.INSTANCE.a(config.getCode()).getTitle()}, 1));
                kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
                String strA6 = k0.a(R.string.teachbase_train_uncomplete_continute);
                kotlin.jvm.internal.r.d(strA6, "getString(R.string.teach…ain_uncomplete_continute)");
                str2 = String.format(strA6, Arrays.copyOf(new Object[]{config.getDescription()}, 1));
                kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
            }
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f14671a;
            String strA7 = k0.a(R.string.teachbase_teachbase_recommend_train2);
            kotlin.jvm.internal.r.d(strA7, "getString(R.string.teach…achbase_recommend_train2)");
            String str6 = String.format(strA7, Arrays.copyOf(new Object[]{config.getDescription()}, 1));
            kotlin.jvm.internal.r.d(str6, "java.lang.String.format(format, *args)");
            str3 = str6;
            str4 = str;
            str5 = str2;
        }
        String strA8 = k0.a(R.string.teachbase_start_train2);
        kotlin.jvm.internal.r.d(strA8, "getString(R.string.teachbase_start_train2)");
        String first = pairB.getFirst();
        String second = pairB.getSecond();
        Boolean boolE = UserLevelManager.f7249a.k().e();
        if (boolE == null) {
            boolE = Boolean.FALSE;
        }
        return new LevelDialogParam(str4, str5, str3, strA8, first, second, arrayList, boolE.booleanValue());
    }

    public final Pair<String, String> b(ConfigLevelModel config, boolean z) {
        int videoSubType;
        kotlin.jvm.internal.r.e(config, "config");
        if (z) {
            return new Pair<>("http://robot.nav.mucang.cn/callUnity?page=1000", "");
        }
        TutorialLevel tutorialLevelA = TutorialLevel.INSTANCE.a(config.getCode());
        int pageCode = tutorialLevelA.getPageCode();
        int id = config.getId();
        boolean z2 = true;
        int i = 0;
        if (pageCode < 0) {
            int i2 = a.f7279a[StepTrainSubtype.INSTANCE.a(config.getId()).ordinal()];
            if (i2 == 1) {
                pageCode = SocketChannelDataLink.DEFAULT_SERVER_PORT;
                id = 6005;
            } else if (i2 != 2) {
                if (i2 == 3) {
                    videoSubType = config.getVideoSubType();
                } else {
                    videoSubType = 0;
                    z2 = false;
                }
                id = videoSubType;
                pageCode = 2000;
            } else {
                pageCode = 7100;
                id = 0;
            }
            z2 = false;
        } else if (tutorialLevelA != TutorialLevel.Video) {
            z2 = false;
        }
        String str = z2 ? "http://robot.nav.mucang.cn/callUnity?page=1000" : "";
        if (tutorialLevelA != TutorialLevel.CircleTrain && tutorialLevelA != TutorialLevel.ComplexTrain) {
            i = id;
        }
        return new Pair<>("http://robot.nav.mucang.cn/callUnity?page=" + pageCode + "&child=" + i + "&must=true&code=" + config.getCode() + "&subCode=" + config.getId(), str);
    }
}
