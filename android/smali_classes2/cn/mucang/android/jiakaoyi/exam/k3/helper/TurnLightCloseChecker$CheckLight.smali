.class public final enum Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckLight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

.field public static final enum LeftLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

.field public static final enum RightLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    const-string v1, "LeftLight"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->LeftLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    const-string v3, "RightLight"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->RightLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    const-string v5, "None"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    return-object v0
.end method
