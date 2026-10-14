.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;->a:Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;->a:Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/a;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;->o(Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;Lcn/mucang/android/jiakaoyi/k3setting/order/b2/r;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
