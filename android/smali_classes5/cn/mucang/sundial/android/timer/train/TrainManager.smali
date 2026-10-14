.class public Lcn/mucang/sundial/android/timer/train/TrainManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/timer/train/TrainManager$TrainManagerHolder;
    }
.end annotation


# static fields
.field private static final MSG_LITTLE_TICK:I = 0x1

.field private static final MSG_MINUTE_TICK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrainManager"


# instance fields
.field private currentTotalDistance:D

.field private gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

.field private handler:Landroid/os/Handler;

.field private volatile isUploading:Z

.field private lastReportTotalDistance:D

.field private final localIdToRequests:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile localRecordsDirty:Z

.field private mFlameOutTime:J

.field private mInvalidTime:J

.field private mLastOdo:Ljava/math/BigDecimal;

.field private mLastRecordElapsedTime:J

.field private final mSchedulePeriod:J

.field private maxSpeed:Ljava/math/BigDecimal;

.field private nextLittleTickTime:J

.field private nextMinuteTickTime:J

.field private serialNo:I

.field private startTime:J

.field private timerThread:Landroid/os/HandlerThread;

.field private final uploadingCourseRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mSchedulePeriod:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastRecordElapsedTime:J

    .line 5
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mInvalidTime:J

    .line 6
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mFlameOutTime:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    .line 8
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->lastReportTotalDistance:D

    .line 9
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->maxSpeed:Ljava/math/BigDecimal;

    .line 10
    iput-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastOdo:Ljava/math/BigDecimal;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    .line 12
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localIdToRequests:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localRecordsDirty:Z

    .line 14
    iput-boolean v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->isUploading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/timer/train/TrainManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcn/mucang/sundial/android/timer/train/TrainManager;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localIdToRequests:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcn/mucang/sundial/android/timer/train/TrainManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextLittleTickTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/mucang/sundial/android/timer/train/TrainManager;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextLittleTickTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcn/mucang/sundial/android/timer/train/TrainManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->scheduleLittleTick()V

    return-void
.end method

