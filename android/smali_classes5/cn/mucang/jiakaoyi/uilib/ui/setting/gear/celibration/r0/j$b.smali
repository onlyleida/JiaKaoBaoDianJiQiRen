.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel$2",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearConnectStatusListener;",
        "onCollectStatusChanged",
        "",
        "data",
        "",
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


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e32\u53e3\u72b6\u6001\u56de\u8c03:"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->a(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "connect_status"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->c()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
