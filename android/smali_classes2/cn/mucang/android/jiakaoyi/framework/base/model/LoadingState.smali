.class public final enum Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "",
        "(Ljava/lang/String;I)V",
        "msg",
        "",
        "getMsg",
        "()Ljava/lang/String;",
        "setMsg",
        "(Ljava/lang/String;)V",
        "buildMsg",
        "Loading",
        "Fail",
        "Success",
        "framework_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

.field public static final enum Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

.field public static final enum Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

.field public static final enum Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v1, "Loading"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v1, "Fail"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v1, "Success"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->$values()[Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

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

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    return-object v0
.end method


# virtual methods
.method public final buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final setMsg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->msg:Ljava/lang/String;

    return-void
.end method
