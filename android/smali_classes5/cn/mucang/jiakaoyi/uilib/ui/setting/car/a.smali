.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/car/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/a;->b:Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/a;->b:Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;->o(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;Landroid/view/View;)V

    return-void
.end method
