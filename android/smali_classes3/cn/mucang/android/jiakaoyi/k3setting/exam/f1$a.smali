.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/exam/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->values()[Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->showCloseEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissCloseEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->showManualGoExam:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissManualGoExam:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->showOpenEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissOpenEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startFingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissFingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startAroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissAroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startLightSimulate:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/f1$a;->a:[I

    return-void
.end method
