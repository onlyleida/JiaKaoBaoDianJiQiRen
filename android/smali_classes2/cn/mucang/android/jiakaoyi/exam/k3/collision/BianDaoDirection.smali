.class public final enum Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public static final enum LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public static final enum LeftMultiBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public static final enum RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

.field public static final enum RightMultiBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const-string v3, "LeftBianDao"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const-string v5, "RightBianDao"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const-string v7, "LeftMultiBianDao"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftMultiBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const-string v9, "RightMultiBianDao"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightMultiBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->$VALUES:[Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    return-object v0
.end method
