.class final Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->u()V
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


# static fields
.field public static final INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter$sendGearALGType$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u53d1\u6321\u4f4d\u7b97\u6cd5\u7c7b\u578b\u6307\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->g(I)V

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->b()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->e(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;[B)V

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0b\u53d1\u6321\u4f4d\u7b97\u6cd5\u7c7b\u578b\u6307\u4ee4\u5931\u8d25"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->g(I)V

    .line 7
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c()I

    move-result p1

    const/4 v4, 0x3

    if-gt p1, v4, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "\u4e0b\u53d1\u6321\u4f4d\u7b97\u6cd5\u7c7b\u578b\u6307\u4ee4,\u4e3b\u63a7\u54cd\u5e94\u5931\u8d25\u91cd\u8bd5\uff1a"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v3, v2}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->q(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 9
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->f(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->d(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;Z)V

    .line 11
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->h(Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;)V

    :goto_0
    return-void
.end method
