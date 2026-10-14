.class final Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->k([BI)V
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
.field final synthetic $index:I

.field final synthetic $rtcmBytes:[B


# direct methods
.method constructor <init>([BI)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->$rtcmBytes:[B

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->$index:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a([BI)[B
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->invoke$lambda-0([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda-0([BI)[B
    .locals 2

    const-string v0, "$rtcmBytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    array-length v1, p0

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    int-to-short p1, p1

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 4
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->SendRtcmToJKY:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->$rtcmBytes:[B

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$1;->$index:I

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/communicate/i;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/i;-><init>([BI)V

    invoke-virtual {v0, v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    return-void
.end method
