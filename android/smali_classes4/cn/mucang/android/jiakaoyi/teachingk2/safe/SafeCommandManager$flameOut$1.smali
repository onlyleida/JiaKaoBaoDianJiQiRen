.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->h(BLcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $d:B

.field final synthetic $reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

.field final synthetic $tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->$tip:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->$reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->$d:B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)[B
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)[B

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)[B
    .locals 3

    const-string v0, "$reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->NONE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    new-array p0, v1, [B

    aput-byte p1, p0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 2
    iget-byte p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;->value:B

    aput-byte p0, v0, v2

    aput-byte p1, v0, v1

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSendFlameOut:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->$reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;

    iget-byte v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->$d:B

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;B)V

    invoke-virtual {v0, v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$flameOut$1;->$tip:Ljava/lang/String;

    const-string v1, "\u4e0b\u53d1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
