.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/car/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/o;->a:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/o;->b:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/o;->a:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/o;->b:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;->q(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
