.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->g(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;",
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
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistModel;"
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
.field final synthetic $value:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;->$value:Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;->$value:Ljava/lang/Integer;

    const-string v0, "\u96e8\u5929\u6a21\u5f0f\u4e0b\u53d1\u6210\u529f, value:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;->$value:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->b(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr$setRainMode$3;->$value:Ljava/lang/Integer;

    const-string v0, "\u96e8\u5929\u6a21\u5f0f\u4e0b\u53d1\u5931\u8d25, value:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
