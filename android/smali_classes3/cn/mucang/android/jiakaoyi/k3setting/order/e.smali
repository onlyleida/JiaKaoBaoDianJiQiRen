.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/order/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcom/drakeet/multitype/f;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/drakeet/multitype/f;Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/e;->a:Lcom/drakeet/multitype/f;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/e;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/e;->a:Lcom/drakeet/multitype/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/e;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;->p(Lcom/drakeet/multitype/f;Lcn/mucang/android/jiakaoyi/k3setting/order/K3OrderStandardListActivity;Ljava/util/List;)V

    return-void
.end method
