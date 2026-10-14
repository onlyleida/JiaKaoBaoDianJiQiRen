.class public final enum Lcn/mucang/sundial/android/PersonMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/PersonMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/sundial/android/PersonMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "COACH",
        "STUDENT",
        "NONE",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/PersonMode;

.field public static final enum COACH:Lcn/mucang/sundial/android/PersonMode;

.field public static final enum NONE:Lcn/mucang/sundial/android/PersonMode;

.field public static final enum STUDENT:Lcn/mucang/sundial/android/PersonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/sundial/android/PersonMode;

    new-instance v1, Lcn/mucang/sundial/android/PersonMode;

    const-string v2, "COACH"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/sundial/android/PersonMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/android/PersonMode;

    const-string v2, "STUDENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/mucang/sundial/android/PersonMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/android/PersonMode;

    const-string v2, "NONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcn/mucang/sundial/android/PersonMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/sundial/android/PersonMode;->NONE:Lcn/mucang/sundial/android/PersonMode;

    aput-object v1, v0, v3

    sput-object v0, Lcn/mucang/sundial/android/PersonMode;->$VALUES:[Lcn/mucang/sundial/android/PersonMode;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/PersonMode;
    .locals 1

    const-class v0, Lcn/mucang/sundial/android/PersonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/PersonMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/PersonMode;
    .locals 1

    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->$VALUES:[Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/PersonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/PersonMode;

    return-object v0
.end method
