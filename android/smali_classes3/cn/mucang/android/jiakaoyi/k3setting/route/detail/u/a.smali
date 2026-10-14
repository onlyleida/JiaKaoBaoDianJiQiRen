.class public final synthetic Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/b;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/b;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/a;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/a;->b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/a;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/a;->b:Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/b;->o(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/u/b;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method
