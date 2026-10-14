.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;",
        "",
        "Ljava/io/Serializable;",
        "(Ljava/lang/String;I)V",
        "None",
        "EngineStart",
        "GearN",
        "Handbrake",
        "Wheel",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

.field public static final enum EngineStart:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

.field public static final enum GearN:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

.field public static final enum Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

.field public static final enum Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->EngineStart:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->GearN:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const-string v1, "EngineStart"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->EngineStart:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const-string v1, "GearN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->GearN:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const-string v1, "Handbrake"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    const-string v1, "Wheel"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    return-object v0
.end method
