.class final Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;",
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
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveGetRemoteGearResponse;"
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
.field final synthetic $listener:Lcn/mucang/jiakaoyi/uilib/gear/f;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/gear/f;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$3;->$listener:Lcn/mucang/jiakaoyi/uilib/gear/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->e(Z)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u4e3b\u63a7\u6863\u4f4d\u6570\u636e\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$getGearFromMaster$3;->$listener:Lcn/mucang/jiakaoyi/uilib/gear/f;

    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/f;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V

    return-void
.end method
