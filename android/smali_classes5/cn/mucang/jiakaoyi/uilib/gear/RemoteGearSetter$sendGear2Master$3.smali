.class final Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->s([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;",
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
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSetRemoteGearResponse;"
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
.field final synthetic $gearData:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;->$gearData:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdc\u7a0b\u6863\u4f4d\u6570\u636e\u4e0b\u53d1\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u6863\u4f4d\u6570\u636e\u8bbe\u7f6e\uff1a"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 6
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;->$gearData:[B

    invoke-direct {v2, v3, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([BZ)V

    invoke-virtual {p1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/a;->b(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;-><init>()V

    invoke-virtual {v2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e(Ljava/util/List;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->I(Z)V

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->H(Ljava/util/List;)V

    .line 12
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->d(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Z)V

    .line 13
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->g(I)V

    .line 15
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_3

    .line 16
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "\u8fdc\u7a0b\u6863\u4f4d\u6570\u636e\u4e0b\u53d1,\u4e3b\u63a7\u54cd\u5e94\u5931\u8d25\u91cd\u8bd5\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGear2Master$3;->$gearData:[B

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;[B)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 18
    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->d(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Z)V

    .line 19
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V

    :goto_1
    return-void
.end method
