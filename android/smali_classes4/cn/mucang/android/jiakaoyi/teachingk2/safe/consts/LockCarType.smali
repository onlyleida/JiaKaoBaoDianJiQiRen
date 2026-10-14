.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

.field public static final enum APP_PODAO:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

.field public static final enum CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

.field public static final enum NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "\u65e0"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    const-string v3, "APP_PODAO"

    const/4 v4, 0x1

    const-string v5, "\u5761\u8d77\u5371\u9669\u9501\u8f66"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->APP_PODAO:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    const-string v5, "CONTROL"

    const/4 v6, 0x2

    const-string v7, "\u76d1\u63a7\u4e2d\u5fc3\u9501\u8f66"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getLockType(I)Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->value:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-object v0
.end method
