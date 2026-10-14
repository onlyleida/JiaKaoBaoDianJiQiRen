.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

.field public static final enum APP:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

.field public static final enum CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

.field public static final enum NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

.field public static final enum SERVER:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "\u65e0"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    const-string v3, "APP"

    const/4 v4, 0x1

    const-string v5, "\u4e0a\u4f4d\u673a\u7184\u706b"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->APP:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    const-string v5, "CONTROL"

    const/4 v6, 0x2

    const-string v7, "\u63a7\u5236\u4e2d\u5fc3\u7184\u706b"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    const-string v7, "SERVER"

    const/4 v8, 0x3

    const-string v9, "\u670d\u52a1\u7aef\u7184\u706b"

    invoke-direct {v5, v7, v8, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->SERVER:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->value:B

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    return-object v0
.end method
