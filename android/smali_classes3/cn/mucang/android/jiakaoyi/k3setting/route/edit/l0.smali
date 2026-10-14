.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/drakeet/multitype/f;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Ljava/util/List;Lcom/drakeet/multitype/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->b:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->c:Ljava/util/List;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->d:Lcom/drakeet/multitype/f;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->b:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->c:Ljava/util/List;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l0;->d:Lcom/drakeet/multitype/f;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;->n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Ljava/util/List;Lcom/drakeet/multitype/f;Lcn/mucang/jiakaoyi/uilib/model/TeachPlan;)V

    return-void
.end method
