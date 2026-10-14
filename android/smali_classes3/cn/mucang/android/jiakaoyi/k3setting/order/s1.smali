.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/order/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/s1;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/s1;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/s1;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/s1;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;->i(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderSettingActivity;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Landroid/view/View;)V

    return-void
.end method
