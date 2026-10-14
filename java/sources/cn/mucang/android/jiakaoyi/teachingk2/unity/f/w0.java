package cn.mucang.android.jiakaoyi.teachingk2.unity.f;

import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CarPoseModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CarStateModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CtrSpeedAssistModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.DownloadProgressModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.FirstTrainCountModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.FirstTrainStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.HttpErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.LoadingCloseModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OpenPageModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OperateResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OtherCarPoseListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.PartIdentityModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.PlayVoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.RadarModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.ResLoadModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.ResVersionInfoModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.SwitchKeMuModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TimeTickSignal;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TraceErrorTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityExceptionModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityExitModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLineModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLogModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityPageModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityPreSettingModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityResUpgradeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityTeachPointModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityToastModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityUIActionModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserAIModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserInfoModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VideoDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VoiceFaceModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VoiceResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.CountDownModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.ExamStepListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.StartTimeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamDeductModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamEngineModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamHistoryModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamScoreModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamTypeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.ExamConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.ExamUpdateModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightPlayModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteSettingModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.TrainOverviewModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.ChoosePathModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationEnd;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationEndList;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationLevel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationPathList;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.PathPercent;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayExamModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayMenuModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachStatusModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.AnimTip;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.DaoKuSingleTrainModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepChangeModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepPositionModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepSettingModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TeachMediaModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TraceUploadModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainErrorAreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainLevelModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainTipItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainTipListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UnityCameraViewModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UnityTrainListModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UserTrainModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.b0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.c0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.d0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.e0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.f0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.g0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.h0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.i0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.j0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.k0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.l0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.o0.a;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.o0.b;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.o0.c;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.e;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.f;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.g;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.h;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.i;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.j;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.k;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.l;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.m;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.n;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0.o;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.q;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.r;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.s;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.t;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.u;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.v;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.w;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.x;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.y;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import com.iflytek.cloud.ErrorCode;
import io.agora.rtc.internal.RtcEngineEvent;

