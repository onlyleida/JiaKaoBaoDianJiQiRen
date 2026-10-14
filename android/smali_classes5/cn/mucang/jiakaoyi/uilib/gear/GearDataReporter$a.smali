.class public final Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/gear/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/gear/GearDataReporter$gearDataListener$1",
        "Lcn/mucang/jiakaoyi/uilib/gear/GetGearDataListener;",
        "onResult",
        "",
        "gearResponse",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveGetRemoteGearResponse;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V
    .locals 6

    const-string v0, "gearResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b()Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a()[B

    move-result-object v0

    .line 3
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data: algType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b()Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v3, v4, v2, v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->a()I

    move-result p1

    invoke-static {v3, v0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->c(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;[BI)V

    .line 9
    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->g(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->f(I)V

    .line 11
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->b()I

    move-result v0

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    .line 12
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "\u4e3b\u63a7\u54cd\u5e94\u5931\u8d25\u91cd\u8bd5\uff1a"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->o(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->d(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->g(Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;)V

    :goto_0
    return-void
.end method
