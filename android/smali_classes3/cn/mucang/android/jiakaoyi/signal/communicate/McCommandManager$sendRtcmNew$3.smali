.class final Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


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
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiverRtcmAckInfo;"
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
.method constructor <init>(I[B)V
    .locals 0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$index:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$rtcmBytes:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v1, ",\u957f\u5ea6\u662f:"

    const-string v2, ",\u53d1\u9001\u5e8f\u53f7\u662f:"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtcm\u53d1\u9001\u5230\u56fa\u4ef6, \u56fa\u4ef6\u8fd4\u56de\u53d1\u9001\u5931\u8d25, \u5e94\u7b54="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$index:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$rtcmBytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;->c:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$index:I

    if-eq v0, v3, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rtcm\u53d1\u9001\u5230\u56fa\u4ef6, \u6536\u5230\u5176\u4ed6rtcm\u53d1\u9001\u7684\u56de\u5e94, \u5e94\u7b54="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$index:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager$sendRtcmNew$3;->$rtcmBytes:[B

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