/* JADX INFO: loaded from: classes4.dex */
public class w0 {
    public static void a() {
        d.m(10001, CarPoseModel.class);
        d.m(10003, OtherCarPoseListModel.class);
        d.m(10002, CarStateModel.class);
        d.m(ErrorCode.ERROR_INVALID_RESULT, TimeTickSignal.class);
        d.m(ErrorCode.ERROR_AUDIO_RECORD, ResLoadModel.class);
        d.m(30003, AnimTip.class);
        d.m(ErrorCode.ERROR_NO_SPEECH, OpenPageModel.class);
        d.m(30008, UnityLineModel.class);
        d.m(30012, UnityTeachPointModel.class);
        d.m(30009, OperateResultModel.class);
        d.m(60005, ExamStepListModel.class);
        d.m(60006, ExamStepListModel.ExamStepItemModel.class);
        d.m(60007, CountDownModel.class);
        d.m(60008, StartTimeModel.class);
        d.m(ErrorCode.ERROR_INVALID_PARAM, UnityCameraViewModel.class);
        d.m(30011, StepPositionModel.class);
        d.m(70002, PartIdentityModel.class);
        d.m(80005, PathPercent.class);
        d.m(ErrorCode.ERROR_INTERRUPT, RadarModel.class);
        d.m(20019, HttpErrorModel.class);
        d.m(ErrorCode.ERROR_SYSTEM_PREINSTALL, VoiceFaceModel.class);
        d.m(20022, SwitchKeMuModel.class);
        d.m(30013, TraceErrorTipModel.class);
        d.m(30016, TrainErrorAreaModel.class);
        d.m(70004, CtrSpeedAssistModel.class);
        d.m(30017, TrainTipListModel.class);
        d.m(30018, TrainTipItemModel.class);
        d.m(14003, FirstTrainStepModel.class);
        d.m(14004, FirstTrainCountModel.class);
        d.l(20001, UnityUIActionModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.m0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new g0();
            }
        });
        d.l(ErrorCode.ERROR_NETWORK_TIMEOUT, PlayVoiceModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.v
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new r();
            }
        });
        d.l(ErrorCode.ERROR_NET_EXCEPTION, UserInfoModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.i0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new j0();
            }
        });
        d.l(ErrorCode.ERROR_NO_MATCH, ResVersionInfoModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.d0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new s();
            }
        });
        l0 l0Var = new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.l0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new m();
            }
        };
        d.l(30001, TrainLevelModel.class, l0Var);
        d.l(50001, ReplayMenuModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.a0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new i();
            }
        });
        d.l(50002, ReplayStepModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.b
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new j();
            }
        });
        d.l(ErrorCode.ERROR_SPEECH_TIMEOUT, VoiceResultModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.s
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new l0();
            }
        });
        d.l(ErrorCode.ERROR_TEXT_OVERFLOW, UnityRecordModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.m
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new c0();
            }
        });
        d.l(ErrorCode.ERROR_PLAY_MEDIA, UnityExceptionModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.n
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new v();
            }
        });
        d.l(ErrorCode.ERROR_INVALID_DATA, UnityPageModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.t0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new a0();
            }
        });
        d.l(30007, UnityToastModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.l
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new f0();
            }
        });
        d.l(30002, TeachMediaModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.k
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new h();
            }
        });
        d.l(40001, UserTrainModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.d
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new o();
            }
        });
        d.l(40002, UserErrorModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.u
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new i0();
            }
        });
        d.l(30005, StepSettingModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.j0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new g();
            }
        });
        d.l(30006, StepChangeModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.r0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new f();
            }
        });
        d.l(ErrorCode.ERROR_EMPTY_UTTERANCE, VideoDataModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.o0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new k0();
            }
        });
        d.l(50005, TraceUploadModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.u0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new k();
            }
        });
        d.l(40003, UserAIModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.k0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new h0();
            }
        });
        d.l(ErrorCode.ERROR_FILE_ACCESS, DownloadProgressModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.g
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new q();
            }
        });
        d.l(30010, DaoKuSingleTrainModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.c
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new e();
            }
        });
        d.l(70001, UnityTrainListModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.h
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new n();
            }
        });
        d.l(ErrorCode.ERROR_LOGIN, UnityExitModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.i
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new w();
            }
        });
        d.l(ErrorCode.ERROR_PERMISSION_DENIED, UnityLogModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.q
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new y();
            }
        });
        d.l(ErrorCode.ERROR_UNSATISFIED_LINK, LoadingCloseModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.a
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new x();
            }
        });
        d.l(30014, TrainConfigModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.f0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new l();
            }
        });
        d.l(70004, CtrSpeedAssistModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.z
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new p();
            }
        });
        d.l(20025, UnityPreSettingModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.q0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new b0();
            }
        });
        d.m(60002, UnityExamDataModel.class);
        d.m(60004, UnityExamDeductModel.class);
        d.m(60003, UnityExamResultModel.class);
        d.l(60001, UnityExamEngineModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.s0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0.e();
            }
        });
        d.l(60009, UnityExamTypeModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.y
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0.g();
            }
        });
        d.l(50004, ReplayExamModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.e0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0.h();
            }
        });
        d.l(50003, UnityExamHistoryModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.t
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0.f();
            }
        });
        d.m(60010, UnityExamScoreModel.class);
        d.m(80003, NavigationPathList.class);
        d.m(80007, NavigationLevel.class);
        d.l(80001, NavigationEndList.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.h0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new c();
            }
        });
        d.l(80002, NavigationEnd.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.p
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new a();
            }
        });
        d.l(80004, ChoosePathModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.f
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new b();
            }
        });
        d.l(11001, TeachStatusModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.j
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new u();
            }
        });
        d.l(11002, TeachConfigModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.o
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new t();
            }
        });
        d.m(11003, TeachTipModel.class);
        d.m(12006, TrainDataModel.class);
        d.m(13002, ExamUpdateModel.class);
        d.m(12008, RouteStepModel.class);
        d.l(12001, RouteSettingModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.p0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.k();
            }
        });
        n0 n0Var = new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.n0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.g();
            }
        };
        d.l(12003, LightDataModel.class, n0Var);
        d.l(12004, LightDataModel.class, n0Var);
        d.l(12005, LightPlayModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.w
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.h();
            }
        });
        d.l(12007, TrainLevelModel.class, l0Var);
        d.l(RtcEngineEvent.EvtType.EVT_OPEN_CHANNEL_SUCCESS, ExamConfigModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.c0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.e();
            }
        });
        d.l(13004, ExamStepListModel.ExamStepItemModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.x
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.f();
            }
        });
        d.l(RtcEngineEvent.EvtType.EVT_LEAVE_CHANNEL, RouteDataModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.e
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.i();
            }
        });
        d.l(RtcEngineEvent.EvtType.EVT_NETWORK_QUALITY, RouteDataModel.RouteItemModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.v0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.j();
            }
        });
        d.l(40004, TrainOverviewModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.b0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0.l();
            }
        });
        d.l(100, UnityResUpgradeModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.r
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new e0();
            }
        });
        d.l(101, MessageModel.class, new d.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.f.g0
            @Override // cn.mucang.android.jiakaoyi.unity.c.d.a
            public final Object create() {
                return new d0();
            }
        });
    }
}
