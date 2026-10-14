.class public Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CheckContinue:I = 0x1

.field public static final CheckPoint:I = 0x0

.field public static final TypeLeftHead:I = 0x9

.field public static final TypeLeftStop:I = 0x1

.field public static final TypeLightClose:I = 0x5

.field public static final TypeLightError:I = 0x6

.field public static final TypeMoreLeftStop:I = 0x3

.field public static final TypeMoreRightStop:I = 0x4

.field public static final TypeNoBrake:I = 0x7

.field public static final TypeNoHead:I = 0x8

.field public static final TypeNone:I = 0x0

.field public static final TypeRightHead:I = 0xa

.field public static final TypeRightStop:I = 0x2


# instance fields
.field public checkType:I

.field public errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

.field public errorType:I

.field public errorVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public transient expand:Z

.field public transient hasSelect:Z

.field public isRightCheck:Z

.field public transient stopArea:Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/StopPositionHandler$StopArea;

.field public stopVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    return-void
.end method

.method public static create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;-><init>()V

    .line 2
    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorType:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->expand:Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayDistanceVariable;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    .line 10
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_0

    .line 11
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne p0, v1, :cond_2

    .line 15
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    if-eq p0, v1, :cond_3

    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0xa

    if-ne p0, v1, :cond_5

    .line 16
    :cond_3
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_4
    :goto_0
    iget-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getConditionId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->conditionId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