.method static synthetic access$400(Lcn/mucang/sundial/android/timer/train/TrainManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->startTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcn/mucang/sundial/android/timer/train/TrainManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/android/timer/train/TrainManager;->littleTick(J)V

    return-void
.end method

.method static synthetic access$600(Lcn/mucang/sundial/android/timer/train/TrainManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextMinuteTickTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcn/mucang/sundial/android/timer/train/TrainManager;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextMinuteTickTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcn/mucang/sundial/android/timer/train/TrainManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->scheduleMinuteTick()V

    return-void
.end method

.method static synthetic access$800(Lcn/mucang/sundial/android/timer/train/TrainManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/android/timer/train/TrainManager;->minuteTick(J)V

    return-void
.end method

.method static synthetic access$900(Lcn/mucang/sundial/android/timer/train/TrainManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    return-object p0
.end method

.method private addCourseRecord(IZLcn/mucang/sundial/android/db/entity/CourseRecord;Z)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/sundial/android/timer/train/TrainManager;->addCourseRecords(IZLjava/util/List;Z)V

    return-void
.end method

.method private getCurrentDistance()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 3
    :cond_0
    iget v0, v0, Lcn/mucang/sundial/android/model/CarModel;->currentDistance:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager$TrainManagerHolder;->access$100()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v0

    return-object v0
.end method

.method private isSameDay(JJ)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private littleTick(J)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Lcn/mucang/sundial/android/model/CarModel;->speed:F

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->maxSpeed:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->maxSpeed:Ljava/math/BigDecimal;

    :cond_0
    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, v0, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    iget v3, v3, Lcn/mucang/sundial/android/model/KeyState;->id:I

    sget-object v4, Lcn/mucang/sundial/android/model/KeyState;->Lock:Lcn/mucang/sundial/android/model/KeyState;

    iget v4, v4, Lcn/mucang/sundial/android/model/KeyState;->id:I

    if-gt v3, v4, :cond_2

    .line 5
    :cond_1
    iget-wide v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mFlameOutTime:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mFlameOutTime:J

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object v0, v0, Lcn/mucang/sundial/android/model/CarModel;->keyState:Lcn/mucang/sundial/android/model/KeyState;

    iget v0, v0, Lcn/mucang/sundial/android/model/KeyState;->id:I

    sget-object v3, Lcn/mucang/sundial/android/model/KeyState;->Lock:Lcn/mucang/sundial/android/model/KeyState;

    iget v3, v3, Lcn/mucang/sundial/android/model/KeyState;->id:I

    if-le v0, v3, :cond_3

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->isTrainingDisable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    iget-wide v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mInvalidTime:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mInvalidTime:J

    .line 9
    :cond_4
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getCurrentDistance()Ljava/math/BigDecimal;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastOdo:Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_5

    .line 11
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastOdo:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    :goto_0
    const-wide/16 v5, 0x0

    .line 13
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 14
    iget-wide v5, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->lastReportTotalDistance:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    const-wide/16 v3, 0x3e8

    .line 15
    rem-long v3, p1, v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_6

    .line 16
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    iget-wide v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mInvalidTime:J

    sub-long v1, p1, v1

    invoke-direct {v0, v1, v2, v5, v6}, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;-><init>(JD)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    .line 17
    :cond_6
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastRecordElapsedTime:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    if-nez p1, :cond_7

    .line 18
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    :cond_7
    return-void
.end method

.method private minuteTick(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->startTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastRecordElapsedTime:J

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/db/entity/CourseRecord;

    invoke-direct {v0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->isTrainingDisable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setRecordStatus(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->maxSpeed:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setMaxSpeed(Ljava/math/BigDecimal;)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setClassroomId(J)V

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setCoachNo(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setStudentNo(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getCourseCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setCourseCode(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getCurrentDistance()Ljava/math/BigDecimal;

    move-result-object v1

    .line 10
    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    iget-wide v4, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->lastReportTotalDistance:D

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 11
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/sundial/android/SundialManager;->getMileageAccuracy()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcn/mucang/sundial/android/utils/DistanceUtil;->optimization(DI)D

    move-result-wide v4

    .line 13
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setMileage(Ljava/math/BigDecimal;)V

    const-wide/32 v4, 0x1b77400

    add-long/2addr v4, p1

    const-wide/32 v6, 0x5265c00

    .line 14
    rem-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-int v5, v4

    iput v5, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->serialNo:I

    .line 15
    invoke-virtual {v0, p1, p2}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setRecordTime(J)V

    .line 16
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->getRecordTime()J

    move-result-wide v4

    iget v6, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->serialNo:I

    invoke-static {v4, v5, v6}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->createRecordNo(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setRecordNo(Ljava/lang/String;)V

    .line 17
    iget-object v4, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v4}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/mucang/sundial/android/db/entity/CourseRecord;->setGnssData(Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fdd\u5b58\u5b66\u65f6\u8bb0\u5f55\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->insertCourseRecord(Lcn/mucang/sundial/android/db/entity/CourseRecord;)V

    const/4 v4, 0x1

    .line 21
    iput-boolean v4, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localRecordsDirty:Z

    .line 22
    invoke-direct {p0, v4, v4, v0, v4}, Lcn/mucang/sundial/android/timer/train/TrainManager;->addCourseRecord(IZLcn/mucang/sundial/android/db/entity/CourseRecord;Z)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add a record, time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TrainManager"

    invoke-static {v5, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->maxSpeed:Ljava/math/BigDecimal;

    const-wide p1, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, p1

    .line 26
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->getMileageAccuracy()I

    move-result p1

    int-to-double p1, p1

    cmpl-double v0, v2, p1

    if-lez v0, :cond_1

    .line 27
    iput-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastOdo:Ljava/math/BigDecimal;

    .line 28
    :cond_1
    iget-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->lastReportTotalDistance:D

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->gnssData:Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    return-void
.end method

.method private resetTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastRecordElapsedTime:J

    .line 2
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mInvalidTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mFlameOutTime:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    .line 5
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->lastReportTotalDistance:D

    return-void
.end method

.method private scheduleLittleTick()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextLittleTickTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleMinuteTick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextMinuteTickTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public addCourseRecords(IZLjava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/CourseRecord;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/db/entity/CourseRecord;

    .line 5
    iget-object v2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localIdToRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    if-nez v2, :cond_1

    .line 6
    invoke-static {v1, p1, p2}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->from(Lcn/mucang/sundial/android/db/entity/CourseRecord;IZ)Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    move-result-object v2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localIdToRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2, p1}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setReportType(I)V

    .line 10
    invoke-virtual {v2, p2}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->setRealtimeMessage(Z)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 11
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public getCurrentMileage()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getFlameOutTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mFlameOutTime:J

    return-wide v0
.end method

.method public queryCourseRecordUpload(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/CourseRecord;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getCourseRecordByCount(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryCourseRecordUpload(JJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/CourseRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getCourseRecordByTime(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setUploading(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->isUploading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start(D)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->timerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getCourseRecordByCount(IZ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v2, v1, v0, v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;->addCourseRecords(IZLjava/util/List;Z)V

    const-string v1, "TrainManager"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u8bfb\u53d6\u672c\u5730\u5b66\u65f6\u3002\u3002\u3002Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->g(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u8bfb\u53d6\u672c\u5730\u5b66\u65f6\u3002\u3002\u3002Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->g(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->resetTime()V

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getCurrentDistance()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->mLastOdo:Ljava/math/BigDecimal;

    .line 10
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->currentTotalDistance:D

    .line 11
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->lastReportTotalDistance:D

    .line 12
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "TrainTimer"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->timerThread:Landroid/os/HandlerThread;

    .line 13
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 14
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcn/mucang/sundial/android/timer/train/TrainManager$1;

    iget-object p2, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->timerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/mucang/sundial/android/timer/train/TrainManager$1;-><init>(Lcn/mucang/sundial/android/timer/train/TrainManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    .line 16
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->startTime:J

    const-wide/32 v0, 0xea60

    add-long/2addr v0, p1

    .line 18
    iput-wide v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextMinuteTickTime:J

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    .line 19
    iput-wide p1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->nextLittleTickTime:J

    .line 20
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->scheduleLittleTick()V

    .line 21
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->scheduleMinuteTick()V

    const-string p1, "TrainManager"

    const-string p2, "timer start..."

    .line 22
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TrainManager timer start..."

    .line 23
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public startUploadCourseRecords()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->isUploading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localRecordsDirty:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iput-boolean v5, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localRecordsDirty:Z

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v3

    const/16 v6, 0x64

    invoke-virtual {v3, v6, v4}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getCourseRecordByCount(IZ)Ljava/util/List;

    move-result-object v3

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8bfb\u53d6\u672c\u5730\u5b66\u65f6: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->g(Ljava/util/Collection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\u4e2a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v4, v5, v3, v5}, Lcn/mucang/sundial/android/timer/train/TrainManager;->addCourseRecords(IZLjava/util/List;Z)V

    .line 8
    :cond_1
    iget-object v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;

    .line 10
    iget-object v3, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localIdToRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 11
    iget-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->localIdToRequests:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 12
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/mucang/sundial/android/timer/train/TrainManager;->setUploading(Z)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u62a5\u67e5\u8be2\u5230\u7684\u5b66\u65f6\u3002\u3002\u3002Local ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u62a5\u67e5\u8be2\u5230\u7684\u5b66\u65f6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    new-instance v4, Lcn/mucang/sundial/android/timer/train/TrainManager$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcn/mucang/sundial/android/timer/train/TrainManager$2;-><init>(Lcn/mucang/sundial/android/timer/train/TrainManager;Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;J)V

    invoke-virtual {v3, v0, v4}, Lcn/mucang/sundial/android/SundialManager;->reportCourseRecord(Lcn/mucang/sundial/android/tcp/message/training/send/ReportCourseRecordRequest;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->handler:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->timerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    iput-object v1, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->timerThread:Landroid/os/HandlerThread;

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->resetTime()V

    const-string v0, "TrainManager"

    const-string v1, "timer stop..."

    .line 8
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TrainManager timer stop..."

    .line 9
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return-void
.end method

.method public uploadAllQueuedRecords()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcn/mucang/sundial/android/timer/train/TrainManager;->uploadingCourseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->startUploadCourseRecords()V

    goto :goto_0

    :cond_0
    return-void
.end method
