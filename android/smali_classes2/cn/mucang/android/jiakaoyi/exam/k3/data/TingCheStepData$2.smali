.class synthetic Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->values()[Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$2;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State:[I

    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$2;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State:[I

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopping:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$2;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State:[I

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$2;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State:[I

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->OpenDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
