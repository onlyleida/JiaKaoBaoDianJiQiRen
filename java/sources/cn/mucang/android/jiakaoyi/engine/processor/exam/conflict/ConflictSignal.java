package cn.mucang.android.jiakaoyi.engine.processor.exam.conflict;

/* JADX INFO: loaded from: classes2.dex */
public enum ConflictSignal {
    Speed(null),
    ClutchTime(null),
    HighRpm(null),
    EngineOff(null),
    LowSpeed(null),
    ChuangDong(null),
    TurnLight(null),
    TurnLightError(null),
    ChangeLane(null),
    TurnLightLongDistance(null),
    TurnLightLongTime(null),
    GearSpeedNotMatch(null),
    SeatBelt(null),
    YueJiJiaJianDang(null),
    ShouShaJiaoSha(null),
    QiBuDangWei(null),
    LianXuBianDao(null),
    HouLiu(null),
    QiBuShaChe(null),
    BrakeNotSmooth(null),
    Backwards(null),
    PressFullLine(null),
    PressBanMaLine(null),
    PressDashLine(null),
    GeneralChangeLane(null),
    LaShouShaNoJiaoSha(null),
    QiBuNoShouSha(null),
    ClutchDistance(null);

    public Object data;

    ConflictSignal(Object obj) {
        this.data = obj;
    }
}
