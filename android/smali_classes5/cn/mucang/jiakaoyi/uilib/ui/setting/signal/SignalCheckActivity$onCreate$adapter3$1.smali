.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
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
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/g;-><init>()V

    .line 3
    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    invoke-virtual {p0, v1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/f;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1$1;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckActivity$onCreate$adapter3$1$1;

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/z/f;-><init>(Lkotlin/jvm/b/l;)V

    .line 5
    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    invoke-virtual {p0, v1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void
.end method
