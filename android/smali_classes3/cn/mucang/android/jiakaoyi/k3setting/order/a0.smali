.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/order/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/a0;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/a0;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/a0;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/a0;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;->v(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleActivity;Landroid/view/View;)V

    return-void
.end method
