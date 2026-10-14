.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/order/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/n;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/n;->b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/n;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/n;->b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;->a(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method
