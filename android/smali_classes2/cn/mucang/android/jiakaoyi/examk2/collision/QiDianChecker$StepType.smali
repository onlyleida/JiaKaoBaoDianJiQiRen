.class public final enum Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StepType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field public static final enum DoorClose:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field public static final enum DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field public static final enum GearN:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field public static final enum Handbrake:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field public static final enum Lock:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

.field public static final enum SeatBelt:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const-string v1, "GearN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->GearN:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const-string v3, "Handbrake"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->Handbrake:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const-string v5, "Lock"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->Lock:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    new-instance v5, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const-string v7, "SeatBelt"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->SeatBelt:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    new-instance v7, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const-string v9, "DoorOpen"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorOpen:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    new-instance v9, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const-string v11, "DoorClose"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->DoorClose:Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->$VALUES:[Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->$VALUES:[Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker$StepType;

    return-object v0
.end method
